import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

var hammer = <ore:craftingToolHammer>;
var wrench = <ore:craftingToolWrench>;

//GT Machines
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");


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
var itemductOpaque =<thermaldynamics:duct_32:1>;
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

//Vacuum und Dense Itemducts
for i in 0 to 5
{
	recipes.addShapeless(<thermaldynamics:duct_32>.definition.makeStack(i).withTag({DenseType: 1 as byte}) * 1, [<thermaldynamics:duct_32>.definition.makeStack(i), <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]);
	recipes.addShapeless(<thermaldynamics:duct_32>.definition.makeStack(i).withTag({DenseType: 2 as byte}) * 1, [<thermaldynamics:duct_32>.definition.makeStack(i), <ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>]);
}

// ItemDuct
recipes.remove(itemduct);
recipes.addShaped("infitech_itemduct", itemduct * 3, [
  [null,<ore:plateGlass>,null],
  [<ore:pipeSmallSteel>,<minecraft:quartz>,<ore:pipeSmallSteel>],
  [null,<ore:plateGlass>,null]]);
  
// ItemDuct Opaque
recipes.remove(itemductOpaque);
recipes.addShaped("infitech_opaqueduct", itemductOpaque * 3, [
  [null,<ore:plateGlass>,null],
  [<ore:pipeSmallSteel>,<ore:dustStone>,<ore:pipeSmallSteel>],
  [null,<ore:plateGlass>,null]]);
  
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

/*
// Signalum-Plated Itemduct
recipes.remove(itemductSignalum);
assembler.recipeBuilder()
	.inputs(itemduct * 3, <ore:wireGtSingleElectrum> * 2)
	.fluidInputs(<liquid:signalum> * 144)
	.outputs(itemductSignalum * 3)
	.duration(300)
	.EUt(24)
	.buildAndRegister();
  
// Opaque Signalum-Plated Itemduct
recipes.remove(itemductSignalumOpaque);
assembler.recipeBuilder()
	.inputs(itemductOpaque * 3, <ore:wireGtSingleElectrum> * 2)
	.fluidInputs(<liquid:signalum> * 144)
	.outputs(itemductSignalumOpaque * 3)
	.duration(300)
	.EUt(24)
	.buildAndRegister();

// Signalum Plated Impulse Itemduct
recipes.remove(itemductSignalumImpulse);
fluid_canner.recipeBuilder()
	.inputs(itemductSignalum)
	.fluidInputs(<liquid:glowstone> * 144)
	.outputs(itemductSignalumImpulse)
	.duration(340)
	.EUt(24)
	.buildAndRegister();  

// Signalum Plated Impulse Itemduct Opaque
recipes.remove(itemductSignalumImpulseOpaque);
fluid_canner.recipeBuilder()
	.inputs(itemductSignalumOpaque)
	.fluidInputs(<liquid:glowstone> * 144)
	.outputs(itemductSignalumImpulseOpaque)
	.duration(340)
	.EUt(24)
	.buildAndRegister();    

*/

// Fluiduct
recipes.remove(fluiduct);
recipes.addShaped("infitech_fluiduct", fluiduct * 3, [
  [<ore:dustGlass>,<minecraft:quartz>,<ore:dustGlass>],
  [<ore:pipeSmallBronze>,<minecraft:quartz>,<ore:pipeSmallBronze>],
  [<ore:dustGlass>,<minecraft:quartz>,<ore:dustGlass>]]);

// Opaque Fluiduct
recipes.remove(fluiductOpaque);
recipes.addShaped("infitech_opaque_fluiduct", fluiductOpaque * 3, [
  [<ore:dustGlass>,<ore:dustStone>,<ore:dustGlass>],
  [<ore:pipeSmallBronze>,<minecraft:quartz>,<ore:pipeSmallBronze>],
  [<ore:dustGlass>,<ore:dustStone>,<ore:dustGlass>]]);


// Hardened Fluiduct
recipes.remove(fluiductHardened);
recipes.addShaped("infitech_hardened_fluiduct", fluiductHardened * 3, [
  [<ore:dustGlass>,<minecraft:quartz>,<ore:dustGlass>],
  [<ore:pipeSmallStainlessSteel>,<minecraft:quartz>,<ore:pipeSmallStainlessSteel>],
  [<ore:dustGlass>,<minecraft:quartz>,<ore:dustGlass>]]);

