import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;


//GT Machines
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val mixer as RecipeMap = RecipeMap.getByName("mixer");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");

// These are covered by GT meta tools
recipes.remove(<thermalfoundation:tool.pickaxe_copper>);
recipes.remove(<thermalfoundation:tool.pickaxe_tin>);
recipes.remove(<thermalfoundation:tool.pickaxe_silver>);
recipes.remove(<thermalfoundation:tool.pickaxe_lead>);
recipes.remove(<thermalfoundation:tool.pickaxe_aluminum>);
recipes.remove(<thermalfoundation:tool.pickaxe_nickel>);
recipes.remove(<thermalfoundation:tool.pickaxe_platinum>);
recipes.remove(<thermalfoundation:tool.pickaxe_steel>);
recipes.remove(<thermalfoundation:tool.pickaxe_electrum>);
recipes.remove(<thermalfoundation:tool.pickaxe_invar>);
recipes.remove(<thermalfoundation:tool.pickaxe_bronze>);
recipes.remove(<thermalfoundation:tool.pickaxe_constantan>);

recipes.remove(<thermalfoundation:tool.axe_copper>);
recipes.remove(<thermalfoundation:tool.axe_tin>);
recipes.remove(<thermalfoundation:tool.axe_silver>);
recipes.remove(<thermalfoundation:tool.axe_lead>);
recipes.remove(<thermalfoundation:tool.axe_aluminum>);
recipes.remove(<thermalfoundation:tool.axe_nickel>);
recipes.remove(<thermalfoundation:tool.axe_platinum>);
recipes.remove(<thermalfoundation:tool.axe_steel>);
recipes.remove(<thermalfoundation:tool.axe_electrum>);
recipes.remove(<thermalfoundation:tool.axe_invar>);
recipes.remove(<thermalfoundation:tool.axe_bronze>);
recipes.remove(<thermalfoundation:tool.axe_constantan>);

recipes.remove(<thermalfoundation:tool.shovel_copper>);
recipes.remove(<thermalfoundation:tool.shovel_tin>);
recipes.remove(<thermalfoundation:tool.shovel_silver>);
recipes.remove(<thermalfoundation:tool.shovel_lead>);
recipes.remove(<thermalfoundation:tool.shovel_aluminum>);
recipes.remove(<thermalfoundation:tool.shovel_nickel>);
recipes.remove(<thermalfoundation:tool.shovel_platinum>);
recipes.remove(<thermalfoundation:tool.shovel_steel>);
recipes.remove(<thermalfoundation:tool.shovel_electrum>);
recipes.remove(<thermalfoundation:tool.shovel_invar>);
recipes.remove(<thermalfoundation:tool.shovel_bronze>);
recipes.remove(<thermalfoundation:tool.shovel_constantan>);

recipes.remove(<thermalfoundation:tool.sword_copper>);
recipes.remove(<thermalfoundation:tool.sword_tin>);
recipes.remove(<thermalfoundation:tool.sword_silver>);
recipes.remove(<thermalfoundation:tool.sword_lead>);
recipes.remove(<thermalfoundation:tool.sword_aluminum>);
recipes.remove(<thermalfoundation:tool.sword_nickel>);
recipes.remove(<thermalfoundation:tool.sword_platinum>);
recipes.remove(<thermalfoundation:tool.sword_steel>);
recipes.remove(<thermalfoundation:tool.sword_electrum>);
recipes.remove(<thermalfoundation:tool.sword_invar>);
recipes.remove(<thermalfoundation:tool.sword_bronze>);
recipes.remove(<thermalfoundation:tool.sword_constantan>);

recipes.remove(<thermalfoundation:tool.hoe_copper>);
recipes.remove(<thermalfoundation:tool.hoe_tin>);
recipes.remove(<thermalfoundation:tool.hoe_silver>);
recipes.remove(<thermalfoundation:tool.hoe_lead>);
recipes.remove(<thermalfoundation:tool.hoe_aluminum>);
recipes.remove(<thermalfoundation:tool.hoe_nickel>);
recipes.remove(<thermalfoundation:tool.hoe_platinum>);
recipes.remove(<thermalfoundation:tool.hoe_steel>);
recipes.remove(<thermalfoundation:tool.hoe_electrum>);
recipes.remove(<thermalfoundation:tool.hoe_invar>);
recipes.remove(<thermalfoundation:tool.hoe_bronze>);
recipes.remove(<thermalfoundation:tool.hoe_constantan>);

// Removing gears that have GT counterpart

var meta = [24, 25, 256, 257, 258, 259,260,261,262,263,264,288,289,290,291,292,293,294,295] as int[];

for id in meta {
	recipes.remove(<thermalfoundation:material>.definition.makeStack(id));
}

// Removing plates that have GT couterpart
recipes.remove(<thermalfoundation:material:32>);
recipes.remove(<thermalfoundation:material:33>);
recipes.remove(<thermalfoundation:material:320>);
recipes.remove(<thermalfoundation:material:321>);
recipes.remove(<thermalfoundation:material:322>);
recipes.remove(<thermalfoundation:material:323>);
recipes.remove(<thermalfoundation:material:324>);
recipes.remove(<thermalfoundation:material:325>);
recipes.remove(<thermalfoundation:material:326>);
recipes.remove(<thermalfoundation:material:327>);


// GT Style block crafting

