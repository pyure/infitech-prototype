import mods.factorytech.ChopSaw;

//ChopSaw.removeRecipe(<minecraft:planks> * 6);


//for plank in <ore:plankWood>.items {
//  ChopSaw.addRecipe(<minecraft:stick> * 2, plank, false);
//}

var iron_rod = <ore:stickIron>;
var nickel_rod = <ore:stickNickel>;
var cupronickel_rod = <ore:stickCupronickel>;
var invar_rod = <ore:stickInvar>;

var cutting_blade = <factorytech:machinepart:30>;
var lv_motor = <gregtech:meta_item_1:32600>;
var stone = <minecraft:stone>;
var wrench = <ore:craftingToolWrench>;
var iron_plate = <ore:plateIron>;
var small_copper_circuit_1 = <factorytech:machinepart:90>;
var small_standard_battery = <factorytech:machinepart:140>;
var advanced_motor = <factorytech:machinepart:60>;
var copper_wire = <ore:wireGtSingleCopper>;
var transport_roller = <factorytech:conveyor>;
var redstone = <ore:dustRedstone>;


recipes.remove(<factorytech:metalcutter>);
recipes.addShaped(<factorytech:metalcutter>, [
	[iron_rod, cutting_blade, iron_rod],
	[nickel_rod, lv_motor, nickel_rod],
	[stone, wrench, stone]]);
  
recipes.remove(<factorytech:grindstone>);
recipes.addShaped(<factorytech:grindstone>, [
	[iron_plate, wrench, null ],
	[lv_motor, iron_rod, iron_plate],
	[stone, iron_plate, iron_plate]]);
  
recipes.remove(<factorytech:temperer>);
recipes.addShaped(<factorytech:temperer>, [
	[cupronickel_rod, small_copper_circuit_1, cupronickel_rod ],
	[lv_motor, wrench, small_standard_battery],
	[invar_rod, invar_rod, invar_rod]]);
  
// ADvanced Motor
recipes.remove(advanced_motor);
recipes.addShaped(advanced_motor, [
	[null, nickel_rod, null ],
	[iron_rod, lv_motor, iron_rod],
	[iron_rod, copper_wire, iron_rod]]);

// Transport Rollers
recipes.remove(transport_roller * 12);
recipes.addShaped(transport_roller * 4, [
	[iron_rod, iron_rod, iron_rod],
	[redstone, redstone, redstone],
	[iron_rod, iron_rod, iron_rod]]);