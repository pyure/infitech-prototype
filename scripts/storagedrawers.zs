// --- Original created by Jason McRay for Infitech 2---
// --- Adapted by Pyure for Infitech 3---

# Aliases
var drawerController = <storagedrawers:controller>;
var sensorHV = <metaitem:sensor.hv>;
var robotarmHV = <metaitem:robot.arm.hv>;
var conveyorHV = <metaitem:conveyor.module.hv>;
var pistonMV = <metaitem:electric.piston.mv>;
var drawerBasic = <ore:drawerBasic>;
var comparator = <minecraft:comparator>;
var plateIron = <ore:plateIron>;
var drawerCompacting = <storagedrawers:compdrawers>;
var drawerCompacting2by1 = <compactdrawers:compact_drawer_2by1>;
var plateSteel = <ore:plateSteel>;
var plateAluminium = <ore:plateAluminium>;



# Drawer tweaks
recipes.remove(drawerController);
recipes.addShaped(drawerController, [
    [plateIron, plateIron, plateIron],
    [comparator, sensorHV, comparator],
    [robotarmHV, drawerBasic, conveyorHV]]);
    
recipes.remove(drawerCompacting);
recipes.addShaped("it3_storagedrawers_compacting_drawer", drawerCompacting, [
    [plateSteel, plateSteel, plateSteel],
    [pistonMV, drawerBasic, pistonMV],
    [plateSteel, plateAluminium, plateSteel]]);

recipes.remove(drawerCompacting2by1);
recipes.addShaped("it3_storagedrawers_compacting_drawer_2by1", drawerCompacting2by1, [
    [plateSteel, plateSteel, plateSteel],
    [plateAluminium, drawerBasic, plateAluminium],
    [plateSteel, pistonMV, plateSteel]]);