var blockCopper = <thermalfoundation:storage>;
var blockTin = <thermalfoundation:storage:1>;
var blockSilver = <thermalfoundation:storage:2>;
var blockLead = <thermalfoundation:storage:3>;
var blockAluminium = <thermalfoundation:storage:4>;
var blockNickel = <thermalfoundation:storage:5>;
var blockPlatinum = <thermalfoundation:storage:6>;
var blockIridium = <thermalfoundation:storage:7>;
var blockMithril = <thermalfoundation:storage:8>;
var blockSteel = <thermalfoundation:storage_alloy>;
var blockElectrum = <thermalfoundation:storage_alloy:1>;
var blockInvar = <thermalfoundation:storage_alloy:2>;
var blockBronze = <thermalfoundation:storage_alloy:3>;
var blockConstantan = <thermalfoundation:storage_alloy:4>;
var blockSignalum = <thermalfoundation:storage_alloy:5>;
var blockLumium = <thermalfoundation:storage_alloy:6>;
var blockEnderium = <thermalfoundation:storage_alloy:7>;

recipes.remove(blockCopper);
recipes.remove(blockTin);
recipes.remove(blockSilver);
recipes.remove(blockLead);
recipes.remove(blockAluminium);
recipes.remove(blockNickel);
recipes.remove(blockPlatinum);
recipes.remove(blockIridium);
recipes.remove(blockMithril);
recipes.remove(blockSteel);
recipes.remove(blockElectrum);
recipes.remove(blockInvar);
recipes.remove(blockBronze);
recipes.remove(blockConstantan);
recipes.remove(blockSignalum);
recipes.remove(blockLumium);
recipes.remove(blockEnderium);

compressor.recipeBuilder()
	.inputs(<ore:ingotMithril> * 9)
	.outputs(blockMithril)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotSignalum> * 9)
	.outputs(blockSignalum)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotLumium> * 9)
	.outputs(blockLumium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotEnderium> * 9)
	.outputs(blockEnderium)
	.duration(400).EUt(2)
	.buildAndRegister();


  
  
var itemduct = <thermaldynamics:duct_32>;
var itemductOpaque = <thermaldynamics:duct_32:1>;
var itemductImpulse = <thermaldynamics:duct_32:2>;
var itemductImpulseOpaque = <thermaldynamics:duct_32:3>;
var itemductSignalum = <thermaldynamics:duct_32:4>;
var itemductSignalumOpaque = <thermaldynamics:duct_32:5>;
var itemductSignalumImpulse = <thermaldynamics:duct_32:6>;
var itemductSignalumImpulseOpaque = <thermaldynamics:duct_32:7>;

var fluiduct = <thermaldynamics:duct_16>;
var fluiductOpaque = <thermaldynamics:duct_16:1>;
var fluiductHardened = <thermaldynamics:duct_16:2>;
var fluiductHardenedOpaque = <thermaldynamics:duct_16:3>;
var fluiductSignalumPlated = <thermaldynamics:duct_16:4>;
var fluiductSignalumPlatedOpaque = <thermaldynamics:duct_16:5>;
var fluiductSuperLaminar = <thermaldynamics:duct_16:6>;
var fluiductSuperLaminarOpaque = <thermaldynamics:duct_16:7>;

var fluxductLeadstone = <thermaldynamics:duct_0>;
var fluxductHardened = <thermaldynamics:duct_0:1>;
var fluxductRedstoneEnergy = <thermaldynamics:duct_0:2>;
var fluxductSignalum = <thermaldynamics:duct_0:3>;
var fluxductResonant = <thermaldynamics:duct_0:4>;
var fluxductCryoStabilized = <thermaldynamics:duct_0:5>;

var fluxductRedstoneEnergyEmpty = <thermaldynamics:duct_0:6>;
var fluxductSignalumEmpty = <thermaldynamics:duct_0:7>;
var fluxductResonantEmpty = <thermaldynamics:duct_0:8>;
var fluxductCryoStabilizedEmpty = <thermaldynamics:duct_0:9>;
var pipeSmallSteel = <ore:pipeSmallSteel>;
var pipeSmallBronze = <ore:pipeSmallBronze>;
var pipeSmallStainlessSteel = <ore:pipeSmallStainlessSteel>;

//Vacuum und Dense Itemducts
for i in 0 to 5
{
assembler.recipeBuilder()
	.inputs(<thermaldynamics:duct_32>.definition.makeStack(i))
	.fluidInputs(<liquid:lead>*48)
	.outputs(<thermaldynamics:duct_32>.definition.makeStack(i).withTag({DenseType: 1 as byte}) * 1)
	.duration(120)
	.EUt(24)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.inputs(<thermaldynamics:duct_32>.definition.makeStack(i))
	.fluidInputs(<liquid:silver>*48)
	.outputs(<thermaldynamics:duct_32>.definition.makeStack(i).withTag({DenseType: 2 as byte}) * 1)
	.duration(120)
	.EUt(24)
	.buildAndRegister();	
}


// ItemDuct
recipes.remove(itemduct);
assembler.recipeBuilder().inputs(pipeSmallSteel * 1, <ore:plateGlass> * 2, <minecraft:quartz> * 2).fluidInputs(<liquid:redstone> * 36).outputs(itemduct * 2).duration(240).EUt(15).buildAndRegister();
  
// ItemDuct Opaque
recipes.remove(itemductOpaque);
assembler.recipeBuilder().inputs(pipeSmallSteel * 1, <ore:plateGlass> * 2, <ore:dustStone> * 2).fluidInputs(<liquid:redstone> * 36).outputs(itemductOpaque * 2).duration(240).EUt(15).buildAndRegister();
  
// Impulse Itemduct
recipes.remove(itemductImpulse);
fluid_canner.recipeBuilder()
	.inputs(itemduct)
	.fluidInputs(<liquid:glowstone> * 144)
	.outputs(itemductImpulse)
	.duration(260)
	.EUt(24)
	.buildAndRegister();

