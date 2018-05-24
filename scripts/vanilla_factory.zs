#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.IItemDestroySpeed;
import mods.contenttweaker.IItemDestroyedBlock;
import crafttweaker.data.IData;

// BLOCKS
var bronzePlatedBrick = VanillaFactory.createBlock("bronze_plated_brick", <blockmaterial:Iron>);
bronzePlatedBrick.setBlockHardness(5.0);
bronzePlatedBrick.setBlockResistance(5.0);
bronzePlatedBrick.setToolClass("pickaxe");
bronzePlatedBrick.setToolLevel(2);
bronzePlatedBrick.register();

var driedSpruceLog = VanillaFactory.createBlock("dried_spruce_log", <blockmaterial:wood>);
driedSpruceLog.setBlockHardness(2.0);
driedSpruceLog.setBlockResistance(2.0);
driedSpruceLog.setToolClass("axe");
driedSpruceLog.setToolLevel(1);
driedSpruceLog.register();


// ITEMS
var rubber = VanillaFactory.createItem("rubber");
rubber.maxStackSize = 64;
rubber.register();

var raw_rubber = VanillaFactory.createItem("raw_rubber");
raw_rubber.maxStackSize = 64;
raw_rubber.register();

var basic_circuit = VanillaFactory.createItem("basic_circuit");
basic_circuit.maxStackSize = 64;
basic_circuit.register();

var basic_circuit_board = VanillaFactory.createItem("basic_circuit_board");
basic_circuit_board.maxStackSize = 64;
basic_circuit_board.register();

var gelled_toluene = VanillaFactory.createItem("gelled_toluene");
gelled_toluene.maxStackSize = 64;
gelled_toluene.register();

/* TESTING STUFF THAT CAN BE DELETED */
var test_pick = VanillaFactory.createItem("test_pick");
test_pick.toolClass = "pickaxe";
test_pick.maxDamage = 10;
test_pick.maxStackSize = 1;
test_pick.toolLevel = 3;
test_pick.itemDestroySpeed = function(stack, block){
  return 10.0 as float;
};
test_pick.itemDestroyedBlock = function(stack, world, blockState, pos, entity){
  stack.damage(1, entity);
  return true;
};
test_pick.register();
/* /TESTING STUFF */


var test_drill = VanillaFactory.createItem("test_drill");
test_drill.toolClass = "pickaxe";
test_drill.maxDamage = 10;
test_drill.maxStackSize = 1;
test_drill.toolLevel = 4;
test_drill.itemDestroySpeed = function(stack, block){
  return 20.0 as float;
};
test_drill.itemDestroyedBlock = function(stack, world, blockState, pos, entity){
  stack.damage(1, entity);
  stack.updateTag({Energy: 100});
  
  var mytag = stack.tag;
  print(mytag);
  return true;
};
test_drill.register();


// FLUIDS
var latex = mods.contenttweaker.VanillaFactory.createFluid("fluid_latex", "13434879");
latex.density = 100;
latex.viscosity = 100;
latex.register();

var distilled_water = mods.contenttweaker.VanillaFactory.createFluid("fluid_distilled_water", "2179779");
distilled_water.density = 100;
distilled_water.viscosity = 100;
distilled_water.register();

var placeholder_acid1 = mods.contenttweaker.VanillaFactory.createFluid("fluid_placeholder_acid1", "2179779");
placeholder_acid1.density = 100;
placeholder_acid1.viscosity = 100;
placeholder_acid1.register();

var placeholder_acid2 = mods.contenttweaker.VanillaFactory.createFluid("fluid_placeholder_acid2", "2179779");
placeholder_acid2.density = 100;
placeholder_acid2.viscosity = 100;
placeholder_acid2.register();

var uranium_hexafluoride = mods.contenttweaker.VanillaFactory.createFluid("uranium_hexafluoride", "2142779");
uranium_hexafluoride.density = 100;
uranium_hexafluoride.viscosity = 100;
uranium_hexafluoride.register();

var sulfuric_gas = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_gas", "16777215");
sulfuric_gas.density = 100;
sulfuric_gas.viscosity = 100;
sulfuric_gas.register();

var sulfuric_naphtha = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_naphtha", "16776910");
sulfuric_naphtha.density = 100;
sulfuric_naphtha.viscosity = 100;
sulfuric_naphtha.register();

var sulfuric_light_fuel = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_light_fuel", "16776100");
sulfuric_light_fuel.density = 100;
sulfuric_light_fuel.viscosity = 100;
sulfuric_light_fuel.register();

var sulfuric_heavy_fuel = mods.contenttweaker.VanillaFactory.createFluid("sulfuric_heavy_fuel", "16776310");
sulfuric_heavy_fuel.density = 100;
sulfuric_heavy_fuel.viscosity = 100;
sulfuric_heavy_fuel.register();

