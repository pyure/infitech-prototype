#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.IItemDestroySpeed;


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

var test_pick = VanillaFactory.createItem("test_pick");
test_pick.toolClass = "pickaxe";
test_pick.maxDamage = 10;
test_pick.maxStackSize = 1;
test_pick.toolLevel = 3;
test_pick.itemDestroySpeed = function(stack, block){
//  stack.damage += 1;
  return 10.0 as float;
};
test_pick.register();




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
    "wrench"
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
