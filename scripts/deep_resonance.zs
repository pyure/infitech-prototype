import mods.gregtech.recipe.RecipeMap;

var lvMachineCasing = <gregtech:machine_casing:1>;
val assembler as RecipeMap = RecipeMap.getByName("assembler");
var lensLime = <ore:craftingLensLime>;
var resonatingPlate = <deepresonance:resonating_plate>;

// Main Machine Frame for all DR machines
recipes.remove(<deepresonance:machine_frame>);
recipes.addShaped("infitech3_deepresonance_machine_frame", <deepresonance:machine_frame>, [
  [<ore:plateIron>, resonatingPlate, <ore:plateIron>], 
  [resonatingPlate, lvMachineCasing, resonatingPlate], 
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
  [resonatingPlate, resonatingPlate, resonatingPlate], 
  [<minecraft:iron_ingot>, <deepresonance:machine_frame>, <minecraft:iron_ingot>], 
  [<minecraft:nether_brick>, <ore:circuitGABasic>, <minecraft:nether_brick>]]);

// Gregged Lens recipe
assembler.recipeBuilder()
  .inputs(lensLime * 1, <ore:plateGlass> * 4, resonatingPlate * 4)
  .outputs(<deepresonance:lens> * 1)
  .duration(360)
  .EUt(32)
  .buildAndRegister();

// Gregged Pedestal
recipes.remove(<deepresonance:pedestal>);
recipes.addShaped(<deepresonance:pedestal>, [
  [<ore:plateIron>, <minecraft:dispenser>, <ore:plateIron>], 
  [<ore:plateIron>, <deepresonance:machine_frame>, <ore:plateIron>], 
  [<ore:plateIron>, <minecraft:comparator>, <ore:plateIron>]]);