// Impulse Itemduct Opaque
recipes.remove(itemductImpulseOpaque);
fluid_canner.recipeBuilder()
	.inputs(itemductOpaque)
	.fluidInputs(<liquid:glowstone> * 144)
	.outputs(itemductImpulseOpaque)
	.duration(260)
	.EUt(24)
	.buildAndRegister();  

// Fluiduct
recipes.remove(fluiduct);
assembler.recipeBuilder().inputs(pipeSmallBronze * 2, <ore:dustGlass> * 2, <minecraft:quartz> * 2).fluidInputs(<liquid:redstone> * 36).outputs(fluiduct * 2).duration(240).EUt(15).buildAndRegister();

// Opaque Fluiduct
recipes.remove(fluiductOpaque);
assembler.recipeBuilder().inputs(pipeSmallBronze * 2, <ore:dustGlass> * 2, <ore:dustStone> * 2).fluidInputs(<liquid:redstone> * 36).outputs(fluiductOpaque * 2).duration(240).EUt(15).buildAndRegister();
 

// Hardened Fluiduct
recipes.remove(fluiductHardened);
assembler.recipeBuilder().inputs(pipeSmallStainlessSteel * 2, <ore:dustGlass> * 2, <minecraft:quartz> * 2).fluidInputs(<liquid:redstone> * 36).outputs(fluiductHardened * 2).duration(240).EUt(15).buildAndRegister();
 

// Opaque Hardened Fluiduct
recipes.remove(fluiductHardenedOpaque);
assembler.recipeBuilder().inputs(pipeSmallStainlessSteel * 2, <ore:dustGlass> * 2, <ore:dustStone> * 2).fluidInputs(<liquid:redstone> * 36).outputs(fluiductHardenedOpaque * 2).duration(240).EUt(15).buildAndRegister();


// Super-Laminar Fluiduct
recipes.remove(fluiductSuperLaminar);
assembler.recipeBuilder()
	.inputs(<ore:pipeSmallTungstenSteel> * 2, <ore:dustGlass> * 4, <minecraft:quartz> * 3)
	.fluidInputs(<liquid:enderium> * 144)
	.outputs(fluiductSuperLaminar * 3)
	.duration(400)
	.EUt(24)
	.buildAndRegister();

// Opaque Super-Laminar Fluiduct
recipes.remove(fluiductSuperLaminarOpaque);
assembler.recipeBuilder()
	.inputs(<ore:pipeSmallTungstenSteel> * 2, <ore:dustGlass> * 4, <ore:dustStone> * 3)
	.fluidInputs(<liquid:enderium> * 144)
	.outputs(fluiductSuperLaminarOpaque * 3)
	.duration(400)
	.EUt(24)
	.buildAndRegister();

//Remove Fluxduct
/* reinstate fluxducts
recipes.remove(fluxductLeadstone);
recipes.remove(fluxductHardened);
recipes.remove(fluxductRedstoneEnergy);
recipes.remove(fluxductSignalum);
recipes.remove(fluxductResonant);
recipes.remove(fluxductCryoStabilized);

recipes.remove(fluxductRedstoneEnergyEmpty);
recipes.remove(fluxductSignalumEmpty);
recipes.remove(fluxductResonantEmpty);
recipes.remove(fluxductCryoStabilizedEmpty);

recipes.remove(itemductSignalum);
recipes.remove(itemductSignalumOpaque);
recipes.remove(itemductSignalumImpulse);
recipes.remove(itemductSignalumImpulseOpaque);
recipes.remove(fluiductSignalumPlated);
recipes.remove(fluiductSignalumPlatedOpaque);
*/

var baseduct = <thermaldynamics:duct_64:3>;
var normalviaduct = <thermaldynamics:duct_64>;
var LRViaduct = <thermaldynamics:duct_64:1>;
var LRVLinking = <thermaldynamics:duct_64:2>;

// Viaduct base
recipes.remove(baseduct);
assembler.recipeBuilder()
	.inputs(<ore:stickLongStainlessSteel> * 2, <ore:ringBronze> * 4)
	.fluidInputs(<liquid:glass> * 576)
	.outputs(baseduct * 4)
	.duration(80)
	.EUt(130)
	.buildAndRegister();

// Normal viaduct
recipes.remove(normalviaduct);
fluid_canner.recipeBuilder()
	.inputs(baseduct * 1)
	.fluidInputs(<liquid:helium> * 200)
	.outputs(normalviaduct * 1)
	.duration(100)
	.EUt(160)
	.buildAndRegister();

//Long range viaduct
recipes.remove(<thermaldynamics:duct_64:1>);
assembler.recipeBuilder()
	.inputs(normalviaduct * 1, <ore:plateLead> * 4)
	.fluidInputs(<liquid:borosilicate_glass> * 144)
	.outputs(LRViaduct * 1)
	.duration(40)
	.EUt(130)
	.buildAndRegister();

//Long range linking viaduct
recipes.remove(<thermaldynamics:duct_64:2>);
assembler.recipeBuilder()
	.inputs(normalviaduct * 1, <ore:gearEnderium> * 2)
	.outputs(LRVLinking * 1)
	.duration(250)
	.EUt(180)
	.buildAndRegister();

//Structuralduct
recipes.remove(<thermaldynamics:duct_48>);
var ductStructure = <thermaldynamics:duct_48>;

assembler.recipeBuilder()
	.inputs(<ore:frameGtIron> * 1, <ore:pipeSmallCopper> * 1, <ore:foilLead> * 2)
	.fluidInputs(<liquid:concrete> * 144)
	.outputs(ductStructure * 6)
	.duration(120)
	.EUt(16)
	.buildAndRegister();