// Opaque Hardened Fluiduct
recipes.remove(fluiductHardenedOpaque);
recipes.addShaped("infitech_hardened_opaque_fluiduct", fluiductHardenedOpaque * 3, [
  [<ore:dustGlass>,<ore:dustStone>,<ore:dustGlass>],
  [<ore:pipeSmallStainlessSteel>,<minecraft:quartz>,<ore:pipeSmallStainlessSteel>],
  [<ore:dustGlass>,<ore:dustStone>,<ore:dustGlass>]]);
 
/* 
// Signalum-Plated Fluiduct
recipes.remove(fluiductSignalumPlated);
assembler.recipeBuilder()
	.inputs(fluiductHardened * 3, <ore:wireGtSingleElectrum> * 2)
	.fluidInputs(<liquid:signalum> * 144)
	.outputs(fluiductSignalumPlated * 3)
	.duration(300)
	.EUt(24)
	.buildAndRegister();
  
// Opaque Signalum-Plated Fluiduct
recipes.remove(fluiductSignalumPlatedOpaque);
assembler.recipeBuilder()
	.inputs(fluiductHardenedOpaque * 3, <ore:wireGtSingleElectrum> * 2)
	.fluidInputs(<liquid:signalum> * 144)
	.outputs(fluiductSignalumPlatedOpaque * 3)
	.duration(300)
	.EUt(24)
	.buildAndRegister();

*/

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
recipes.addShapeless(coinIridium, [coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum, coinPlatinum]);
recipes.addShapeless(coinPlatinum, [coinGold, coinGold, coinGold, coinGold, coinGold, coinGold, coinGold, coinGold]);
recipes.addShapeless(coinGold, [coinSilver, coinSilver, coinSilver, coinSilver, coinSilver, coinSilver, coinSilver, coinSilver]);
recipes.addShapeless(coinSilver, [coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan, coinConstantan]);
recipes.addShapeless(coinConstantan, [coinIron, coinIron, coinIron, coinIron, coinIron, coinIron, coinIron, coinIron]);
recipes.addShapeless(coinIron, [coinCopper, coinCopper, coinCopper, coinCopper, coinCopper, coinCopper, coinCopper, coinCopper]);

recipes.addShapeless(coinPlatinum * 8, [coinIridium]);
recipes.addShapeless(coinGold * 8, [coinPlatinum]);
recipes.addShapeless(coinSilver * 8, [coinGold]);
recipes.addShapeless(coinConstantan * 8, [coinSilver]);
recipes.addShapeless(coinIron * 8, [coinConstantan]);
recipes.addShapeless(coinCopper * 8, [coinIron]);

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

//Gunpowder
recipes.removeByRecipeName("thermalfoundation:gunpowder");
recipes.removeByRecipeName("thermalfoundation:gunpowder_1");

//Pyrotheum
var pyrotheum = <thermalfoundation:material:1024>;
var petrotheum = <thermalfoundation:material:1027>;

recipes.remove(petrotheum);

var pyroArray = [
<ore:ingotGold>,
<ore:ingotIron>,
<ore:ingotCopper>,
<ore:ingotLead>,
<ore:ingotNickel>,
<ore:ingotPlatinum>,
<ore:ingotSilver>,
<ore:ingotTin>,
<ore:ingotAluminum>,
<ore:ingotIridium>,
<ore:ingotMithril>,
<ore:ingotThorium>,
<ore:ingotUranium>,
<ore:ingotBoron>,
<ore:ingotLithium>,
<ore:ingotMagnesium>,
<ore:ingotTitanium>,
<ore:ingotPalladium>,
<ore:ingotNeodymium>,
<ore:ingotNaquadahEnriched>,
<ore:ingotBismuth>,
<ore:ingotUranium235>,
<ore:ingotOsmium>,
<ore:ingotBeryllium>,
<ore:ingotCobalt>,
<ore:ingotNiobium>,
<ore:ingotGraphite>,
<ore:ingotAluminium>,
<ore:ingotMolybdenum>,
<ore:ingotZinc>,
<ore:ingotNaquadah>] as IIngredient[];

for i in pyroArray {
	recipes.remove(i, pyrotheum);
}

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



