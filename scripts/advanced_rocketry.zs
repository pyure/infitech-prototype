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
val macerator as RecipeMap = RecipeMap.getByName("macerator");
var basicMachineStructure = <libvulpes:structuremachine>;
var advancedMachineStructure = <libvulpes:advstructuremachine>;
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolFileEmptyTag = <ore:craftingToolFileEmptyTag>;
var craftingToolScrewdriverEmptyTag = <ore:craftingToolScrewdriverEmptyTag>;
var advancedRocketryDrill = <advancedrocketry:drill>;
var diamondDrillHead = <ore:toolHeadDrillDiamond>;
var tracking_circuit = <advancedrocketry:ic:1>;
var ev_machine_hull = <gregtech:machine:504>;
var tungstensteel_coil = <gregtech:wire_coil:3>;

recipes.remove(advancedRocketryDrill);
recipes.addShapeless("advancedrocketry_drill", advancedRocketryDrill, [<libvulpes:structuremachine>, diamondDrillHead]);

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


/* Recipe for infused dilithium */
chemical_reactor.recipeBuilder()
	.inputs([<ore:dustDilithium> * 1, <ore:ingotCurium246>])
	.fluidInputs([<liquid:helium3> * 500])	
	.outputs(<contenttweaker:helium_infused_dilithium_dust>)
	.duration(4400).EUt(2048)
	.buildAndRegister();
	
chemical_reactor.recipeBuilder()
	.inputs([<ore:dustDilithium> * 1, <ore:ingotUranium235>])
	.fluidInputs([<liquid:helium3> * 500])	
	.outputs(<contenttweaker:helium_infused_dilithium_dust>)
	.duration(12400).EUt(3072)
	.buildAndRegister();
	
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

// Disable the Jackhammer
scripts.functions.disableItem(<advancedrocketry:jackhammer>);

// Disable the Hover Craft because we have no idea what it does.
scripts.functions.disableItem(<advancedrocketry:hovercraft>);

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
var satellite_id_chip = <advancedrocketry:satelliteidchip>;
var planet_id_chip = <advancedrocketry:planetidchip>;

// Tracking Circuit
assembler.recipeBuilder()
  .inputs(<ore:circuitBasic>)
  .inputs(<metaitem:sensor.mv>)
  .fluidInputs([<liquid:redstone> * 144])
  .outputs(tracking_circuit)
  .duration(900)
  .EUt(512)
  .buildAndRegister();    

// Satellite ID Chip 
recipes.remove(satellite_id_chip);
assembler.recipeBuilder()
  .inputs(<ore:circuitExtreme>)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<metaitem:plate.random_access_memory>)
  .fluidInputs([<liquid:soldering_alloy> * 36])
  .outputs(satellite_id_chip)
  .duration(280)
  .EUt(300)
  .buildAndRegister();    
assembler.recipeBuilder()
  .inputs(<ore:circuitExtreme>)
  .inputs(<ore:wireFineRedAlloy> * 4)
  .inputs(<metaitem:plate.random_access_memory>)
  .fluidInputs([<liquid:tin> * 72])
  .outputs(satellite_id_chip)
  .duration(360)
  .EUt(300)
  .buildAndRegister();      
  
// Planet ID Chip 
recipes.remove(planet_id_chip);
assembler.recipeBuilder()
  .inputs(<ore:circuitGood> * 3)
  .inputs(<ore:wireFineElectrum> * 8)
  .inputs(<metaitem:plate.random_access_memory> * 2)
  .fluidInputs([<liquid:soldering_alloy> * 36])
  .outputs(planet_id_chip)
  .duration(280)
  .EUt(300)
  .buildAndRegister();    
assembler.recipeBuilder()
  .inputs(<ore:circuitGood> * 3)
  .inputs(<ore:wireFineElectrum> * 8)
  .inputs(<metaitem:plate.random_access_memory> * 2)
  .fluidInputs([<liquid:tin> * 72])
  .outputs(planet_id_chip)
  .duration(360)
  .EUt(300)
  .buildAndRegister();      
  
// Data Storage unit: craft directly 1:1 from Data Stick.
recipes.addShapeless("it3_advancedrocketry_dataunit", <advancedrocketry:dataunit>, [<metaitem:tool.datastick>]);

// Thermite should allow Aluminium Dust (with an extra I)  
recipes.addShapeless("it3_advancedrocketry_thermite", <advancedrocketry:thermite> * 3, [<ore:dustAluminium>, <ore:dustIron>, <ore:dustIron>]);

//Dilithium crystals can't be smashed by default for some reason
macerator.recipeBuilder()		
	.inputs(<ore:crystalDilithium> * 1)
	.outputs([<ore:dustDilithium>.firstItem *1])
	.duration(30)
	.EUt(8)
	.buildAndRegister();

// Pressure Tanks in Bending Machine


