
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//TRANSLOCATORS
var pumpLV = <gregtech:meta_item_1:32610>;
var conveyorLV = <gregtech:meta_item_1:32630>;

var itemTranslocator = <translocators:translocator_part>;
var fluidTranslocator = <translocators:translocator_part:1>;
recipes.remove(itemTranslocator);
recipes.remove(fluidTranslocator);

recipes.addShaped(itemTranslocator * 2, [
  [<thermaldynamics:duct_32>, <minecraft:ender_pearl>, <thermaldynamics:duct_32>], 
  [<advgenerators:iron_wiring>, conveyorLV, <advgenerators:iron_wiring> ], 
  [<ore:gearTin>, <ore:plateWroughtIron>, <ore:gearTin>]]);
  
recipes.addShaped(fluidTranslocator * 2, [
  [<thermaldynamics:duct_16>, <minecraft:ender_pearl>, <thermaldynamics:duct_16>], 
  [<advgenerators:iron_wiring>, pumpLV, <advgenerators:iron_wiring> ], 
  [<ore:gearCopper>, <ore:plateWroughtIron>, <ore:gearCopper>]]);
  
recipes.addShaped(itemTranslocator * 4, [
  [<thermaldynamics:duct_32>, <ore:plateEnderium>, <thermaldynamics:duct_32>], 
  [<advgenerators:iron_wiring>, conveyorLV, <advgenerators:iron_wiring> ], 
  [<ore:gearTin>, <ore:plateWroughtIron>, <ore:gearTin>]]);
  
recipes.addShaped(fluidTranslocator * 4, [
  [<thermaldynamics:duct_16>, <ore:plateEnderium>, <thermaldynamics:duct_16>], 
  [<advgenerators:iron_wiring>, pumpLV, <advgenerators:iron_wiring> ], 
  [<ore:gearCopper>, <ore:plateWroughtIron>, <ore:gearCopper>]]);