var heavy_oil = mods.contenttweaker.VanillaFactory.createFluid("heavy_oil", "657930");
heavy_oil.density = 100;
heavy_oil.viscosity = 100;
heavy_oil.register();

var cracked_light_fuel = mods.contenttweaker.VanillaFactory.createFluid("cracked_light_fuel", "16776960");
cracked_light_fuel.density = 100;
cracked_light_fuel.viscosity = 100;
cracked_light_fuel.register();

var cracked_heavy_fuel = mods.contenttweaker.VanillaFactory.createFluid("cracked_heavy_fuel", "16776560");
cracked_heavy_fuel.density = 100;
cracked_heavy_fuel.viscosity = 100;
cracked_heavy_fuel.register();

var fish_oil = mods.contenttweaker.VanillaFactory.createFluid("fish_oil", "16761856");
fish_oil.density = 100;
fish_oil.viscosity = 100;
fish_oil.register();

var heavy_fuel = mods.contenttweaker.VanillaFactory.createFluid("heavy_fuel", "16776960");
heavy_fuel.density = 100;
heavy_fuel.viscosity = 100;
heavy_fuel.register();

var hydrogen_sulfide = mods.contenttweaker.VanillaFactory.createFluid("hydrogen_sulfide", "16777215");
hydrogen_sulfide.density = 100;
hydrogen_sulfide.viscosity = 100;
hydrogen_sulfide.register();

var light_fuel = mods.contenttweaker.VanillaFactory.createFluid("light_fuel", "16776999");
light_fuel.density = 100;
light_fuel.viscosity = 100;
light_fuel.register();

var natural_gas = mods.contenttweaker.VanillaFactory.createFluid("natural_gas", "16777215");
natural_gas.density = 100;
natural_gas.viscosity = 100;
natural_gas.register();

var refinery_gas = mods.contenttweaker.VanillaFactory.createFluid("refinery_gas", "16777215");
refinery_gas.density = 100;
refinery_gas.viscosity = 100;
refinery_gas.register();

var toluene = mods.contenttweaker.VanillaFactory.createFluid("toluene", "5250309");
toluene.density = 100;
toluene.viscosity = 100;
toluene.register();

var methane = mods.contenttweaker.VanillaFactory.createFluid("methane", "16777215");
methane.density = 100;
methane.viscosity = 100;
methane.register();

var epichlorohydrin = mods.contenttweaker.VanillaFactory.createFluid("epichlorohydrin", "5250309");
epichlorohydrin.density = 100;
epichlorohydrin.viscosity = 100;
epichlorohydrin.register();

var chlorine = mods.contenttweaker.VanillaFactory.createFluid("chlorine", "16777215");
chlorine.density = 100;
chlorine.viscosity = 100;
chlorine.register();

/*
var mortar_flint = VanillaFactory.createItem("flint_mortar");
mortar_flint.maxStackSize = 1;
mortar_flint.maxDamage = 16;
mortar_flint.register();

var mortar_iron = VanillaFactory.createItem("iron_mortar");
mortar_iron.maxStackSize = 1;
mortar_iron.maxDamage = 64;
mortar_iron.register();

var mortar_bronze = VanillaFactory.createItem("bronze_mortar");
mortar_bronze.maxStackSize = 1;
mortar_bronze.maxDamage = 128;
mortar_bronze.register();

var mortar_steel = VanillaFactory.createItem("steel_mortar");
mortar_steel.maxStackSize = 1;
mortar_steel.maxDamage = 512;
mortar_steel.register();

val mortars = [
    mortar_flint,
    mortar_bronze,
    mortar_iron,
    mortar_steel
] as Item[];

for mortar in mortars {
  mortar.itemGetContainerItem = function(item) {
      return (item.damage + 1 < item.maxDamage) ? item.withDamage(item.damage + 1) : null;
  };
}
*/

var sticky_resin = VanillaFactory.createItem("sticky_resin");
sticky_resin.maxStackSize = 64;
sticky_resin.register();

var tree_tap = VanillaFactory.createItem("tree_tap");
tree_tap.maxStackSize = 1;
tree_tap.maxDamage = 32;
tree_tap.register();

val metal_durations = {
    "flint" : 16,
    "bronze" : 64,
    "iron" : 128,
    "steel" : 512
} as int[string];

val tool_metals = [
    "flint",
    "bronze",
    "iron",
    "steel"
] as string[];

val tool_types = [
    "saw",
    "hammer",
    "mortar",
    "wrench",
	"file"
] as string[];

for tool_metal in tool_metals {
  for tool_type in tool_types {
    var tool = VanillaFactory.createItem(tool_metal ~ "_" ~ tool_type); // generates "flint_hammer", etc
    tool.maxStackSize = 1; 
    tool.maxDamage = metal_durations[tool_metal];  

    tool.itemGetContainerItem = function(item) {
      return (item.damage + 1 < item.maxDamage) ? item.withDamage(item.damage + 1) : null;
    };
    tool.register();
  }
}
