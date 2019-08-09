import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;


val compressor as RecipeMap = RecipeMap.getByName("compressor");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val extruder = mods.gregtech.recipe.RecipeMap.getByName("extruder");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");
val metal_bender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
var basicMachineStructure = <libvulpes:structuremachine>;
var advancedMachineStructure = <libvulpes:advstructuremachine>;

var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolFileEmptyTag = <ore:craftingToolFileEmptyTag>;
var craftingToolScrewdriverEmptyTag = <ore:craftingToolScrewdriverEmptyTag>;

recipes.remove(<libvulpes:structuremachine> * 16);
recipes.addShaped("it3_libvulpes_structure", <libvulpes:structuremachine> * 2, 
[
	[<ore:stickStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickStainlessSteel>],
	[<ore:plateStainlessSteel>, <ore:craftingToolWrenchEmptyTag> , <ore:plateStainlessSteel>], 
	[<ore:stickStainlessSteel>, <ore:plateStainlessSteel>, <ore:stickStainlessSteel>]
]);

recipes.remove(<libvulpes:advstructuremachine> * 16);
recipes.addShaped("it3_libvulpes_structure_advanced", <libvulpes:advstructuremachine> * 2, 
[
	[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>],
	[<ore:plateTitanium>, <ore:craftingToolWrenchEmptyTag> , <ore:plateTitanium>], 
	[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>]
]);

// GT Style gear crafting
recipes.remove(<advancedrocketry:productgear:0>);
recipes.addShaped("it3_advrocketry_gear_0", <advancedrocketry:productgear:0>, [
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>],
	[<ore:plateTitaniumAluminide>, craftingToolScrewdriverEmptyTag, <ore:plateTitaniumAluminide>],
	[<ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:stickTitaniumAluminide>]]);

recipes.remove(<advancedrocketry:productgear:1>);
recipes.addShaped("it3_advrocketry_gear_1", <advancedrocketry:productgear:1>, [
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>],
	[<ore:plateTitaniumIridium>, craftingToolScrewdriverEmptyTag, <ore:plateTitaniumIridium>],
	[<ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:stickTitaniumIridium>]]);

// Removing gears that have GT counterpart
recipes.remove(<libvulpes:productgear:6>);
recipes.remove(<libvulpes:productgear:7>);

// GT Style Rod crafting
recipes.remove(<advancedrocketry:productrod>);
recipes.addShaped("it3_advrocketry_rod_0", <advancedrocketry:productrod>, [
	[craftingToolFileEmptyTag, null],
	[null, <ore:ingotTitaniumAluminide>]]);
  
recipes.remove(<advancedrocketry:productrod:1>);
recipes.addShaped("it3_advrocketry_rod_1", <advancedrocketry:productrod:1>, [
	[craftingToolFileEmptyTag, null],
	[null, <ore:ingotTitaniumIridium>]]);

// Removing rods that have GT counterpart
recipes.remove(<libvulpes:productrod:1>);
recipes.remove(<libvulpes:productrod:4>);
recipes.remove(<libvulpes:productrod:6>);
recipes.remove(<libvulpes:productrod:7>);
recipes.remove(<libvulpes:productrod:10>);

// GT Style Plate crafting
recipes.addShaped("it3_advrocketry_plate_0", <advancedrocketry:productplate>, [
	[craftingToolHardHammerEmptyTag],
	[<ore:ingotTitaniumAluminide>],
	[<ore:ingotTitaniumAluminide>]]);
recipes.addShaped("it3_advrocketry_plate_1", <advancedrocketry:productplate:1>, [
	[craftingToolHardHammerEmptyTag],
	[<ore:ingotTitaniumIridium>],
	[<ore:ingotTitaniumIridium>]]);

// GT Style block crafting
var blockTitaniumIridium = <advancedrocketry:metal0:1>;
var blockTitaniumAlumide = <advancedrocketry:metal0>;
var blockAluminium = <libvulpes:metal0:9>;
var blockTitanium = <libvulpes:metal0:7>;
var blockSteel = <libvulpes:metal0:6>;
var blockTin = <libvulpes:metal0:5>;
var blockCopper = <libvulpes:metal0:4>;
var blockIridium = <libvulpes:metal0:10>;

