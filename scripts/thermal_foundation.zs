import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

var hammer = <ore:craftingToolHammer>;
var wrench = <ore:craftingToolWrench>;


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
val compressor as RecipeMap = RecipeMap.getByName("compressor");

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


  
  
var itemDuct = <thermaldynamics:duct_32>;
var itemDuctOpaque =<thermaldynamics:duct_32:1>;
var itemDuctImpulse = <thermaldynamics:duct_32:2>;
var itemDuctImpulseOpaque = <thermaldynamics:duct_32:3>;
var itemDuctSignalum = <thermaldynamics:duct_32:4>;
var itemDuctSignalumOpaque = <thermaldynamics:duct_32:5>;
var itemDuctSignalumImpulse = <thermaldynamics:duct_32:6>;
var itemDuctSignalumImpulseOpaque = <thermaldynamics:duct_32:7>;

var fluiduct = <thermaldynamics:duct_16>;
var fluiductOpaque = <thermaldynamics:duct_16:1>;
var fluiductHardened = <thermaldynamics:duct_16:2>;
var fluiductHardenedOpaque = <thermaldynamics:duct_16:3>;

// ItemDuct
recipes.remove(itemDuct);
recipes.addShaped("infitech_itemduct", itemDuct * 3, [
  [<ore:ringAluminium>, <ore:blockGlassHardened>, <ore:ringAluminium>],
  [null, wrench, null]]);
  
// ItemDuct from Opaque Itemduct
recipes.addShapeless("infitech_itemduct_from_opaque", itemDuct * 6, [itemDuctOpaque, itemDuctOpaque, itemDuctOpaque, itemDuctOpaque, itemDuctOpaque, itemDuctOpaque, <ore:blockGlassHardened>]);
  
// ItemDuct Opaque 
recipes.addShaped("infitech_opaqueduct", itemDuctOpaque * 3, [
  [<ore:ringAluminium>, <ore:plateLead>, <ore:ringAluminium>],
  [null, wrench, null]]);
  
// ItemDuct Opaque from Itemduct
recipes.addShapeless("infitech_opaqueduct_from_duct", itemDuctOpaque * 6, [itemDuct, itemDuct, itemDuct, itemDuct, itemDuct, itemDuct, <ore:plateLead>]);

// Impulse Itemduct
recipes.remove(itemDuctImpulse);
val fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner");
fluid_canner.recipeBuilder()
	.inputs(itemDuct)
  .fluidInputs(<liquid:glowstone> * 100)
	.outputs(itemDuctImpulse)
	.duration(260)
  .EUt(24)
	.buildAndRegister();

// Impulse Itemduct Opaque
recipes.remove(itemDuctImpulse);
fluid_canner.recipeBuilder()
	.inputs(itemDuctOpaque)
  .fluidInputs(<liquid:glowstone> * 100)
	.outputs(itemDuctImpulseOpaque)
	.duration(260)
  .EUt(24)
	.buildAndRegister();  

// Signalum Plated Impulse Itemduct
fluid_canner.recipeBuilder()
	.inputs(itemDuctSignalum)
  .fluidInputs(<liquid:glowstone> * 100)
	.outputs(itemDuctSignalumImpulse)
	.duration(320)
  .EUt(24)
	.buildAndRegister();  

// Signalum Plated Impulse Itemduct Opaque
fluid_canner.recipeBuilder()
	.inputs(itemDuctSignalumOpaque)
  .fluidInputs(<liquid:glowstone> * 100)
	.outputs(itemDuctSignalumImpulseOpaque)
	.duration(320)
  .EUt(24)
	.buildAndRegister();    


// Fluiduct
recipes.remove(fluiduct);
recipes.addShaped("infitech_fluiduct", fluiduct * 3, [
  [<ore:ringAluminium>, <ore:blockGlass>, <ore:ringAluminium>],
  [null, wrench, null]]);

// Opaque Fluiduct
recipes.remove(fluiductOpaque);
recipes.addShaped("infitech_opaque_fluiduct", fluiductOpaque * 3, [
  [<ore:ringAluminium>, <ore:dustStone>, <ore:ringAluminium>],
  [null, wrench, null]]);

// Hardened Fluiduct
recipes.remove(fluiductHardened);
recipes.addShaped("infitech_hardened_fluiduct", fluiductHardened * 3, [
  [<ore:ringStainlessSteel>, <ore:blockGlassHardened>, <ore:ringStainlessSteel>],
  [null, wrench, null]]);

