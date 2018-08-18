import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// These are covered by GT meta tools
recipes.remove(<forestry:bronze_pickaxe>);
recipes.remove(<forestry:bronze_shovel>);


// BRONZE
var dustBronze = <thermalfoundation:material:99>;

recipes.remove(dustBronze * 4);
recipes.addShapeless(dustBronze * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

recipes.remove(<forestry:ingot_bronze> * 4);

// Gears
recipes.removeShaped(<forestry:gear_bronze>, [
	[null, <ore:ingotBronze>, null],
	[<ore:ingotBronze>, <ore:ingotCopper>, <ore:ingotBronze>],
	[null, <ore:ingotBronze>, null]]);

recipes.removeShaped(<forestry:gear_copper>, [
	[null, <ore:ingotCopper>, null],
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null]]);

recipes.removeShaped(<forestry:gear_tin>, [
	[null, <ore:ingotTin>, null],
	[<ore:ingotTin>, <ore:ingotCopper>, <ore:ingotTin>],
	[null, <ore:ingotTin>, null]]);

// WOOD PILES
var woodPile = <forestry:wood_pile>;

recipes.remove(woodPile);
recipes.addShapeless(woodPile, [<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]);

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockCopper = <forestry:resource_storage:1>;
var blockTin = <forestry:resource_storage:2>;
var blockBronze = <forestry:resource_storage:3>;
var blockApatite = <forestry:resource_storage>;

recipes.remove(blockApatite);

compressor.recipeBuilder()
	.inputs(<ore:gemApatite> * 9)
	.outputs(blockApatite)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(blockCopper);
recipes.remove(blockTin);
recipes.remove(blockBronze);
recipes.remove(<forestry:charcoal>);

// Disable forestry scoop in lieue of GT version
scripts.functions.disableItem(<forestry:scoop>);
recipes.remove(<forestry:scoop>);