recipes.remove(blockTitaniumIridium);
recipes.remove(blockTitaniumAlumide);



compressor.recipeBuilder()
	.inputs(<ore:ingotTitaniumIridium> * 9)
	.outputs(blockTitaniumIridium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotTitaniumAlumide> * 9)
	.outputs(blockTitaniumAlumide)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(blockAluminium);
recipes.remove(blockTitanium);
recipes.remove(blockSteel);
recipes.remove(blockTin);
recipes.remove(blockCopper);
recipes.remove(blockIridium);



// New Machine Structure recipes
assembler.recipeBuilder()
  .inputs(<ore:plateStainlessSteel> * 4, <ore:stickStainlessSteel> * 4)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))
  .outputs(basicMachineStructure * 4)
  .duration(200)
  .EUt(512)
  .buildAndRegister();
  
assembler.recipeBuilder()
  .inputs(<ore:plateTitanium> * 4, <ore:stickTitanium> * 4)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 2}))  
  .outputs(advancedMachineStructure * 4)
  .duration(200)
  .EUt(2048)
  .buildAndRegister();  
  
// Disable the Coal Generator
scripts.functions.disableItem(<libvulpes:coalgenerator>);

// Disable the Small Plate Press
scripts.functions.disableItem(<advancedrocketry:platepress>);

// Disable the Arc Furnace  
scripts.functions.disableItem(<advancedrocketry:arcfurnace>);

// Disable the Chemical Reactor sadly
scripts.functions.disableItem(<advancedrocketry:chemicalreactor>);


// Move ingots from Arc Furnace to Blast Furnace
var ingotTitaniumAluminide = <advancedrocketry:productingot>;
var ingotTitaniumIridiumAlloy = <advancedrocketry:productingot:1>;

blast_furnace.recipeBuilder()
	.inputs([<ore:ingotTitanium> * 3, <ore:ingotAluminium> * 7])
	.outputs(ingotTitaniumAluminide * 2)
	.property("temperature", 2800)
	.duration(220)
	.EUt(520)
	.buildAndRegister();
  
blast_furnace.recipeBuilder()
	.inputs([<ore:ingotIridium> * 1, <ore:ingotTitanium> * 1])
	.outputs(ingotTitaniumIridiumAlloy * 2)
	.property("temperature", 2800)
	.duration(220)
	.EUt(520)
	.buildAndRegister();
  
// Remove shapeless recipes for rods and plates
var rodTitaniumIridiumAlloy = <advancedrocketry:productrod:1>;
var rodTitaniumAluminide = <advancedrocketry:productrod>;
var plateTitaniumAluminide = <advancedrocketry:productplate>;
var plateTitaniumIridiumAlloy = <advancedrocketry:productplate:1>;

// Add GT Extruder recipe for rods
extruder.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:shape.extruder.rod>)
  .outputs(rodTitaniumAluminide * 2)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

extruder.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:shape.extruder.rod>)
  .outputs(rodTitaniumIridiumAlloy * 2)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

// Add GT Lathe recipe for rods
lathe.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .outputs(rodTitaniumAluminide * 1)
  .duration(160)
  .EUt(44)
  .buildAndRegister();  

lathe.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .outputs(rodTitaniumIridiumAlloy * 1)
  .duration(160)
  .EUt(44)
  .buildAndRegister();  

// Add GT Extruder recipe for plates
extruder.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:shape.extruder.plate>)
  .outputs(plateTitaniumAluminide * 1)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

extruder.recipeBuilder()
  .inputs(<ore:IngotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:shape.extruder.plate>)
  .outputs(plateTitaniumIridiumAlloy * 1)
  .duration(160)
  .EUt(48)
  .buildAndRegister();  

