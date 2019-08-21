import mods.gregtech.recipe.RecipeMap;

val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");


recipes.remove(<harvestcraft:grinder>);
recipes.addShaped("it3_harvestcraft_grinder", <harvestcraft:grinder>, [
  [<ore:ingotIron>, <ore:toolHeadSwordIron>, <ore:ingotIron>], 
  [<ore:ingotIron>, null, <ore:ingotIron>], 
  [<ore:ingotIron>, <minecraft:repeater>, <ore:ingotIron>]]);

var clay_water_bucket = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}});

var valid_water = <ore:listAllwater> | clay_water_bucket;

// Paper with Pams Water
recipes.addShapeless("it3_pams_paper", <minecraft:paper> * 2, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, valid_water]);

// Let GT flour cooperate
<ore:foodFlour>.addAll(<ore:dustWheat>);

// Fresh water with clay water bucket
recipes.addShapeless("it3_harvestcraft_freshwateritem_claywater", <harvestcraft:freshwateritem>, [clay_water_bucket]);

// Don't allow Pam's salt to be a member of dustSalt.  We'll add a new recipe to enable transforming Pam's to GT salt at a higher energy cost.
<ore:dustSalt>.remove(<harvestcraft:saltitem>);

// Expensive electrolyzer recipe for Pam's salt to get the GT version.
electrolyzer.recipeBuilder()
	.inputs(<harvestcraft:saltitem>)
	.outputs(<ore:dustSalt>.firstItem)
	.duration(224)
	.EUt(220)
	.buildAndRegister();
