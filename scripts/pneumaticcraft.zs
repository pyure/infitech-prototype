import mods.pneumaticcraft.pressurechamber;
import mods.gregtech.recipe.RecipeMap;

var ingotWroughtIron = <ore:ingotWroughtIron>.firstItem;
var ingotCompressedWroughtIron = <ore:ingotCompressedWroughtIron>.firstItem;

// Wrought Iron into Compressed Wrought Iron
mods.pneumaticcraft.pressurechamber.addRecipe([ingotWroughtIron * 1], 2.0, [ingotCompressedWroughtIron]);

// Pulp into Paper
for pulp in <ore:dustWood>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([pulp * 3], 1.5, [<minecraft:paper>]);
}

// Coal blocks into diamond
mods.pneumaticcraft.pressurechamber.removeRecipe([<minecraft:diamond> * 1]);
for coal in <ore:blockCoal>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([coal * 8], 4.5, [<minecraft:diamond>]);
}

// Coal ore into 3x Coal
for coal in <ore:oreCoal>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([coal * 1], 1.5, [<minecraft:coal> * 3]);
}


// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<pneumaticcraft:compressed_iron_block>);
compressor.recipeBuilder()
	.inputs(<ore:ingotIronCompressed> * 9)
	.outputs(<pneumaticcraft:compressed_iron_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
  