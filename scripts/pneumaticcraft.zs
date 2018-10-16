import mods.pneumaticcraft.pressurechamber;
import mods.gregtech.recipe.RecipeMap;

var ingotWroughtIron = <ore:ingotWroughtIron>.firstItem;
var ingotCompressedWroughtIron = <ore:ingotCompressedWroughtIron>.firstItem;

mods.pneumaticcraft.pressurechamber.addRecipe([ingotWroughtIron * 1], 2.0, [ingotCompressedWroughtIron]);

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<pneumaticcraft:compressed_iron_block>);
compressor.recipeBuilder()
	.inputs(<ore:ingotIronCompressed> * 9)
	.outputs(<pneumaticcraft:compressed_iron_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
  
