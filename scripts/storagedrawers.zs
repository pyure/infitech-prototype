// --- Original created by Jason McRay for Infitech 2---
// --- Adapted by Pyure for Infitech 3---
import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");


# Aliases
var drawerController = <storagedrawers:controller>;
var sensorHV = <metaitem:sensor.hv>;
var robotarmHV = <metaitem:robot.arm.hv>;
var conveyorHV = <metaitem:conveyor.module.hv>;
var pistonMV = <metaitem:electric.piston.mv>;
var drawerBasic = <ore:drawerBasic>;
var comparator = <minecraft:comparator>;
var plateIron = <ore:plateIron>;

var drawerCompactingHalf = <compactdrawers:compact_drawer_half>;
var drawerCompacting2by1Half = <compactdrawers:compact_drawer_2by1_half>;
var drawerCompacting = <storagedrawers:compdrawers>;
var drawerCompacting2by1 = <compactdrawers:compact_drawer_2by1>;

var plateSteel = <ore:plateSteel>;
var plateAluminium = <ore:plateAluminium>;


# Drawer tweaks - Controller
recipes.remove(drawerController);
recipes.addShaped(drawerController, [
    [plateIron, plateIron, plateIron],
    [comparator, sensorHV, comparator],
    [robotarmHV, drawerBasic, conveyorHV]]);
    
    
# Compacting Drawers: Assemble Half-versions by hand, assemble them into a full drawer with Assembler
recipes.remove(drawerCompactingHalf);
recipes.addShaped("it3_storagedrawers_compacting_drawer_half", drawerCompactingHalf, [
    [plateSteel, plateSteel, plateSteel],
    [pistonMV, drawerBasic, pistonMV],
    [plateSteel, plateAluminium, plateSteel]]);

recipes.remove(drawerCompacting2by1Half);
recipes.addShaped("it3_storagedrawers_compacting_drawer_2by1_half", drawerCompacting2by1Half, [
    [plateSteel, plateSteel, plateSteel],
    [plateAluminium, drawerBasic, plateAluminium],
    [plateSteel, pistonMV, plateSteel]]);

assembler.recipeBuilder()
  .inputs(drawerCompactingHalf * 2)
  .outputs(drawerCompacting * 1)
  .duration(90)
  .EUt(150)
  .buildAndRegister();  
  
assembler.recipeBuilder()
  .inputs(drawerCompacting2by1Half * 2)
  .outputs(drawerCompacting2by1 * 1)
  .duration(90)
  .EUt(150)
  .buildAndRegister();  