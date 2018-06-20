import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

recipes.removeShaped(<appliedenergistics2:material:40>, [
	[null, <ore:stickWood>, null],
	[<ore:stickWood>, null, <ore:stickWood>],
	[null, <ore:stickWood>, null]]);

val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<appliedenergistics2:fluix_block>);
recipes.remove(<appliedenergistics2:quartz_block>);

compressor.recipeBuilder()
	.inputs(<ore:crystalFluix> * 4)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:crystalPureFluix> * 8)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz> * 4)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<appliedenergistics2:material:10> * 8)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400).EUt(2)
	.buildAndRegister();