// Opaque Hardened Fluiduct
recipes.remove(fluiductHardenedOpaque);
recipes.addShaped("infitech_hardened_opaque_fluiduct", fluiductHardenedOpaque * 3, [
  [<ore:ringStainlessSteel>, <ore:dustStone>, <ore:ringStainlessSteel>],
  [null, wrench, null]]);
  
var advanced_circuit_part = <gregtech:meta_item_1:32715>;

var servo = <thermaldynamics:servo>;
var hardened_servo = <thermaldynamics:servo:1>;
var reinforced_servo = <thermaldynamics:servo:2>;
var signalum_servo = <thermaldynamics:servo:3>;
var resonant_servo = <thermaldynamics:servo:4>;
var lapotron_chip = <gregtech:meta_item_1:32714>;

// Servo
recipes.remove(servo);
recipes.addShaped("infitech_servo", servo * 2, [
  [<ore:boltIron>, <ore:blockGlass>, <ore:boltIron>], 
  [<ore:boltIron>, <ore:circuitPrimitive>, <ore:boltIron>]]);
  
// Hardened Servo
recipes.remove(hardened_servo);
recipes.addShaped("infitech_hardened_servo", hardened_servo * 2, [
  [<ore:boltSteel>, <ore:plateGlass>, <ore:boltSteel>], 
  [<ore:boltSteel>, <ore:circuitPrimitive>, <ore:boltSteel>]]);

// Reinforced Servo
recipes.remove(reinforced_servo);
recipes.addShaped("infitech_reinforced_servo", reinforced_servo * 2, [
  [<ore:boltAluminium>, <ore:plateGlass>, <ore:boltAluminium>], 
  [<ore:boltAluminium>, advanced_circuit_part, <ore:boltAluminium>]]);
  
// Signalum Servo. NOT BALANCED YET.  We don't have a proper means of gating Signalum.
recipes.remove(signalum_servo);
recipes.addShaped("infitech_signalum_servo", signalum_servo * 2, [
  [<ore:boltSignalum>, <ore:plateGlass>, <ore:boltSignalum>], 
  [<ore:boltSignalum>, advanced_circuit_part, <ore:boltSignalum>]]);
  
// Enderium Servo.  Temporary.  Need to add a GT Material for Enderium
recipes.remove(resonant_servo);
recipes.addShaped("infitech_resonant_servo", resonant_servo * 2, [
  [<ore:boltStainlessSteel>, <ore:plateGlass>, <ore:boltStainlessSteel>], 
  [<ore:ingotEnderium>, lapotron_chip, <ore:ingotEnderium>]]);

var retriever = <thermaldynamics:retriever>;
var hardened_retriever = <thermaldynamics:retriever:1>;
var reinforced_retriever = <thermaldynamics:retriever:2>;
var signalum_retriever = <thermaldynamics:retriever:3>;
var resonant_retriever = <thermaldynamics:retriever:4>;
  

// Retriever
recipes.remove(retriever);
recipes.addShaped("infitech_retriever", retriever * 2, [
  [<ore:boltSteel>, <ore:circuitPrimitive>, <ore:boltSteel>], 
  [<ore:boltSteel>, <minecraft:ender_eye:*>, <ore:boltSteel>]]);

// Hardened Retriever
recipes.remove(hardened_retriever);
recipes.addShaped("infitech_hardened_retriever", hardened_retriever * 2, [
  [<ore:boltAluminium>, advanced_circuit_part, <ore:boltAluminium>], 
  [<ore:boltAluminium>, <minecraft:ender_eye:*>, <ore:boltAluminium>]]);

// Reinforced Retriever
recipes.remove(reinforced_retriever);
recipes.addShaped("infitech_reinforced_retriever", reinforced_retriever * 2, [
  [<ore:boltStainlessSteel>, advanced_circuit_part, <ore:boltStainlessSteel>], 
  [<ore:boltStainlessSteel>, <minecraft:ender_eye:*>, <ore:boltStainlessSteel>]]); 

// Signalum Retriever
recipes.remove(signalum_retriever);
recipes.addShaped("infitech_signalum_retriever", signalum_retriever * 2, [
  [<ore:boltTungsten>, lapotron_chip, <ore:boltTungsten>], 
  [<ore:boltTungsten>, <minecraft:ender_eye:*>, <ore:boltTungsten>]]); 
  