metal_bender.recipeBuilder()
  .inputs(<ore:plateIron> * 3)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<advancedrocketry:pressuretank> * 1)
  .duration(220)
  .EUt(140)
  .buildAndRegister();
  
metal_bender.recipeBuilder()
  .inputs(<ore:plateSteel> * 3)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<advancedrocketry:pressuretank:1> * 1)
  .duration(220)
  .EUt(512)
  .buildAndRegister();  
    
metal_bender.recipeBuilder()
  .inputs(<ore:plateAluminium> * 3)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<advancedrocketry:pressuretank:2> * 1)
  .duration(220)
  .EUt(2048)
  .buildAndRegister();  

metal_bender.recipeBuilder()
  .inputs(<ore:plateTitanium> * 3)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 3}))
  .outputs(<advancedrocketry:pressuretank:3> * 1)
  .duration(220)
  .EUt(8192)
  .buildAndRegister();    
  
// Titanium Iridium Alloy Sheet (note that it has a better 1:3 ratio in AR-specific machine)
metal_bender.recipeBuilder()
  .inputs(<ore:plateTitaniumIridium> * 1)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}))
  .outputs(<advancedrocketry:productplate:1>)
  .duration(220)
  .EUt(160)
  .buildAndRegister();      
  
// Titanium Aluminide Sheet (note that it has a better 1:3 ratio in AR-specific machine)
metal_bender.recipeBuilder()
  .inputs(<ore:plateTitaniumAluminide> * 1)
  .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 0}))
  .outputs(<advancedrocketry:productplate:0>)
  .duration(220)
  .EUt(160)
  .buildAndRegister();     
  
// Structure Tower
recipes.remove(<advancedrocketry:structuretower> * 8);
recipes.addShapeless("it3_advancedrocketry_structure_tower", <advancedrocketry:structuretower>, [<gregtech:frame_steel>, <ore:craftingToolWrenchEmptyTag>]);

// Liquid Fuel Tank
var titanium_tank = <gregtech:machine:815>;
recipes.remove(<advancedrocketry:fueltank>);
recipes.addShaped("it3_advancedrocketry_blockfueltank", <advancedrocketry:fueltank>, [
	[<ore:stickSteel>, null, <ore:stickSteel>], 
	[<ore:plateSteel>, titanium_tank, <ore:plateSteel>], 
	[<ore:stickSteel>, null, <ore:stickSteel>]]);

// User Interface - User Interface: in HV assembler, requires 64 SMD Diodes, 1x Central Processing Unit, 1x glass pane, 2x dyeLime, 4x SMD transistor, and 288 mB liquid redstone. (This recipe tries to mimic a LED display)
var user_interface = <advancedrocketry:misc>;
recipes.remove(user_interface);
assembler.recipeBuilder()
  .inputs(<metaitem:component.smd.diode> * 3)
  .inputs(<metaitem:plate.central_processing_unit> * 1)
  .inputs(<ore:paneGlass> * 1)
  .inputs(<ore:dyeLime> * 2)
  .inputs(<metaitem:component.smd.transistor> * 4)
  .outputs(user_interface)
  .duration(200)
  .EUt(140)
  .buildAndRegister();     

// Basic Lens  
recipes.remove(<advancedrocketry:lens>);
recipes.addShapeless("it3_advancedrocketry_basic_lens", <advancedrocketry:lens>, [<ore:craftingLensWhite>, <ore:craftingToolWrenchEmptyTag>]);

// Optical Sensor - Optical Sensor: replace glowstone by lensGreenSapphire. replace Gold Plate by Sensor(EV).
recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
recipes.addShaped("it3_advancedrocketry_opticalsensor", <advancedrocketry:satelliteprimaryfunction>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], 
	[null, <ore:craftingLensSilver>, null], 
	[null, <metaitem:sensor.ev>, null]]);

// Composition Sensor
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
recipes.addShaped("it3_advancedrocketry_compositionsensor", <advancedrocketry:satelliteprimaryfunction:1>, [
	[<advancedrocketry:satelliteprimaryfunction>, <advancedrocketry:ic:1>, <advancedrocketry:satelliteprimaryfunction>], 
	[<metaitem:wafer.glowstone>, <ore:circuitExtreme>, <metaitem:wafer.glowstone>]]);

// Mass Detector
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
recipes.addShaped("it3_advancedrocketry_massdetector", <advancedrocketry:satelliteprimaryfunction:2>, [
	[<advancedrocketry:satelliteprimaryfunction>, <ore:gemDilithium>, <advancedrocketry:satelliteprimaryfunction>], 
	[<metaitem:wafer.glowstone>, <ore:circuitExtreme>, <metaitem:wafer.glowstone>]]);

// Microwave transmittor
recipes.remove(<advancedrocketry:satelliteprimaryfunction:3>);
recipes.addShaped("it3_advancedrocketry_microwavetransmitter", <advancedrocketry:satelliteprimaryfunction:3>, [
	[<advancedrocketry:lens>, <advancedrocketry:ic:1>, <advancedrocketry:lens>], 
	[<metaitem:wafer.glowstone>, <ore:circuitExtreme>, <metaitem:wafer.glowstone>]]);