var servo = <thermaldynamics:servo>;
var hardened_servo = <thermaldynamics:servo:1>;
var reinforced_servo = <thermaldynamics:servo:2>;
var signalum_servo = <thermaldynamics:servo:3>;
var resonant_servo = <thermaldynamics:servo:4>;

var pump_lv = <gregtech:meta_item_1:32610>;
var pump_mv = <gregtech:meta_item_1:32611>;
var pump_hv = <gregtech:meta_item_1:32612>;
var pump_ev = <gregtech:meta_item_1:32613>;
var pump_iv = <gregtech:meta_item_1:32614>;

// Servo
recipes.remove(servo);
recipes.addShaped("infitech_servo", servo, [
  [<minecraft:iron_nugget>, <minecraft:redstone>, <minecraft:iron_nugget>], 
  [<minecraft:iron_ingot>, pump_lv, <minecraft:iron_ingot>]]);
  
// Hardened Servo
recipes.remove(hardened_servo);
recipes.addShaped("infitech_hardened_servo", hardened_servo, [
  [<ore:nuggetInvar>, <minecraft:redstone>, <ore:nuggetInvar>], 
  [<ore:ingotInvar>, pump_mv, <ore:ingotInvar>]]);

// Reinforced Servo
recipes.remove(reinforced_servo);
recipes.addShaped("infitech_reinforced_servo", reinforced_servo, [
  [<ore:nuggetElectrum>, <minecraft:redstone>, <ore:nuggetElectrum>], 
  [<ore:ingotElectrum>, pump_hv, <ore:ingotElectrum>]]);
  
// Signalum Servo.
recipes.remove(signalum_servo);
recipes.addShaped("infitech_signalum_servo", signalum_servo, [
  [<ore:nuggetSignalum>, <minecraft:redstone>, <ore:nuggetSignalum>], 
  [<ore:ingotSignalum>, pump_ev, <ore:ingotSignalum>]]);
  
// Enderium Servo
recipes.remove(resonant_servo);
recipes.addShaped("infitech_resonant_servo", resonant_servo, [
  [<ore:nuggetEnderium>, <minecraft:redstone>, <ore:nuggetEnderium>], 
  [<ore:ingotEnderium>, pump_iv, <ore:ingotEnderium>]]);

var retriever = <thermaldynamics:retriever>;
var hardened_retriever = <thermaldynamics:retriever:1>;
var reinforced_retriever = <thermaldynamics:retriever:2>;
var signalum_retriever = <thermaldynamics:retriever:3>;
var resonant_retriever = <thermaldynamics:retriever:4>;
  

// Retriever
recipes.remove(retriever);
recipes.addShaped("infitech_retriever", retriever, [
  [<minecraft:iron_nugget>, pump_lv, <minecraft:iron_nugget>], 
  [<minecraft:iron_ingot>, <minecraft:ender_eye:*>, <minecraft:iron_ingot>]]);

// Hardened Retriever
recipes.remove(hardened_retriever);
recipes.addShaped("infitech_hardened_retriever", hardened_retriever, [
  [<ore:nuggetInvar>, pump_mv, <ore:nuggetInvar>], 
  [<ore:ingotInvar>, <minecraft:ender_eye:*>, <ore:ingotInvar>]]);

// Reinforced Retriever
recipes.remove(reinforced_retriever);
recipes.addShaped("infitech_reinforced_retriever", reinforced_retriever, [
  [<ore:nuggetElectrum>, pump_hv, <ore:nuggetElectrum>], 
  [<ore:ingotElectrum>, <minecraft:ender_eye:*>, <ore:ingotElectrum>]]); 

// Signalum Retriever
recipes.remove(signalum_retriever);
recipes.addShaped("infitech_signalum_retriever", signalum_retriever, [
  [<ore:nuggetSignalum>, pump_ev, <ore:nuggetSignalum>], 
  [<ore:ingotSignalum>, <minecraft:ender_eye:*>, <ore:ingotSignalum>]]); 
  
// Resonant Retriever
recipes.remove(resonant_retriever);
recipes.addShaped("infitech_resonant_retriever", resonant_retriever, [
  [<ore:nuggetEnderium>, pump_iv, <ore:nuggetEnderium>], 
  [<ore:ingotEnderium>, <minecraft:ender_eye:*>, <ore:ingotEnderium>]]);  
  
var filter = <thermaldynamics:filter>;
var hardened_filter = <thermaldynamics:filter:1>;
var reinforced_filter = <thermaldynamics:filter:2>;
var signalum_filter = <thermaldynamics:filter:3>;
var resonant_filter = <thermaldynamics:filter:4>;

var itemFilter = <gregtech:meta_item_1:32729>;

// Filter
recipes.remove(filter);
recipes.addShaped("infitech_filter", filter, [
  [<minecraft:iron_nugget>, <minecraft:paper>, <minecraft:iron_nugget>], 
  [<minecraft:iron_ingot>, itemFilter, <minecraft:iron_ingot>]]);
  
// Hardened Filter
recipes.remove(hardened_filter);
recipes.addShaped("infitech_hardened_filter", hardened_filter, [
  [<ore:nuggetInvar>, <minecraft:paper>, <ore:nuggetInvar>], 
  [<ore:ingotInvar>, itemFilter, <ore:ingotInvar>]]);

// Reinforced Filter
recipes.remove(reinforced_filter);
recipes.addShaped("infitech_reinforced_filter", reinforced_filter, [
  [<ore:nuggetElectrum>, <minecraft:paper>, <ore:nuggetElectrum>], 
  [<ore:ingotElectrum>, itemFilter, <ore:ingotElectrum>]]);
  
