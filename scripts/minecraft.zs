import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.recipes.IRecipeAction;
import mods.gregtech.recipe.RecipeMap;

val macerator as RecipeMap = RecipeMap.getByName("macerator");

var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolFileEmptyTag = <ore:craftingToolFileEmptyTag>;
var craftingToolMortarEmptyTag = <ore:craftingToolMortarEmptyTag>;

// These are covered by GT meta tools
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:golden_pickaxe>);
recipes.remove(<minecraft:iron_pickaxe>);

recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:golden_shovel>);
recipes.remove(<minecraft:iron_shovel>);

recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:iron_sword>);

recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:golden_axe>);
recipes.remove(<minecraft:iron_axe>);

recipes.remove(<minecraft:iron_hoe>);
recipes.remove(<minecraft:diamond_hoe>);
recipes.remove(<minecraft:golden_hoe>);

// FLINT
recipes.addShapeless("it3_vanilla_flint", <minecraft:flint>, [<ore:gravel>, <ore:gravel>, <ore:gravel>, <ore:gravel>]);

// Nerf charcoal
var charcoal = <minecraft:coal:1>;
var tinyCharcoal = <cttinycoal:tiny_charcoal>;
furnace.remove(charcoal, <ore:logWood>);

furnace.addRecipe(tinyCharcoal, <ore:logWood>);

// Alternative Flint and Steel recipe
var flintAndSteel = <minecraft:flint_and_steel>;
recipes.addShaped("it3_vanilla_flintnsteel", flintAndSteel.withDamage(62), [[null, null, null], 
  [<ore:ingotWroughtIron>, null, null], 
  [null, <ore:ingotFlint>, null]]);

var fireBow = <contenttweaker:fire_bow>;
var bow =  <minecraft:bow:*>;

recipes.addShaped("it3_vanilla_firebow", fireBow, 
  [[null, <ore:stickWood>, null],
  [null, bow.marked("myItem"), null], 
  [null, null, null]], 
  function(output, inputs, crafting) {
    var damageToOutput = inputs.myItem.damage * output.maxDamage / inputs.myItem.maxDamage;
    return output.withDamage(damageToOutput);
}, null);


// Alternative Torch


//PISTONS
recipes.remove(<minecraft:piston>);
recipes.addShaped("it3_vanilla_piston", <minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotIron>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped("it3_vanilla_piston2", <minecraft:piston>*2, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotSteel>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped("it3_vanilla_piston3", <minecraft:piston>*4, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotAluminium>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped("it3_vanilla_piston4", <minecraft:piston>*8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotTitanium>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped("it3_vanilla_piston5", <minecraft:piston>*16, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotTungstenSteel>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

recipes.addShaped("it3_vanilla_piston6", <minecraft:piston>*32, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
  [<ore:stoneCobble>, <ore:ingotNaquadah>, <ore:stoneCobble>], 
  [<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]]);

// GT Style block crafting
recipes.remove(<minecraft:iron_block>);
recipes.remove(<minecraft:gold_block>);
recipes.remove(<minecraft:redstone_block>);
recipes.remove(<minecraft:lapis_block>);
recipes.remove(<minecraft:diamond_block>);
recipes.remove(<minecraft:emerald_block>);

val compressor as RecipeMap = RecipeMap.getByName("compressor");

compressor.recipeBuilder()
	.inputs(<ore:ingotIron> * 9)
	.outputs(<minecraft:iron_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotGold> * 9)
	.outputs(<minecraft:gold_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemLapis> * 9)
	.outputs(<minecraft:lapis_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemDiamond> * 9)
	.outputs(<minecraft:diamond_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemEmerald> * 9)
	.outputs(<minecraft:emerald_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:dustRedstone> * 9)
	.outputs(<minecraft:redstone_block>)
	.duration(400).EUt(3)
	.buildAndRegister();
  
  
recipes.removeShapeless(<minecraft:concrete_powder>);
recipes.removeShapeless(<minecraft:concrete_powder:1>);
recipes.removeShapeless(<minecraft:concrete_powder:2>);
recipes.removeShapeless(<minecraft:concrete_powder:3>);
recipes.removeShapeless(<minecraft:concrete_powder:4>);
recipes.removeShapeless(<minecraft:concrete_powder:5>);
recipes.removeShapeless(<minecraft:concrete_powder:6>);
recipes.removeShapeless(<minecraft:concrete_powder:7>);
recipes.removeShapeless(<minecraft:concrete_powder:8>);
recipes.removeShapeless(<minecraft:concrete_powder:9>);
recipes.removeShapeless(<minecraft:concrete_powder:10>);
recipes.removeShapeless(<minecraft:concrete_powder:11>);
recipes.removeShapeless(<minecraft:concrete_powder:12>);
recipes.removeShapeless(<minecraft:concrete_powder:13>);
recipes.removeShapeless(<minecraft:concrete_powder:14>);
recipes.removeShapeless(<minecraft:concrete_powder:15>);



// Shears
recipes.removeByRecipeName("minecraft:shears");
recipes.addShaped("it3_shears", <minecraft:shears>, [
  [craftingToolFileEmptyTag, <ore:plateIron>, null],
  [<ore:plateIron>, craftingToolHardHammerEmptyTag, null],
  [null, null, null]]);

// Bonemeal
recipes.removeByRecipeName("minecraft:bone_meal_from_bone");
recipes.addShapeless("it3_minecraft_bone_meal_from_bone", <minecraft:dye:15> * 1, [<ore:bone>]);

// Bonemeal from Mortars is productive
recipes.addShaped("it3_bonemeal_from_mortar", <minecraft:dye:15> * 4, [
  [null, <ore:bone>, null],
  [null, craftingToolMortarEmptyTag, null],
  [null, null, null]]);

// Bonemeal from Macerators is very productive
macerator.recipeBuilder()		
	.inputs(<ore:bone> * 1)
	.outputs([<minecraft:dye:15> * 6])
  .chancedOutput(<minecraft:dye:15> * 2, 1000, 100)
	.duration(35)
	.EUt(6)
	.buildAndRegister();  