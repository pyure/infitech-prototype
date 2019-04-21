  import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockAmethyst = <biomesoplenty:gem_block>;
var blockRuby = <biomesoplenty:gem_block:1>;
var blockTopaz = <biomesoplenty:gem_block:3>;
var blockTanzanite = <biomesoplenty:gem_block:4>;
var blockSapphire = <biomesoplenty:gem_block:6>;
var blockPeridot = <biomesoplenty:gem_block:2>;
var blockMalachite = <biomesoplenty:gem_block:5>;
var blockAmber = <biomesoplenty:gem_block:7>;

recipes.remove(blockAmethyst);
recipes.remove(blockRuby);
recipes.remove(blockTopaz);
recipes.remove(blockTanzanite);
recipes.remove(blockSapphire);
recipes.remove(blockPeridot);
recipes.remove(blockMalachite);
recipes.remove(blockAmber);

compressor.recipeBuilder()
	.inputs(<ore:gemPeridot> * 9)
	.outputs(blockPeridot)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemMalachite> * 9)
	.outputs(blockMalachite)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemAmber> * 9)
	.outputs(blockAmber)
	.duration(400).EUt(2)
	.buildAndRegister();