// Signalum Filter
recipes.remove(signalum_filter);
recipes.addShaped("infitech_signalum_filter", signalum_filter, [
  [<ore:nuggetSignalum>, <minecraft:paper>, <ore:nuggetSignalum>], 
  [<ore:ingotSignalum>, itemFilter, <ore:ingotSignalum>]]);
  
// Enderium Filter
recipes.remove(resonant_filter);
recipes.addShaped("infitech_resonant_filter", resonant_filter	, [
  [<ore:nuggetEnderium>, <minecraft:paper>, <ore:nuggetEnderium>], 
  [<ore:ingotEnderium>, itemFilter, <ore:ingotEnderium>]]);

// COIN VARIABLES
var coinIridium = <thermalfoundation:coin:71>;
var coinPlatinum = <thermalfoundation:coin:70>;
var coinGold = <thermalfoundation:coin:1>;
var coinSilver = <thermalfoundation:coin:66>;
var coinConstantan = <thermalfoundation:coin:100>;
var coinIron = <thermalfoundation:coin>;
var coinCopper = <thermalfoundation:coin:64>;

// COIN TOOLTIPS
<ore:coinIridium>.addTooltip(format.green("1 Iridium = 262,144 Copper"));
<ore:coinPlatinum>.addTooltip(format.green("1 Platinum = 32,768 Copper"));
<ore:coinGold>.addTooltip(format.green("1 Gold = 4,096 Copper"));
<ore:coinSilver>.addTooltip(format.green("1 Silver = 512 Copper"));
<ore:coinConstantan>.addTooltip(format.green("1 Constantan = 64 Copper"));
<ore:coinIron>.addTooltip(format.green("1 Iron = 8 Copper"));
<ore:coinCopper>.addTooltip(format.green("1 Copper = 1 Copper"));

// COIN RECIPES
recipes.addShapeless("it3_tf_coin_0", coinIridium, [coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum]);
recipes.addShapeless("it3_tf_coin_1", coinPlatinum, [coinGold, coinGold, coinGold, coinGold, coinGold, coinGold, coinGold, coinGold]);
recipes.addShapeless("it3_tf_coin_2", coinGold, [coinSilver, coinSilver, coinSilver, coinSilver, coinSilver, coinSilver, coinSilver, coinSilver]);
recipes.addShapeless("it3_tf_coin_3", coinSilver, [coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan]);
recipes.addShapeless("it3_tf_coin_4", coinConstantan, [coinIron, coinIron, coinIron, coinIron, coinIron, coinIron, coinIron, coinIron]);
recipes.addShapeless("it3_tf_coin_5", coinIron, [coinCopper, coinCopper, coinCopper, coinCopper, coinCopper, coinCopper, coinCopper, coinCopper]);

recipes.addShapeless("it3_tf_coin_6", coinPlatinum * 8, [coinIridium]);
recipes.addShapeless("it3_tf_coin_7", coinGold * 8, [coinPlatinum]);
recipes.addShapeless("it3_tf_coin_8", coinSilver * 8, [coinGold]);
recipes.addShapeless("it3_tf_coin_9", coinConstantan * 8, [coinSilver]);
recipes.addShapeless("it3_tf_coin_10", coinIron * 8, [coinConstantan]);
recipes.addShapeless("it3_tf_coin_11", coinCopper * 8, [coinIron]);

var dustConstantan = <thermalfoundation:material:100>;
recipes.remove(dustConstantan);

// Hammers require steel rods
recipes.remove(<thermalfoundation:tool.hammer_wood>);
recipes.remove(<thermalfoundation:tool.hammer_stone>);
recipes.remove(<thermalfoundation:tool.hammer_iron>);
recipes.remove(<thermalfoundation:tool.hammer_gold>);
recipes.remove(<thermalfoundation:tool.hammer_diamond>);
recipes.remove(<thermalfoundation:tool.hammer_copper>);
recipes.remove(<thermalfoundation:tool.hammer_tin>);
recipes.remove(<thermalfoundation:tool.hammer_silver>);
recipes.remove(<thermalfoundation:tool.hammer_lead>);
recipes.remove(<thermalfoundation:tool.hammer_aluminum>);
recipes.remove(<thermalfoundation:tool.hammer_nickel>);
recipes.remove(<thermalfoundation:tool.hammer_platinum>);
recipes.remove(<thermalfoundation:tool.hammer_steel>);
recipes.remove(<thermalfoundation:tool.hammer_electrum>);
recipes.remove(<thermalfoundation:tool.hammer_invar>);
recipes.remove(<thermalfoundation:tool.hammer_bronze>);
recipes.remove(<thermalfoundation:tool.hammer_constantan>);

