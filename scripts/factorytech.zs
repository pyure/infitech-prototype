import mods.factorytech.ChopSaw;
import mods.factorytech.DrillGrinder;

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


