import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;
import mods.gregtech.recipe.RecipeMap;


//Field projector
recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector> * 2, [
  [null, null, null],
  [<gregtech:cable_nichrome:2>, <metaitem:field.generator.lv>, <gregtech:cable_nichrome:2>],
  [<metaitem:emitter.hv>, <meta_tile_entity:hull.ev>, <metaitem:sensor.hv>]]);

 //Personal shrinking device
recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>, [
  [<metaitem:sensor.hv>, <rftools:screen>, <metaitem:emitter.hv>],
  [<ore:plateCurvedAluminium>, <metaitem:circuit.data>, <ore:plateCurvedAluminium>],
  [<ore:boltStainlessSteel>, <metaitem:field.generator.mv>, <ore:boltStainlessSteel>]]);

 //CM3 wall
 val assembler as RecipeMap = RecipeMap.getByName("assembler");
 assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium> * 2, <ore:plateSteel> * 4, <ore:circuitGAGood> * 1)
	.fluidInputs([<liquid:lead> * 288])
	.outputs(<compactmachines3:wallbreakable> * 2)
	.duration(300)
	.EUt(512)
	.buildAndRegister();

 assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium> * 2, <ore:plateSteel> * 4, <ore:circuitGAGood> * 1)
	.fluidInputs([<liquid:tin> * 144])
	.outputs(<compactmachines3:wallbreakable> * 2)
	.duration(300)
	.EUt(512)
	.buildAndRegister();

 assembler.recipeBuilder()
	.inputs(<ore:frameGtAluminium> * 2, <ore:plateSteel> * 4, <ore:circuitGAGood> * 1)
	.fluidInputs([<liquid:soldering_alloy> * 72])
	.outputs(<compactmachines3:wallbreakable> * 2)
	.duration(300)
	.EUt(512)
	.buildAndRegister();

//CM3 port
 assembler.recipeBuilder()
	.inputs(<ore:cableGtSingleAnnealedCopper> * 2, <thermaldynamics:duct_32> * 1, <ore:circuitGAGood> * 1)
	.outputs(<compactmachines3:tunneltool> * 4)
	.duration(80)
	.EUt(32)
	.buildAndRegister();

//CM3 redstone port
 assembler.recipeBuilder()
	.inputs(<ore:circuitGAGood> * 1, <ore:wireFineRedAlloy> *1)
	.outputs(<compactmachines3:redstonetunneltool> * 1)
	.duration(40)
	.EUt(32)
	.buildAndRegister();