// TIER I Hammers
recipes.addShaped("thermalfoundation_tool_hammer_gold", <thermalfoundation:tool.hammer_gold>, [[<ore:plateGold>, <ore:stickWroughtIron>, <ore:plateGold>], [<ore:plateGold>, <ore:stickSteel>, <ore:plateGold>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_silver", <thermalfoundation:tool.hammer_silver>, [[<ore:plateSilver>, <ore:stickSteel>, <ore:plateSilver>], [<ore:plateSilver>, <ore:stickSteel>, <ore:plateSilver>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_tin", <thermalfoundation:tool.hammer_tin>, [[<ore:plateTin>, <ore:stickSteel>, <ore:plateTin>], [<ore:plateTin>, <ore:stickSteel>, <ore:plateTin>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_copper", <thermalfoundation:tool.hammer_copper>, [[<ore:plateCopper>, <ore:stickSteel>, <ore:plateCopper>], [<ore:plateCopper>, <ore:stickSteel>, <ore:plateCopper>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_lead", <thermalfoundation:tool.hammer_lead>, [[<ore:plateLead>, <ore:stickSteel>, <ore:plateLead>], [<ore:plateLead>, <ore:stickSteel>, <ore:plateLead>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_nickel", <thermalfoundation:tool.hammer_nickel>, [[<ore:plateNickel>, <ore:stickSteel>, <ore:plateNickel>], [<ore:plateNickel>, <ore:stickSteel>, <ore:plateNickel>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_iron", <thermalfoundation:tool.hammer_iron>, [[<ore:plateIron>, <ore:stickSteel>, <ore:plateIron>], [<ore:plateIron>, <ore:stickSteel>, <ore:plateIron>], [null, <ore:stickSteel>, null]]);

// TIER II Hammers
recipes.addShaped("thermalfoundation_tool_hammer_constantan", <thermalfoundation:tool.hammer_constantan>, [[<ore:plateConstantan>, <ore:stickStainlessSteel>, <ore:plateConstantan>], [<ore:plateConstantan>, <ore:stickStainlessSteel>, <ore:plateConstantan>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_bronze", <thermalfoundation:tool.hammer_bronze>, [[<ore:plateBronze>, <ore:stickStainlessSteel>, <ore:plateBronze>], [<ore:plateBronze>, <ore:stickStainlessSteel>, <ore:plateBronze>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_electrum", <thermalfoundation:tool.hammer_electrum>, [[<ore:plateElectrum>, <ore:stickStainlessSteel>, <ore:plateElectrum>], [<ore:plateElectrum>, <ore:stickStainlessSteel>, <ore:plateElectrum>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_invar", <thermalfoundation:tool.hammer_invar>, [[<ore:plateInvar>, <ore:stickStainlessSteel>, <ore:plateInvar>], [<ore:plateInvar>, <ore:stickStainlessSteel>, <ore:plateInvar>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_steel", <thermalfoundation:tool.hammer_steel>, [[<ore:plateSteel>, <ore:stickStainlessSteel>, <ore:plateSteel>], [<ore:plateSteel>, <ore:stickStainlessSteel>, <ore:plateSteel>], [null, <ore:stickStainlessSteel>, null]]);

// TIER III Hammers
recipes.addShaped("thermalfoundation_tool_hammer_diamond", <thermalfoundation:tool.hammer_diamond>, [[<ore:plateDiamond>, <ore:stickTungstenSteel>, <ore:plateDiamond>], [<ore:plateDiamond>, <ore:stickTungstenSteel>, <ore:plateDiamond>], [null, <ore:stickTungstenSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_platinum", <thermalfoundation:tool.hammer_platinum>, [[<ore:platePlatinum>, <ore:stickTungstenSteel>, <ore:platePlatinum>], [<ore:platePlatinum>, <ore:stickTungstenSteel>, <ore:platePlatinum>], [null, <ore:stickTungstenSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_aluminum", <thermalfoundation:tool.hammer_aluminum>, [[<ore:plateAluminum>, <ore:stickTungstenSteel>, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:stickTungstenSteel>, <ore:plateAluminum>], [null, <ore:stickTungstenSteel>, null]]);


// Excavators require steel rods
recipes.remove(<thermalfoundation:tool.excavator_wood>);
recipes.remove(<thermalfoundation:tool.excavator_stone>);
recipes.remove(<thermalfoundation:tool.excavator_iron>);
recipes.remove(<thermalfoundation:tool.excavator_gold>);
recipes.remove(<thermalfoundation:tool.excavator_diamond>);
recipes.remove(<thermalfoundation:tool.excavator_copper>);
recipes.remove(<thermalfoundation:tool.excavator_tin>);
recipes.remove(<thermalfoundation:tool.excavator_silver>);
recipes.remove(<thermalfoundation:tool.excavator_lead>);
recipes.remove(<thermalfoundation:tool.excavator_aluminum>);
recipes.remove(<thermalfoundation:tool.excavator_nickel>);
recipes.remove(<thermalfoundation:tool.excavator_platinum>);
recipes.remove(<thermalfoundation:tool.excavator_steel>);
recipes.remove(<thermalfoundation:tool.excavator_electrum>);
recipes.remove(<thermalfoundation:tool.excavator_invar>);
recipes.remove(<thermalfoundation:tool.excavator_bronze>);
recipes.remove(<thermalfoundation:tool.excavator_constantan>);

// TIER I excavators
recipes.addShaped("thermalfoundation_tool_excavator_gold", <thermalfoundation:tool.excavator_gold>, [[null, <ore:plateGold>, null], [<ore:plateGold>, <ore:stickSteel>, <ore:plateGold>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_silver", <thermalfoundation:tool.excavator_silver>, [[null, <ore:plateSilver>, null], [<ore:plateSilver>, <ore:stickSteel>, <ore:plateSilver>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_tin", <thermalfoundation:tool.excavator_tin>, [[null, <ore:plateTin>, null], [<ore:plateTin>, <ore:stickSteel>, <ore:plateTin>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_copper", <thermalfoundation:tool.excavator_copper>, [[null, <ore:plateCopper>, null], [<ore:plateCopper>, <ore:stickSteel>, <ore:plateCopper>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_lead", <thermalfoundation:tool.excavator_lead>, [[null, <ore:plateLead>, null], [<ore:plateLead>, <ore:stickSteel>, <ore:plateLead>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_nickel", <thermalfoundation:tool.excavator_nickel>, [[null, <ore:plateNickel>, null], [<ore:plateNickel>, <ore:stickSteel>, <ore:plateNickel>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_iron", <thermalfoundation:tool.excavator_iron>, [[null, <ore:plateIron>, null], [<ore:plateIron>, <ore:stickSteel>, <ore:plateIron>], [null, <ore:stickSteel>, null]]);


// TIER II excavators
recipes.addShaped("thermalfoundation_tool_excavator_constantan", <thermalfoundation:tool.excavator_constantan>, [[null, <ore:plateConstantan>, null], [<ore:plateConstantan>, <ore:stickStainlessSteel>, <ore:plateConstantan>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_bronze", <thermalfoundation:tool.excavator_bronze>, [[null, <ore:plateBronze>, null], [<ore:plateBronze>, <ore:stickStainlessSteel>, <ore:plateBronze>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_electrum", <thermalfoundation:tool.excavator_electrum>, [[null, <ore:plateElectrum>, null], [<ore:plateElectrum>, <ore:stickStainlessSteel>, <ore:plateElectrum>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_invar", <thermalfoundation:tool.excavator_invar>, [[null, <ore:plateInvar>, null], [<ore:plateInvar>, <ore:stickStainlessSteel>, <ore:plateInvar>], [null, <ore:stickStainlessSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_steel", <thermalfoundation:tool.excavator_steel>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <ore:stickStainlessSteel>, <ore:plateSteel>], [null, <ore:stickStainlessSteel>, null]]);


// TIER III excavators
recipes.addShaped("thermalfoundation_tool_excavator_diamond", <thermalfoundation:tool.excavator_diamond>, [[null, <ore:plateDiamond>, null], [<ore:plateDiamond>, <ore:stickTungstenSteel>, <ore:plateDiamond>], [null, <ore:stickTungstenSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_platinum", <thermalfoundation:tool.excavator_platinum>, [[null, <ore:platePlatinum>, null], [<ore:platePlatinum>, <ore:stickTungstenSteel>, <ore:platePlatinum>], [null, <ore:stickTungstenSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_excavator_aluminum", <thermalfoundation:tool.excavator_aluminum>, [[null, <ore:plateAluminum>, null], [<ore:plateAluminum>, <ore:stickTungstenSteel>, <ore:plateAluminum>], [null, <ore:stickTungstenSteel>, null]]);


//Gunpowder
recipes.removeByRecipeName("thermalfoundation:gunpowder");
recipes.removeByRecipeName("thermalfoundation:gunpowder_1");

//Pyrotheum
var petrotheum = <thermalfoundation:material:1027>;
recipes.remove(petrotheum);


// Remove Pyrotheum/Alumium recipes
recipes.removeShapeless(<gregtech:meta_item_1:10001>, [<ore:dustAluminium>, <ore:dustPyrotheum>]);
recipes.removeShapeless(<gregtech:meta_item_1:10001>, [<ore:oreAluminium>, <ore:dustPyrotheum>]);

// Remove Pyrotheum/Naquadah recipes
recipes.removeShapeless(<gregtech:meta_item_1:10307>, [<ore:dustNaquadah>, <ore:dustPyrotheum>]);
recipes.removeShapeless(<gregtech:meta_item_1:10307>, [<ore:oreNaquadah>, <ore:dustPyrotheum>]);

// Remove Pyrotheum/Osmium recipes
recipes.removeShapeless(<gregtech:meta_item_1:10047>, [<ore:dustOsmium>, <ore:dustPyrotheum>]);
recipes.removeShapeless(<gregtech:meta_item_1:10047>, [<ore:oreOsmium>, <ore:dustPyrotheum>]);



//Upgrade and Conversion Kits
var kit = [
<thermalfoundation:upgrade>,
<thermalfoundation:upgrade:1>,
<thermalfoundation:upgrade:2>,
<thermalfoundation:upgrade:3>,
<thermalfoundation:upgrade:33>,
<thermalfoundation:upgrade:34>,
<thermalfoundation:upgrade:35>,
<thermalfoundation:upgrade:256>] as IIngredient[];

for i in kit {
	mods.jei.JEI.removeAndHide(i);
}

//Hardened Glass
var glassHardened = <thermalfoundation:glass:3>;
recipes.remove(glassHardened);
alloy_smelter.recipeBuilder()
	.inputs(<ore:dustGlass> * 1, <ore:dustObsidian> * 4)
	.outputs(glassHardened * 2)
	.duration(100)
	.EUt(16)
	.buildAndRegister();
	
var glassOutput = [<thermalfoundation:glass:0>, <thermalfoundation:glass:1>, <thermalfoundation:glass:2>, <thermalfoundation:glass:4>, <thermalfoundation:glass:5>, <thermalfoundation:glass:6>, <thermalfoundation:glass:7>, <thermalfoundation:glass:8>,
<thermalfoundation:glass_alloy:0>, <thermalfoundation:glass_alloy:1>, <thermalfoundation:glass_alloy:2>, <thermalfoundation:glass_alloy:3>, <thermalfoundation:glass_alloy:4>, <thermalfoundation:glass_alloy:5>, <thermalfoundation:glass_alloy:6>, <thermalfoundation:glass_alloy:7>] as IItemStack[];

var dustInput = [<ore:dustCopper>, <ore:dustTin>, <ore:dustSilver>, <ore:dustAluminium>, <ore:dustNickel>, <ore:dustPlatinum>, <ore:dustIridium>, <ore:dustMithril>, <ore:dustSteel>, <ore:dustElectrum>, <ore:dustInvar>, <ore:dustBronze>, <ore:dustConstantan>, <ore:dustSignalum>, <ore:dustLumium>, <ore:dustEnderium>] as IIngredient[];

for i in glassOutput {
	recipes.remove(i);
}

for i, item in glassOutput {
	alloy_smelter.recipeBuilder()
	.inputs([glassHardened * 2, dustInput[i] * 1])
	.outputs([item*2])
	.duration(80)
	.EUt(16)
	.buildAndRegister();
}

// Shears
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
var craftingToolFileEmptyTag = <ore:craftingToolFile>.firstItem.withEmptyTag();

recipes.removeByRecipeName("thermalfoundation:tool.shears_copper");
recipes.addShaped("it3_shears_copper", <thermalfoundation:tool.shears_copper>, [  [craftingToolFileEmptyTag, <ore:plateCopper>, null], [<ore:plateCopper>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_tin");
recipes.addShaped("it3_shears_tin", <thermalfoundation:tool.shears_tin>, [  [craftingToolFileEmptyTag, <ore:plateTin>, null], [<ore:plateTin>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_silver");
recipes.addShaped("it3_shears_silver", <thermalfoundation:tool.shears_silver>, [  [craftingToolFileEmptyTag, <ore:plateSilver>, null], [<ore:plateSilver>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_lead");
recipes.addShaped("it3_shears_lead", <thermalfoundation:tool.shears_lead>, [  [craftingToolFileEmptyTag, <ore:plateLead>, null], [<ore:plateLead>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_aluminum");
recipes.addShaped("it3_shears_aluminum", <thermalfoundation:tool.shears_aluminum>, [  [craftingToolFileEmptyTag, <ore:plateAluminum>, null], [<ore:plateAluminum>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_nickel");
recipes.addShaped("it3_shears_nickel", <thermalfoundation:tool.shears_nickel>, [  [craftingToolFileEmptyTag, <ore:plateNickel>, null], [<ore:plateNickel>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_platinum");
recipes.addShaped("it3_shears_platinum", <thermalfoundation:tool.shears_platinum>, [  [craftingToolFileEmptyTag, <ore:platePlatinum>, null], [<ore:platePlatinum>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_steel");
recipes.addShaped("it3_shears_steel", <thermalfoundation:tool.shears_steel>, [  [craftingToolFileEmptyTag, <ore:plateSteel>, null], [<ore:plateSteel>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_electrum");
recipes.addShaped("it3_shears_electrum", <thermalfoundation:tool.shears_electrum>, [  [craftingToolFileEmptyTag, <ore:plateElectrum>, null], [<ore:plateElectrum>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_invar");
recipes.addShaped("it3_shears_invar", <thermalfoundation:tool.shears_invar>, [  [craftingToolFileEmptyTag, <ore:plateInvar>, null], [<ore:plateInvar>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_bronze");
recipes.addShaped("it3_shears_bronze", <thermalfoundation:tool.shears_bronze>, [  [craftingToolFileEmptyTag, <ore:plateBronze>, null], [<ore:plateBronze>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_constantan");
recipes.addShaped("it3_shears_constantan", <thermalfoundation:tool.shears_constantan>, [  [craftingToolFileEmptyTag, <ore:plateConstantan>, null], [<ore:plateConstantan>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);
recipes.removeByRecipeName("thermalfoundation:tool.shears_gold");
recipes.addShaped("it3_shears_gold", <thermalfoundation:tool.shears_gold>, [  [craftingToolFileEmptyTag, <ore:plateGold>, null], [<ore:plateGold>, craftingToolHardHammerEmptyTag, null], [null, null, null]]);

// Remove Phyto stuff
recipes.remove(<thermalfoundation:fertilizer:0>);
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.remove(<thermalfoundation:fertilizer:2>);

// Remove Aqua Chow stuff
recipes.remove(<thermalfoundation:bait:0>);
recipes.remove(<thermalfoundation:bait:1>);
recipes.remove(<thermalfoundation:bait:2>);

// Rich Slag
recipes.remove(<thermalfoundation:material:865>);

// Clay recipe from regular slag
var water_cell = <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "water", Amount: 1000}});
var steel_water_cell = <gregtech:meta_item_1:32405>.withTag({Fluid: {FluidName: "water", Amount: 1000}});
var tungstensteel_water_cell = <gregtech:meta_item_1:32406>.withTag({Fluid: {FluidName: "water", Amount: 1000}});

recipes.addShapeless("it3_tf_clay_0", <minecraft:clay_ball> * 4, [<ore:crystalSlag>, <ore:crystalSlag>, <minecraft:dirt>, water_cell]);
recipes.addShapeless("it3_tf_clay_1", <minecraft:clay_ball> * 4, [<ore:crystalSlag>, <ore:crystalSlag>, <minecraft:dirt>, steel_water_cell]);
recipes.addShapeless("it3_tf_clay_2", <minecraft:clay_ball> * 4, [<ore:crystalSlag>, <ore:crystalSlag>, <minecraft:dirt>, tungstensteel_water_cell]);

// Mixer recipe for regular slag
mixer.recipeBuilder()
	.inputs(<ore:dirt> * 1, <ore:crystalSlag> * 2)
  .fluidInputs([<liquid:water> * 1000])
	.outputs(<minecraft:clay_ball> * 4)
	.duration(45)
	.EUt(2)
	.buildAndRegister();

// Slag -> Dirt.  Archengius really wants this.  I don't care enough to refuse it.
var pulpedBiomass = <thermalfoundation:material:816>;
recipes.removeByRecipeName("thermalfoundation:block_dirt");
recipes.addShapeless("it3_thermalfoundation_block_dirt", <minecraft:dirt> * 3, [pulpedBiomass, pulpedBiomass, <ore:crystalSlag>, <ore:crystalSlag>]);

// Resonant Ender Gregified
fluid_extractor.recipeBuilder()
	.inputs(<ore:enderpearl>| <ore:dustEnderPearl>)
	.fluidOutputs([<liquid:ender> * 250])
	.duration(420)
	.EUt(120)
	.buildAndRegister();
	
//Enderium Blend furnace recipe removal
recipes.remove(<thermalfoundation:material:103>);
furnace.remove(<thermalfoundation:material:167>, <thermalfoundation:material:103>);