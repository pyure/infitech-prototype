import mods.factorytech.ChopSaw;
import mods.factorytech.DrillGrinder;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// Removing block crafting recipes
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockCopper = <factorytech:oreblock>;
var blockNickel = <factorytech:oreblock:1>;
var blockCupronickel = <factorytech:oreblock:2>;
var blockInvar = <factorytech:oreblock:3>;

recipes.remove(blockCopper);
recipes.remove(blockNickel);
recipes.remove(blockCupronickel);
recipes.remove(blockInvar);

// Remove wood chopping recipes from chopper
ChopSaw.removeRecipe(<minecraft:planks:*> * 6);
ChopSaw.removeRecipe(<minecraft:stick> * 3);

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
	[copper_rod, lv_motor, copper_rod],
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
  
  

val material_array = [
  "Aluminium",
  "Chrome" ,
  "Cobalt" ,
  "Gold",
  "Iron" ,
  "TinAlloy" ,
  "Lead",
  "Nickel" ,
  "Silver",
  "Titanium",
  "Brass" ,
  "Bronze",
  "Electrum" ,
  "Invar",
  "WroughtIron",
  "Copper",
  "Diamond",
  "Apatite",
  "Redstone",
  "Emerald",
  "Coal",
  "Tin",
  "Aluminum",
  "Platinum",
  "Iridium",
  "Mithril",
  "Osmium",
  "Beryllium",
  "Barite",
  "Salt",
  "Zinc",
  "Scheelite",
  "Chromite",
  "Graphite",
  "Tantalite",
  "Lapis",
  "Bauxite",
  "Tanzanite",
  "Cassiterite",
  "Cinnabar",
  "Sapphire",
  "Topaz",
  "GreenSapphire",
  "Molybdenum",
  "Bismuth",
  "Spodumene",
  "Garnierite",
  "Monazite",
  "YellowLimonite",
  "Soapstone",
  "Bentonite",
  "Malachite",
  "Galena",
  "Pitchblende",
  "Grossular",
  "Olivine",
  "Lithium",
  "Tetrahedrite",
  "Amethyst",
  "Saltpeter",
  "Vinteum",
  "Opal",
  "Magnesite",
  "RockSalt",
  "Lignite",
  "Bastnasite",
  "Ruby",
  "Wulfenite",
  "Neodymium",
  "Calcite",
  "Molybdenite",
  "Cooperite",
  "BandedIron",
  "Lazurite",
  "Stibnite",
  "NetherQuartz",
  "Pyrolusite",
  "Phosphor",
  "Palladium",
  "Sodalite",
  "Chalcopyrite",
  "Lepidolite",
  "BrownLimonite",
  "Pentlandite",
  "Cobaltite",
  "Ilmenite",
  "Tungstate",
  "CertusQuartz",
  "GarnetRed",
  "Glauconite",
  "Pyrope",
  "Uraninite",
  "Oilsands",
  "Sphalerite",
  "Spessartine",
  "Powellite",
  "Thorium",
  "CassiteriteSand",
  "Sulfur",
  "Uranium235",
  "Uranium",
  "BlueTopaz",
  "Phosphate",
  "Pyrite",
  "Jasper",
  "NaquadahEnriched",
  "Almandine",
  "Magnetite",
  "GarnetYellow",
  "Naquadah",
  "VanadiumMagnetite",
  "Niobium",
  "Quartzite",
  "Talc"
] as string[];

// Remove the "ground" materials that ship with the mod
var groundCopper = <factorytech:ore_dust:2>;
var groundIron = <factorytech:ore_dust>;
var groundGold = <factorytech:ore_dust:1>;
var groundNickel = <factorytech:ore_dust:3>;

DrillGrinder.removeRecipe(groundCopper);
DrillGrinder.removeRecipe(groundIron);
DrillGrinder.removeRecipe(groundGold);
DrillGrinder.removeRecipe(groundNickel);
  
// Remove a ton of automatically generated ore->dust recipes
for name in material_array {
  var dustMaterial = oreDict["dust" ~ name];
  DrillGrinder.removeRecipe(dustMaterial);
 
  var smallCrushedPrefix = "smallCrushedOre";
  var smallMaterialName = smallCrushedPrefix ~ name;
  var oreName = "ore" ~ name;
  
  // Replace old recipes with ones that generate small crushed ores (from ContentTweaker)
  if (oreDict has smallMaterialName) {
    if (oreDict has oreName) {
      var smallOutput = oreDict[smallMaterialName].firstItem;
      var oreInput = oreDict[oreName];
      
      DrillGrinder.addRecipe(smallOutput * 5, oreInput, false);    
    }
  }
}

// Create the recipes to turn small crushed ores into crushed ores
for name in material_array {
  var smallMaterialName = "smallCrushedOre" ~ name;
  var crushedOreName = "crushed" ~ name;
  
  if (oreDict has smallMaterialName) {
    if (oreDict has crushedOreName) {
      var smallCrushedOre = oreDict[smallMaterialName].firstItem;
      var crushedOre = oreDict[crushedOreName].firstItem;
      recipes.addShapeless(crushedOre * 1, [smallCrushedOre, smallCrushedOre, smallCrushedOre, smallCrushedOre]);
    }
  }
}

var magneticIronRod = <ore:stickIronMagnetic>;
var steelRod = <ore:stickSteel>;
var ironRod = <ore:stickIron>;
var steelPlate = <ore:plateIron>;
var hammer = <ore:craftingToolHammer>;



// Pipe 
// Reminder: GT pipes don't function as pipes yet.  Once they do, we may need to adjust for balance.
recipes.remove(<factorytech:pipe> * 8);
recipes.addShaped("infitech_ft_pipe", <factorytech:pipe> * 8, [
  [<ore:plateBronze>, steelPlate, <ore:plateBronze>],
  [null, wrench, null],
  [<ore:plateBronze>, steelPlate, <ore:plateBronze>]]);

// Extraction Pump
recipes.remove(<factorytech:fluidpuller>);
recipes.addShaped("infitech_extraction_pump", <factorytech:fluidpuller>, [
  [null, wrench, magneticIronRod], 
  [<factorytech:pipe>, <minecraft:piston>, steelRod], 
  [null, hammer, magneticIronRod]]);

// Transport Roller
recipes.remove(<factorytech:conveyor> * 4);
recipes.addShaped("infitech_transport_rollerinfitech_inserthatch", <factorytech:conveyor> * 6, [
  [ironRod, magneticIronRod, steelRod], 
  [<ore:dustRedstone>, wrench, <ore:dustRedstone>], 
  [ironRod, magneticIronRod, steelRod]]);

// Insertion Hatch
recipes.remove(<factorytech:hatch> * 2);
recipes.addShaped("infitech_inserthatch", <factorytech:hatch> * 2, [
  [<minecraft:stone>, steelPlate, <minecraft:stone>], 
  [wrench, <minecraft:hopper>, hammer], 
  [<minecraft:stone>, steelPlate, <minecraft:stone>]]);

// Auto Ejector
recipes.remove(<factorytech:autopuller>);
recipes.addShaped("infitech_autoejector", <factorytech:autopuller>, [
  [null, wrench, <ore:plankWood>], 
  [magneticIronRod, <minecraft:sticky_piston>, steelPlate], 
  [null, hammer, <ore:plankWood>]]);