// Add GT Bender recipe for plates
metal_bender.recipeBuilder()
  .inputs(<ore:ingotTitaniumAluminide>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
  .outputs(plateTitaniumAluminide * 1)
  .duration(120)
  .EUt(42)
  .buildAndRegister();   
  
metal_bender.recipeBuilder()
  .inputs(<ore:ingotTitaniumIridiumAlloy>)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}).or(<metaitem:circuit.integrated>))
  .outputs(plateTitaniumIridiumAlloy * 1)
  .duration(120)
  .EUt(42)
  .buildAndRegister();

recipes.remove(<advancedrocketry:blastbrick>);
recipes.addShaped("it3_advrocketry_blastbrick", <advancedrocketry:blastbrick> *6, [
  [<minecraft:magma_cream>, <minecraft:ghast_tear>, <forestry:refractory_wax>], 
  [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>], 
  [null, null, null]]);
  
// Remove furnace recipe for Iridium, should stop smashing-enchant from allowing iridium ingots
var libvulpes_iridium_ingot = <libvulpes:productingot:10>;
var libvulpes_iridium_dust = <libvulpes:productdust:10>;
var libvulpes_aluminum =  <libvulpes:productingot:9>;

furnace.remove(libvulpes_iridium_ingot, libvulpes_iridium_dust);  

// There might be weird ways (such as orechid) to get libvulpes aluminum ore.  Disable its furnace recipe.
furnace.remove(libvulpes_aluminum);

// Add all Aluminium to the Aluminum oredict.  We don't know specifically that this is useful.
<ore:ingotAluminum>.addAll(<ore:ingotAluminium>);

var gold_coil = <libvulpes:coil0:2>;
var copper_coil = <libvulpes:coil0:4>;
var titanium_coil = <libvulpes:coil0:7>;
var aluminum_coil = <libvulpes:coil0:9>;
var iridium_coil = <libvulpes:coil0:10>;

recipes.removeByRecipeName("advancedrocketry:coilaluminum");
recipes.addShaped("it3_advancedrocketry_coilaluminum", aluminum_coil, [
  [<ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>], 
  [<ore:wireGtQuadrupleAluminium>, <ore:craftingToolWrenchEmptyTag>, <ore:wireGtQuadrupleAluminium>], 
  [<ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>, <ore:wireGtQuadrupleAluminium>]]);

recipes.removeByRecipeName("advancedrocketry:coilgold");
recipes.addShaped("it3_advancedrocketry_coilgold", gold_coil, [
  [<ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>], 
  [<ore:wireGtQuadrupleGold>, <ore:craftingToolWrenchEmptyTag>, <ore:wireGtQuadrupleGold>], 
  [<ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>, <ore:wireGtQuadrupleGold>]]);

recipes.removeByRecipeName("advancedrocketry:coilcopper");
recipes.addShaped("it3_advancedrocketry_coilcopper", copper_coil, [
  [<ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>], 
  [<ore:wireGtQuadrupleCopper>, <ore:craftingToolWrenchEmptyTag>, <ore:wireGtQuadrupleCopper>], 
  [<ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>, <ore:wireGtQuadrupleCopper>]]);

recipes.removeByRecipeName("advancedrocketry:coiltitanium");
recipes.addShaped("it3_advancedrocketry_coiltitanium", titanium_coil, [
  [<ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>], 
  [<ore:wireGtQuadrupleTitanium>, <ore:craftingToolWrenchEmptyTag>, <ore:wireGtQuadrupleTitanium>], 
  [<ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>, <ore:wireGtQuadrupleTitanium>]]);  
  
// Iridium Coil recipe requires an Assembler because a) its buffest, and b) We don't have wires to use as ingredients.
recipes.removeByRecipeName("advancedrocketry:coilsteel");
assembler.recipeBuilder()
  .inputs(<ore:wireGtQuadrupleSteel> * 8)
  .fluidInputs([<liquid:iridium> * 488])
  .outputs(iridium_coil * 1)
  .duration(140)
  .EUt(512)
  .buildAndRegister();  
  
// Thermite should allow Aluminium Dust (with an extra I)  
recipes.addShapeless("it3_advancedrocketry_thermite", <advancedrocketry:thermite> * 3, [<ore:dustAluminium>, <ore:dustIron>, <ore:dustIron>]);