// Saw Blade Assembly
recipes.remove(<advancedrocketry:sawblade>);
recipes.addShaped("it3_advancedrocketry_sawblade", <advancedrocketry:sawblade>, [
	[<ore:stickIron>, null, <ore:stickIron>], 
	[<ore:plateIron>, <ore:craftingDiamondBlade>, <ore:plateIron>], 
	[<ore:plateIron>, null, <ore:plateIron>]]);

// Small Battery
recipes.remove(<libvulpes:battery> * 4);
recipes.addShapeless("it3_advancedrocketry_battery", <libvulpes:battery>, [<ore:batteryMVAll>, <ore:craftingToolWrenchEmptyTag>]);

// 2x Small Battery
recipes.remove(<libvulpes:battery:1>);
recipes.addShapeless("it3_advancedrocketry_battery2x", <libvulpes:battery:1>, [<ore:batteryHVAll>, <ore:craftingToolWrenchEmptyTag>]);

// Ore Scanner
recipes.remove(<advancedrocketry:orescanner>);
recipes.addShaped("it3_advancedrocketry_orescanner", <advancedrocketry:orescanner>, [
	[<minecraft:lever>, <metaitem:sensor.hv>, <minecraft:lever>], 
	[<metaitem:lapotron_crystal>, <advancedrocketry:misc>, <metaitem:lapotron_crystal>], 
	[null, null, null]]);

// Basic Solar Panel
recipes.remove(<advancedrocketry:satellitepowersource>);
recipes.addShapeless("it3_advancedrocketry_basic_solar", <advancedrocketry:satellitepowersource>, [<metaitem:cover.solar.panel>, <ore:craftingToolWrenchEmptyTag>]);


// Large Solar Panel
recipes.remove(<advancedrocketry:satellitepowersource:1>);
recipes.addShapeless("it3_advancedrocketry_large_solar", <advancedrocketry:satellitepowersource:1>, [<metaitem:cover.solar.panel.ulv>, <ore:craftingToolWrenchEmptyTag>]);

// Ore Mapper
recipes.remove(<advancedrocketry:satelliteprimaryfunction:4>);
recipes.addShaped("it3_advancedrocketry_oremapper", <advancedrocketry:satelliteprimaryfunction:4>, [
	[null, <ore:stickCopper>, null], 
	[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>], 
	[<ore:circuitExtreme>, <advancedrocketry:orescanner>, <ore:circuitExtreme>]]);

// Satellite 
recipes.remove(<advancedrocketry:satellite>);
recipes.addShaped("it3_advancedrocketry_satellite", <advancedrocketry:satellite>, [
	[<ore:sheetAluminum>, <ore:sheetAluminum>, <ore:sheetAluminum>], 
	[<ore:stickTitanium>, <ore:circuitExtreme>, <ore:stickTitanium>], 
	[<ore:sheetAluminum>, <ore:sheetAluminum>, <ore:sheetAluminum>]]);

// Space Station ID chip
recipes.remove(<advancedrocketry:spacestationchip>);
recipes.addShapeless("it3_advancedrocketry_spacestationidchip", <advancedrocketry:spacestationchip>, [<ore:circuitExtreme>, <libvulpes:linker>]);

// Carbon Scrubber Cartridge
recipes.remove(<advancedrocketry:carbonscrubbercartridge>);
recipes.addShaped("it3_advancedrocketry_carbonscrubbercartidge", <advancedrocketry:carbonscrubbercartridge>, [
	[<ore:sheetIron>, <minecraft:iron_bars>, <ore:sheetIron>], 
	[<ore:sheetIron>, <minecraft:iron_bars>, <ore:sheetIron>], 
	[<ore:sheetIron>, <minecraft:iron_bars>, <ore:sheetIron>]]);
	
assembler.recipeBuilder()
  .inputs(<ore:sheetIron> * 6)
  .inputs(<minecraft:iron_bars> * 3)
  .outputs(<advancedrocketry:carbonscrubbercartridge>)
  .duration(120)
  .EUt(8)
  .buildAndRegister();    
  
// Jetpack
recipes.remove(<advancedrocketry:jetpack>);
recipes.addShaped("it3_advancedrocketry_jetpack", <advancedrocketry:jetpack>, [
	[<advancedrocketry:pressuretank:*>, <ore:plateTungstenSteel>, <advancedrocketry:pressuretank:*>], 
	[<minecraft:lever>, <ore:wireFineSteel>, <minecraft:lever>], 
	[<minecraft:fire_charge>, null, <minecraft:fire_charge>]]);

// Input Hatch
recipes.remove(<libvulpes:hatch>); 
recipes.addShapeless("it3_advancedrocketry_inputhatch", <libvulpes:hatch>, [<meta_tile_entity:item_bus.import.hv>, <ore:craftingToolWrenchEmptyTag>]);

