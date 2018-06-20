import mods.pneumaticcraft.pressurechamber;
import mods.gregtech.recipe.RecipeMap;

var ingotWroughtIron = <ore:ingotWroughtIron>;
var ingotCompressedWroughtIron = <contenttweaker:compressed_wrought_iron_ingot>;

mods.pneumaticcraft.pressurechamber.addRecipe([<gregtech:meta_item_1:10197> * 1], 2.0, [<contenttweaker:compressed_wrought_iron_ingot>]);

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<pneumaticcraft:compressed_iron_block>);

compressor.recipeBuilder()
	.inputs(<ore:ingotIronCompressed> * 9)
	.outputs(<pneumaticcraft:compressed_iron_block>)
	.duration(400).EUt(2)
	.buildAndRegister();