import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<biomesoplenty:gem_block>);
recipes.remove(<biomesoplenty:gem_block:1>);
recipes.remove(<biomesoplenty:gem_block:3>);
recipes.remove(<biomesoplenty:gem_block:4>);
recipes.remove(<biomesoplenty:gem_block:6>);

recipes.remove(<biomesoplenty:gem_block:2>);
recipes.remove(<biomesoplenty:gem_block:5>);
recipes.remove(<biomesoplenty:gem_block:7>);

compressor.recipeBuilder()
	.inputs(<ore:gemPeridot> * 9)
	.outputs(<biomesoplenty:gem_block:2>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemMalachite> * 9)
	.outputs(<biomesoplenty:gem_block:5>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:gemAmber> * 9)
	.outputs(<biomesoplenty:gem_block:7>)
	.duration(400).EUt(2)
	.buildAndRegister();