// Resonant Retriever
recipes.remove(resonant_retriever);
recipes.addShaped("infitech_resonant_retriever", resonant_retriever * 2, [
  [<ore:boltTungstenSteel>, lapotron_chip, <ore:boltTungstenSteel>], 
  [<ore:boltTungstenSteel>, <minecraft:ender_eye:*>, <ore:boltTungstenSteel>]]);  
  


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
recipes.addShapeless(coinCopper * 8, [coinIron);

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
recipes.addShaped("thermalfoundation_tool_hammer_wood", <thermalfoundation:tool.hammer_wood>, [[<ore:plateWood>, <ore:stickSteel>, <ore:plateWood>], [<ore:plateWood>, <ore:stickSteel>, <ore:plateWood>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_stone", <thermalfoundation:tool.hammer_stone>, [[<ore:plateStone>, <ore:stickSteel>, <ore:plateStone>], [<ore:plateStone>, <ore:stickSteel>, <ore:plateStone>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_iron", <thermalfoundation:tool.hammer_iron>, [[<ore:plateIron>, <ore:stickSteel>, <ore:plateIron>], [<ore:plateIron>, <ore:stickSteel>, <ore:plateIron>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_gold", <thermalfoundation:tool.hammer_gold>, [[<ore:plateGold>, <ore:stickSteel>, <ore:plateGold>], [<ore:plateGold>, <ore:stickSteel>, <ore:plateGold>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_diamond", <thermalfoundation:tool.hammer_diamond>, [[<ore:plateDiamond>, <ore:stickSteel>, <ore:plateDiamond>], [<ore:plateDiamond>, <ore:stickSteel>, <ore:plateDiamond>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_copper", <thermalfoundation:tool.hammer_copper>, [[<ore:plateCopper>, <ore:stickSteel>, <ore:plateCopper>], [<ore:plateCopper>, <ore:stickSteel>, <ore:plateCopper>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_tin", <thermalfoundation:tool.hammer_tin>, [[<ore:plateTin>, <ore:stickSteel>, <ore:plateTin>], [<ore:plateTin>, <ore:stickSteel>, <ore:plateTin>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_silver", <thermalfoundation:tool.hammer_silver>, [[<ore:plateSilver>, <ore:stickSteel>, <ore:plateSilver>], [<ore:plateSilver>, <ore:stickSteel>, <ore:plateSilver>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_lead", <thermalfoundation:tool.hammer_lead>, [[<ore:plateLead>, <ore:stickSteel>, <ore:plateLead>], [<ore:plateLead>, <ore:stickSteel>, <ore:plateLead>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_aluminum", <thermalfoundation:tool.hammer_aluminum>, [[<ore:plateAluminum>, <ore:stickSteel>, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:stickSteel>, <ore:plateAluminum>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_nickel", <thermalfoundation:tool.hammer_nickel>, [[<ore:plateNickel>, <ore:stickSteel>, <ore:plateNickel>], [<ore:plateNickel>, <ore:stickSteel>, <ore:plateNickel>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_platinum", <thermalfoundation:tool.hammer_platinum>, [[<ore:platePlatinum>, <ore:stickSteel>, <ore:platePlatinum>], [<ore:platePlatinum>, <ore:stickSteel>, <ore:platePlatinum>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_steel", <thermalfoundation:tool.hammer_steel>, [[<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>], [<ore:plateSteel>, <ore:stickSteel>, <ore:plateSteel>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_electrum", <thermalfoundation:tool.hammer_electrum>, [[<ore:plateElectrum>, <ore:stickSteel>, <ore:plateElectrum>], [<ore:plateElectrum>, <ore:stickSteel>, <ore:plateElectrum>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_invar", <thermalfoundation:tool.hammer_invar>, [[<ore:plateInvar>, <ore:stickSteel>, <ore:plateInvar>], [<ore:plateInvar>, <ore:stickSteel>, <ore:plateInvar>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_bronze", <thermalfoundation:tool.hammer_bronze>, [[<ore:plateBronze>, <ore:stickSteel>, <ore:plateBronze>], [<ore:plateBronze>, <ore:stickSteel>, <ore:plateBronze>], [null, <ore:stickSteel>, null]]);
recipes.addShaped("thermalfoundation_tool_hammer_constantan", <thermalfoundation:tool.hammer_constantan>, [[<ore:plateConstantan>, <ore:stickSteel>, <ore:plateConstantan>], [<ore:plateConstantan>, <ore:stickSteel>, <ore:plateConstantan>], [null, <ore:stickSteel>, null]]);