// Fluid Input Hatch
recipes.remove(<libvulpes:hatch:2>); 
recipes.addShapeless("it3_advancedrocketry_fluidinputhatch", <libvulpes:hatch:2>, [<meta_tile_entity:fluid_hatch.import.hv>, <ore:craftingToolWrenchEmptyTag>]);

// Output Hatch
recipes.remove(<libvulpes:hatch:1>); 
recipes.addShapeless("it3_advancedrocketry_outputhatch", <libvulpes:hatch:1>, [<meta_tile_entity:item_bus.export.hv>, <ore:craftingToolWrenchEmptyTag>]);

// Fluid Output Hatch
recipes.remove(<libvulpes:hatch:3>); 
recipes.addShapeless("it3_advancedrocketry_fluidoutputhatch", <libvulpes:hatch:3>, [<meta_tile_entity:fluid_hatch.export.hv>, <ore:craftingToolWrenchEmptyTag>]);

// Energy Input Hatch
recipes.remove(<libvulpes:forgepowerinput>);
recipes.addShapeless("it3_advancedrocketry_forgepowerinput", <libvulpes:forgepowerinput>, [<meta_tile_entity:energy_hatch.input.hv>, <ore:craftingToolWrenchEmptyTag>]);

// Motor
recipes.remove(<libvulpes:motor>);
recipes.addShaped("it3_advancedrocketry_motor", <libvulpes:motor>, [
	[null, <ore:stickLongStainlessSteel>, null], 
	[null, <metaitem:electric.motor.mv>, null], 
	[null, <ore:craftingToolWrenchEmptyTag>, null]]);
	
// Advanced Motor
recipes.remove(<libvulpes:advancedmotor>);
recipes.addShaped("it3_advancedrocketry_advancedmotor", <libvulpes:advancedmotor>, [
	[null, <ore:stickLongTitanium>, null], 
	[null, <metaitem:electric.motor.hv>, null], 
	[null, <ore:craftingToolWrenchEmptyTag>, null]]);
	
// Enhanced Motor
recipes.remove(<libvulpes:enhancedmotor>);
recipes.addShaped("it3_advancedrocketry_enhancedmotor", <libvulpes:enhancedmotor>, [
	[null, <ore:stickLongTungstenSteel>, null], 
	[null, <metaitem:electric.motor.ev>, null], 
	[null, <ore:craftingToolWrenchEmptyTag>, null]]);
	
// Elite Motor
recipes.remove(<libvulpes:elitemotor>);
recipes.addShaped("it3_advancedrocketry_elitemotor", <libvulpes:elitemotor>, [
	[null, <ore:stickLongHssg>, null], 
	[null, <metaitem:electric.motor.iv>, null], 
	[null, <ore:craftingToolWrenchEmptyTag>, null]]);

// Rocket Assembling Machine
recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped("it3_advancedrocketry_rocketbuilder", <advancedrocketry:rocketbuilder>, [
	[<ore:stickTitanium>, <advancedrocketry:misc>, <ore:stickTitanium>], 
	[<ore:circuitExtreme>, <libvulpes:structuremachine>, <ore:circuitExtreme>], 
	[<ore:gearTitanium>, <ore:plateTitanium>, <ore:gearTitanium>]]);

