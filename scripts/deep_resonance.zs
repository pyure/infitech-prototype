
var lvMachineCasing = <gregtech:machine_casing:1>;

// Main Machine Frame for all DR machines
recipes.remove(<deepresonance:machine_frame>);
recipes.addShaped("infitech3_deepresonance_machine_frame", <deepresonance:machine_frame>, [
  [<ore:plateIron>, <deepresonance:resonating_plate>, <ore:plateIron>], 
  [<deepresonance:resonating_plate>, lvMachineCasing, <deepresonance:resonating_plate>], 
  [<ore:plateIron>, <ore:circuitGABasic>, <ore:plateIron>]]);

recipes.remove(<deepresonance:generator>);  
recipes.addShaped("infitech3_deepresonance_generator", <deepresonance:generator>, [
  [<minecraft:gold_nugget>, <minecraft:redstone_block>, <minecraft:gold_nugget>], 
  [<minecraft:iron_ingot>, <deepresonance:machine_frame>, <minecraft:iron_ingot>], 
  [<minecraft:gold_nugget>, <ore:circuitGABasic>, <minecraft:gold_nugget>]]);
  
recipes.remove(<deepresonance:purifier>);  
recipes.addShaped("infitech3_deepresonance_purifier", <deepresonance:purifier>, [
  [<deepresonance:filter>, <deepresonance:filter>, <deepresonance:filter>], 
  [<ore:craftingFilter>, <deepresonance:machine_frame>, <ore:craftingFilter>], 
  [<deepresonance:filter>, <ore:circuitGABasic>, <deepresonance:filter>]]);
  
recipes.remove(<deepresonance:laser>);
recipes.addShaped("infitech3_deepresonance_laser", <deepresonance:laser>, [
  [<minecraft:glass>,<metaitem:emitter.mv>, <minecraft:glass>], 
  [<minecraft:emerald>, <deepresonance:machine_frame>, <minecraft:emerald>], 
  [<minecraft:diamond>, <ore:circuitGABasic>, <minecraft:diamond>]]);
  
recipes.remove(<deepresonance:crystalizer>);  
recipes.addShaped("infitech3_deepresonance_crystalizer", <deepresonance:crystalizer>, [
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
  [<minecraft:quartz>, <deepresonance:machine_frame>, <minecraft:quartz>], 
  [<minecraft:iron_ingot>, <ore:circuitGABasic>, <minecraft:iron_ingot>]]);

recipes.remove(<deepresonance:smelter>);
recipes.addShaped("infitech3_deepresonance_smelter", <deepresonance:smelter>, [
  [<deepresonance:resonating_plate>, <deepresonance:resonating_plate>, <deepresonance:resonating_plate>], 
  [<minecraft:iron_ingot>, <deepresonance:machine_frame>, <minecraft:iron_ingot>], 
  [<minecraft:nether_brick>, <ore:circuitGABasic>, <minecraft:nether_brick>]]);