// Fueling Station
recipes.remove(<advancedrocketry:fuelingstation>);
recipes.addShaped("it3_advancedrocketry_fuelingstation", <advancedrocketry:fuelingstation>, [
	[<ore:plateStainlessSteel>, <advancedrocketry:misc>, <meta_tile_entity:fluid_hatch.export.hv>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:rotorSteel>], 
	[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

// Monitoring Station
recipes.remove(<advancedrocketry:monitoringstation>);
recipes.addShaped("it3_advancedrocketry_monitoringstation", <advancedrocketry:monitoringstation>, [
	[<ore:stickCopper>, <metaitem:sensor.hv>, <ore:stickCopper>], 
	[<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>], 
	[<ore:stickCopper>, <ore:batteryHVAll>, <ore:stickCopper>]]);

// Satellite Builder
recipes.remove(<advancedrocketry:satellitebuilder>);
recipes.addShaped("it3_advancedrocketry_satellitebuilder", <advancedrocketry:satellitebuilder>, [
	[<metaitem:tool.datastick>, <minecraft:hopper>, <ore:plateTitanium>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>], 
	[<metaitem:electric.motor.hv>, <minecraft:anvil>, <ore:craftingDiamondBlade>]]);

// Data Bus
recipes.remove(<advancedrocketry:loader>);
recipes.addShaped("it3_advancedrocketry_databus", <advancedrocketry:loader> * 4, [[<libvulpes:structuremachine>], [<metaitem:tool.datastick>], [null]]);

// Rocket Unloader
recipes.remove(<advancedrocketry:loader:2>);
recipes.addShapeless("it3_advancedrocketry_loader", <advancedrocketry:loader:2>, [<meta_tile_entity:item_bus.export.hv>, <advancedrocketry:ic:1>]);

// Rocket Loader
recipes.remove(<advancedrocketry:loader:3>);
recipes.addShapeless("it3_advancedrocketry_rocketloader", <advancedrocketry:loader:3>, [<meta_tile_entity:item_bus.import.hv>, <advancedrocketry:ic:1>]);

// Rocket Fluid Unloader
recipes.remove(<advancedrocketry:loader:4>);
recipes.addShapeless("it3_advancedrocketry_rocketfluidunloader", <advancedrocketry:loader:4>, [<meta_tile_entity:fluid_hatch.export.hv>, <advancedrocketry:ic:1>]);

// Rocket Fluid Loader
recipes.remove(<advancedrocketry:loader:5>);
recipes.addShapeless("it3_advancedrocketry_rocketfluidloader", <advancedrocketry:loader:5>, [<meta_tile_entity:fluid_hatch.import.hv>, <advancedrocketry:ic:1>]);

// Precision Assembler
recipes.remove(<advancedrocketry:precisionassemblingmachine>);
recipes.addShaped("it3_advancedrocketry_precisionassemblingmachine", <advancedrocketry:precisionassemblingmachine>, [
	[<metaitem:robot.arm.hv>, <advancedrocketry:misc>, <ore:stickDiamond>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>], 
	[<ore:wireGtQuadrupleKanthal>, <ore:gearSteel>, <metaitem:conveyor.module.hv>]]);

// Crystallizer
recipes.remove(<advancedrocketry:crystallizer>);
recipes.addShaped("it3_advancedrocketry_crystallizer", <advancedrocketry:crystallizer>, [
	[<minecraft:quartz>, <advancedrocketry:misc>, <minecraft:quartz>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>], 
	[<ore:cableGtSingleGold>, <ore:plateSteel>, <ore:cableGtSingleGold>]]);

// Lathe
recipes.remove(<advancedrocketry:lathe>);
recipes.addShaped("it3_advancedrocketry_lathe", <advancedrocketry:lathe>, [
	[<ore:stickIron>, <advancedrocketry:misc>, <ore:stickIron>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>], 
	[<ore:plateSteel>, <ore:gearSteel>, <ore:plateSteel>]]);

// Rolling Machine
recipes.remove(<advancedrocketry:rollingmachine>);
recipes.addShaped("it3_advancedrocketry_rollingmachine", <advancedrocketry:rollingmachine>, [
	[<ore:gearSteel>, <advancedrocketry:misc>, <ore:gearSteel>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>], 
	[<minecraft:iron_block>, <ore:circuitAdvanced>, <minecraft:iron_block>]]);

// Electrolyzer
recipes.remove(<advancedrocketry:electrolyser>);
recipes.addShaped("it3_advancedrocketry_electrolyser", <advancedrocketry:electrolyser>, [
	[<ore:plateSteel>, <advancedrocketry:misc>, <ore:plateSteel>], 
	[<ore:wireGtQuadrupleElectrum>, <libvulpes:structuremachine>, <ore:wireGtQuadrupleElectrum>], 
	[<ore:circuitAdvanced>, <minecraft:redstone_torch>, <ore:circuitAdvanced>]]);

// Cutting Machine
recipes.remove(<advancedrocketry:cuttingmachine>);
recipes.addShaped("it3_advancedrocketry_cuttingmachine", <advancedrocketry:cuttingmachine>, [
	[<ore:gearSteel>, <advancedrocketry:misc>, <ore:craftingDiamondBlade>], 
	[<ore:circuitAdvanced>, <libvulpes:structuremachine>, <ore:circuitAdvanced>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Black Hole Generator
recipes.remove(<advancedrocketry:blackholegenerator>);
recipes.addShaped("it3_advancedrocketry_blackholegenerator", <advancedrocketry:blackholegenerator>, [
	[<ore:batteryUltimate>, <metaitem:field.generator.ev>, <ore:batteryUltimate>], 
	[<ore:plateTitaniumAluminide>, <meta_tile_entity:hull.iv>, <ore:plateTitaniumAluminide>], 
	[<metaitem:electric.motor.iv>, <advancedrocketry:misc>, <metaitem:electric.motor.iv>]]);

// Satellite Terminal
recipes.remove(<advancedrocketry:satellitecontrolcenter>);
recipes.addShaped("it3_advancedrocketry_satellitecontrolcenter", <advancedrocketry:satellitecontrolcenter>, [
	[<advancedrocketry:satelliteprimaryfunction>, <advancedrocketry:misc>, <advancedrocketry:satelliteprimaryfunction>], 
	[<ore:stickCopper>, <libvulpes:structuremachine>, <ore:stickCopper>], 
	[<ore:cableGtSingleAluminium>, <metaitem:lapotron_crystal>, <ore:cableGtSingleAluminium>]]);

// Guidance Computer
recipes.remove(<advancedrocketry:guidancecomputer>);
recipes.addShaped("it3_advancedrocketry_guidancecomputer", <advancedrocketry:guidancecomputer>, [
	[<advancedrocketry:ic:1>, <ore:plateTitanium>, <advancedrocketry:ic:1>], 
	[<ore:cableGtSingleGold>, <libvulpes:structuremachine>, <ore:cableGtSingleGold>], 
	[<advancedrocketry:ic:1>, <ore:cableGtSingleGold>, <advancedrocketry:ic:1>]]);

// Space station assembler
recipes.remove(<advancedrocketry:stationbuilder>);
recipes.addShaped("it3_advancedrocketry_stationbuilder", <advancedrocketry:stationbuilder>, [
	[<ore:gearTitanium>, <ore:dustDilithium>, <ore:gearTitanium>], 
	[<ore:dustDilithium>, <advancedrocketry:rocketbuilder>, <ore:dustDilithium>], 
	[<ore:circuitExtreme>, <ore:dustDilithium>, <ore:circuitExtreme>]]);

// CO2 Scrubber
recipes.remove(<advancedrocketry:oxygenscrubber>);
recipes.addShaped("it3_advancedrocketry_oxygenscrubber", <advancedrocketry:oxygenscrubber>, [
	[<minecraft:iron_bars>, <ore:rotorSteel>, <minecraft:iron_bars>], 
	[<minecraft:iron_bars>, <metaitem:electric.motor.hv>, <minecraft:iron_bars>], 
	[<minecraft:iron_bars>, <libvulpes:structuremachine>, <minecraft:iron_bars>]]);

// Oxygen Vent
recipes.remove(<advancedrocketry:oxygenvent>);
recipes.addShaped("it3_advancedrocketry_oxygenvent", <advancedrocketry:oxygenvent>, [
	[<minecraft:iron_bars>, <ore:rotorSteel>, <minecraft:iron_bars>], 
	[<minecraft:iron_bars>, <metaitem:electric.motor.hv>, <minecraft:iron_bars>], 
	[<minecraft:iron_bars>, <advancedrocketry:fueltank>, <minecraft:iron_bars>]]);

// Gas Charge Pad
recipes.remove(<advancedrocketry:oxygencharger>);
recipes.addShaped("it3_advancedrocketry_oxygencharger", <advancedrocketry:oxygencharger>, [
	[<ore:rotorSteel>, <advancedrocketry:misc>, <ore:rotorSteel>], 
	[<advancedrocketry:fueltank>, <libvulpes:structuremachine>, <advancedrocketry:fueltank>], 
	[<ore:plateSteel>, <minecraft:heavy_weighted_pressure_plate>, <ore:plateSteel>]]);

// Observatory
recipes.remove(<advancedrocketry:observatory>);
recipes.addShaped("it3_advancedrocketry_observatory", <advancedrocketry:observatory>, [
	[<ore:paneGlass>, <advancedrocketry:misc>, <ore:paneGlass>], 
	[<advancedrocketry:satelliteprimaryfunction>, <libvulpes:structuremachine>, <advancedrocketry:satelliteprimaryfunction>], 
	[<ore:plateStainlessSteel>, <ore:gemDilithium>, <ore:plateStainlessSteel>]]);

// Warp Core (Allows travel to other planets)
recipes.remove(<advancedrocketry:warpcore>);
recipes.addShaped("it3_advancedrocketry_warpcore", <advancedrocketry:warpcore>, [
	[<ore:plateTitanium>, <ore:circuitExtreme>, <ore:plateTitanium>], 
	[<ore:coilIridium>, tungstensteel_coil, <ore:coilIridium>], 
	[<ore:coilIridium>, <ore:coilIridium>, <ore:coilIridium>]]);

// Warp Controller (Allows travel to other systems)
recipes.remove(<advancedrocketry:warpmonitor>);
recipes.addShaped("it3_advancedrocketry_warpmonitor", <advancedrocketry:warpmonitor>, [
	[<ore:plateTungstenSteel>, <advancedrocketry:misc>, <ore:plateTungstenSteel>], 
	[<ore:circuitElite>, <meta_tile_entity:hull.iv>, <ore:circuitElite>], 
	[<ore:plateTungstenSteel>, <ore:circuitElite>, <ore:plateTungstenSteel>]]);

// Atmosphere Detector
recipes.remove(<advancedrocketry:oxygendetection>);
recipes.addShaped("it3_advancedrocketry_oxygendetection", <advancedrocketry:oxygendetection>, [
	[<ore:plateSteel>, <advancedrocketry:misc>, <ore:plateSteel>], 
	[<minecraft:iron_bars>, <libvulpes:structuremachine>, <ore:rotorSteel>], 
	[<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]]);

// Station gravity Controller
recipes.remove(<advancedrocketry:gravitycontroller>);
recipes.addShapeless("it3_advancedrocketry_gravitycontroller", <advancedrocketry:gravitycontroller>, [<meta_tile_entity:hull.ev>, <metaitem:field.generator.ev>, <ore:circuitExtreme>]);

// Microwave Receiver
recipes.remove(<advancedrocketry:microwavereciever>);
recipes.addShaped("it3_advancedrocketry_microwavereciever", <advancedrocketry:microwavereciever>, [
	[<ore:plateLapis>, <ore:plateLapis>, <ore:plateLapis>], 
	[<ore:circuitExtreme>, <meta_tile_entity:hull.ev>, <ore:circuitExtreme>], 
	[<ore:plateGold>, <advancedrocketry:satelliteprimaryfunction>, <ore:plateGold>]]);

// Biome Scanner
recipes.remove(<advancedrocketry:biomescanner>);
recipes.addShaped("it3_advancedrocketry_biomescanner", <advancedrocketry:biomescanner>, [
	[<ore:plateTungstenSteel>, <advancedrocketry:satelliteprimaryfunction>, <ore:plateTungstenSteel>], 
	[<ore:circuitExtreme>, <meta_tile_entity:hull.ev>, <ore:circuitExtreme>], 
	[<ore:plateTungstenSteel>, <ore:plateTungstenSteel>, <ore:plateTungstenSteel>]]);

// Atmosphere Terraformer
recipes.remove(<advancedrocketry:terraformer>);
recipes.addShaped("it3_advancedrocketry_terraformer", <advancedrocketry:terraformer>, [
	[<ore:gearTitaniumAluminide>, <ore:gemDilithium>, <ore:gearTitaniumAluminide>], 
	[<ore:circuitElite>, <meta_tile_entity:hull.iv>, <ore:circuitElite>], 
	[<ore:gearTitaniumAluminide>, <ore:batteryUltimate>, <ore:gearTitaniumAluminide>]]);

// Unmanned Vehicle Assembler
recipes.remove(<advancedrocketry:deployablerocketbuilder>);
recipes.addShaped("it3_advancedrocketry_deployablerocketbuilder", <advancedrocketry:deployablerocketbuilder>, [
	[<metaitem:electric.motor.ev>, <ore:dustDilithium>, <metaitem:electric.motor.ev>], 
	[<ore:circuitElite>, <advancedrocketry:rocketbuilder>, <ore:circuitElite>], 
	[<ore:stickTitaniumAluminide>, <ore:plateStainlessSteel>, <ore:stickTitaniumAluminide>]]);

// Gas Intake
recipes.remove(<advancedrocketry:intake>);
recipes.addShaped("it3_advancedrocketry_intake", <advancedrocketry:intake>, [
	[<ore:stickTitanium>, <ore:plateStainlessSteel>, <ore:stickTitanium>], 
	[<metaitem:electric.pump.ev>, <libvulpes:structuremachine>, <metaitem:electric.pump.ev>], 
	[<ore:stickTitanium>, <metaitem:electric.motor.ev>, <ore:stickTitanium>]]);

// Solar Generator
recipes.remove(<advancedrocketry:solargenerator>);
recipes.addShapeless("it3_advancedrocketry_solargenerator", <advancedrocketry:solargenerator>, [<ore:batteryLVAll>, <advancedrocketry:solarpanel>, <libvulpes:forgepoweroutput>]);

// Station Docking Port
recipes.remove(<advancedrocketry:stationmarker>);
recipes.addShapeless("it3_advancedrocketry_stationmarker", <advancedrocketry:stationmarker>, [<ore:batteryHVAll>, <advancedrocketry:ic:1>, <advancedrocketry:loader:1>]);

// Altitude Controller
recipes.remove(<advancedrocketry:altitudecontroller>);
recipes.addShapeless("it3_advancedrocketry_altitudecontroller", <advancedrocketry:altitudecontroller>, [<libvulpes:structuremachine>, <ore:circuitAdvanced>, <advancedrocketry:misc>]);

// Railgun
recipes.remove(<advancedrocketry:railgun>);
recipes.addShaped("it3_advancedrocketry_railgun", <advancedrocketry:railgun>, [
	[null, <advancedrocketry:ic:1>, null], 
	[<ore:circuitExtreme>, <meta_tile_entity:hull.ev>, <ore:circuitExtreme>], 
	[<ore:rotorTungstenSteel>, tungstensteel_coil, <ore:rotorTungstenSteel>]]);

// Holographic Planet Selector
recipes.remove(<advancedrocketry:planetholoselector>);
recipes.addShaped("it3_advancedrocketry_planetholoselector", <advancedrocketry:planetholoselector>, [
	[<advancedrocketry:ic:1>, <minecraft:stone_button>, <advancedrocketry:ic:1>], 
	[<ore:circuitExtreme>, <advancedrocketry:guidancecomputer>,<ore:circuitExtreme>], 
	[<advancedrocketry:ic:1>, <advancedrocketry:satelliteprimaryfunction:1>, <advancedrocketry:ic:1>]]);

// Force Field Projector
recipes.remove(<advancedrocketry:forcefieldprojector>);
recipes.addShaped("it3_advancedrocketry_forcefieldprojector", <advancedrocketry:forcefieldprojector>, [
	[<ore:gemDilithium>, tungstensteel_coil, <ore:gemDilithium>], 
	[<ore:plateAluminum>, <metaitem:field.generator.mv>, <ore:plateAluminum>], 
	[<ore:plateAluminum>, <meta_tile_entity:hull.ev>, <ore:plateAluminum>]]);

// Space Elevator
recipes.remove(<advancedrocketry:spaceelevatorcontroller>);
recipes.addShaped("it3_advancedrocketry_spaceelevatorcontroller", <advancedrocketry:spaceelevatorcontroller>, [
	[null, <ore:circuitElite>, null], 
	[<ore:circuitElite>, <meta_tile_entity:hull.ev>, <ore:circuitElite>], 
	[<ore:coilAluminum>, <ore:coilAluminum>, <ore:coilAluminum>]]);

// Beacon
recipes.remove(<advancedrocketry:beacon>);
recipes.addShaped("it3_advancedrocketry_beacon", <advancedrocketry:beacon>, [
	[null, <metaitem:emitter.ev>, null], 
	[<ore:circuitAdvanced>, <meta_tile_entity:hull.ev>, <advancedrocketry:ic:1>], 
	[<ore:plateStainlessSteel>, <ore:coilCopper>, <ore:plateStainlessSteel>]]);

// Fluid Pump
<advancedrocketry:blockpump>.addTooltip(format.darkRed("Only pumps Enriched Lava."));
recipes.remove(<advancedrocketry:blockpump>);
recipes.addShaped("it3_advancedrocketry_blockpump", <advancedrocketry:blockpump>, [
	[<ore:gearSteel>, <advancedrocketry:misc>, <ore:gearSteel>], 
	[<ore:circuitAdvanced>, <meta_tile_entity:hull.ev>, <ore:circuitAdvanced>], 
	[<ore:plateStainlessSteel>, <ore:rotorSteel>, <ore:plateStainlessSteel>]]);

// Essentia Centrifuge
recipes.remove(<advancedrocketry:centrifuge>);
recipes.addShaped("it3_advancedrocketry_centrifuge", <advancedrocketry:centrifuge>, [
	[<ore:stickStainlessSteel>, <advancedrocketry:misc>, <ore:stickStainlessSteel>], 
	[<ore:circuitExtreme>, <meta_tile_entity:hull.ev>, <ore:circuitExtreme>], 
	[<ore:plateStainlessSteel>, <ore:rotorSteel>, <ore:plateStainlessSteel>]]);

// Orbital Laser Drill
recipes.remove(<advancedrocketry:spacelaser>);
recipes.addShaped("it3_advancedrocketry_spacelaser", <advancedrocketry:spacelaser>, [
	[<ore:circuitElite>, <advancedrocketry:ic:1>, <ore:circuitElite>], 
	[<ore:batteryUltimate>, <metaitem:emitter.ev>, <ore:gemExquisiteDiamond>], 
	[<metaitem:electric.motor.ev>, <meta_tile_entity:hull.ev>, <ore:gearTitanium>]]);

// Liquid Fueled Engine
recipes.remove(<advancedrocketry:rocketmotor>);
assembler.recipeBuilder()
  .inputs(<ore:plateTitanium> * 5, <meta_tile_entity:titanium_tank>)
  .outputs(<advancedrocketry:rocketmotor>)
  .duration(1200)
  .EUt(512)
  .buildAndRegister();

// Advanced Engine
recipes.remove(<advancedrocketry:advrocketmotor>);
assembler.recipeBuilder()
  .inputs(<ore:plateTitaniumAluminide> * 5, <meta_tile_entity:titanium_tank>)
  .outputs(<advancedrocketry:advrocketmotor>)
  .duration(1200)
  .EUt(2048)
  .buildAndRegister();

// Guidance Computer Hatch
recipes.remove(<advancedrocketry:loader:6>);
recipes.addShaped("it3_advancedrocketry_guidancecomputeraccesshatch", <advancedrocketry:loader:6>, [
	[null, <ore:circuitAdvanced>, null], 
	[<ore:plateStainlessSteel>, <meta_tile_entity:hull.ev>, <ore:plateStainlessSteel>], 
	[null, <ore:circuitAdvanced>, null]]);

// Control Circuit Board (no longer used by IT3)
recipes.remove(<advancedrocketry:ic:3>);

// Item IO Circuit Board (no longer used by IT3)
recipes.remove(<advancedrocketry:ic:4>);

// Liquid IO Circuit Board (no longer used by IT3)
recipes.remove(<advancedrocketry:ic:5>);
