#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;


// METALS
var silicon = MaterialSystem.getMaterialBuilder().setName('Silicon').setColor(3947600).build();
var tin = MaterialSystem.getMaterialBuilder().setName('Tin').setColor(14474460).build();
var soldering_alloy = MaterialSystem.getMaterialBuilder().setName('Soldering Alloy').setColor(14474470).build();
var antimony = MaterialSystem.getMaterialBuilder().setName('Antimony').setColor(14474480).build();
var beryllium = MaterialSystem.getMaterialBuilder().setName('Beryllium').setColor(6599780).build();
var uranium238 = MaterialSystem.getMaterialBuilder().setName('Uranium 238').setColor(3338290).build();
var uranium235 = MaterialSystem.getMaterialBuilder().setName('Uranium 235').setColor(12844090).build();
var carbon = MaterialSystem.getMaterialBuilder().setName('Carbon').setColor(1315860).build();
var steel = MaterialSystem.getMaterialBuilder().setName('Steel').setColor(8421504).build();
var cobalt = MaterialSystem.getMaterialBuilder().setName('Cobalt').setColor(5263610).build();
var copper = MaterialSystem.getMaterialBuilder().setName('Copper').setColor(16737280).build();
var nether_quartz = MaterialSystem.getMaterialBuilder().setName('Nether Quartz').setColor(15127250).build();
var bismuth_bronze = MaterialSystem.getMaterialBuilder().setName('Bismuth Bronze').setColor(6585725).build();
var gold = MaterialSystem.getMaterialBuilder().setName('Gold').setColor(16776990).build();
var iron = MaterialSystem.getMaterialBuilder().setName('Iron').setColor(13158600).build();
var lead = MaterialSystem.getMaterialBuilder().setName('Lead').setColor(9200780).build();
var lithium = MaterialSystem.getMaterialBuilder().setName('Lithium').setColor(14802175).build();
var magnesium = MaterialSystem.getMaterialBuilder().setName('Magnesium').setColor(16763080).build();
var manganese = MaterialSystem.getMaterialBuilder().setName('Manganese').setColor(16448250).build();
var neodymium = MaterialSystem.getMaterialBuilder().setName('Neodymium').setColor(6579300).build();
var lapis = MaterialSystem.getMaterialBuilder().setName('Lapis Lazuli').setColor(4605660).build();
var neutronium = MaterialSystem.getMaterialBuilder().setName('Neutronium').setColor(16448250).build();
var nickel = MaterialSystem.getMaterialBuilder().setName('Nickel').setColor(13158650).build();
var platinum = MaterialSystem.getMaterialBuilder().setName('Platinum').setColor(16777160).build();
var potassium = MaterialSystem.getMaterialBuilder().setName('Potassium').setColor(16448250).build();
var silver = MaterialSystem.getMaterialBuilder().setName('Silver').setColor(14474495).build();
var pyrolusite = MaterialSystem.getMaterialBuilder().setName('Pyrolusite').setColor(6579340).build();
var thorium = MaterialSystem.getMaterialBuilder().setName('Thorium').setColor(7680).build();
var zinc = MaterialSystem.getMaterialBuilder().setName('Zinc').setColor(16445680).build();
var aluminium = MaterialSystem.getMaterialBuilder().setName('Aluminium').setColor(8440048).build();
var chrome = MaterialSystem.getMaterialBuilder().setName('Chrome').setColor(16770790).build();
var terrasteel = MaterialSystem.getMaterialBuilder().setName('Terrasteel').setColor(16777215).build();
var manasteel = MaterialSystem.getMaterialBuilder().setName('Manasteel').setColor(16777215).build();
var redstone = MaterialSystem.getMaterialBuilder().setName('Redstone').setColor(13107200).build();
var stainless_steel = MaterialSystem.getMaterialBuilder().setName('Stainless Steel').setColor(13158620).build();
var kanthal = MaterialSystem.getMaterialBuilder().setName('Kanthal').setColor(12767967).build();
var palladium = MaterialSystem.getMaterialBuilder().setName('Palladium').setColor(8421504).build();
var tritanium = MaterialSystem.getMaterialBuilder().setName('Tritanium').setColor(16777215).build();
var annealed_copper = MaterialSystem.getMaterialBuilder().setName('Annealed Copper').setColor(16742420).build();
var brass = MaterialSystem.getMaterialBuilder().setName('Brass').setColor(16757760).build();
var bronze = MaterialSystem.getMaterialBuilder().setName('Bronze').setColor(16744448).build();
var titanium = MaterialSystem.getMaterialBuilder().setName('Titanium').setColor(14459120).build();
var cupronickel = MaterialSystem.getMaterialBuilder().setName('Cupronickel').setColor(14915200).build();
var invar = MaterialSystem.getMaterialBuilder().setName('Invar').setColor(11842680).build();
var nichrome = MaterialSystem.getMaterialBuilder().setName('Nichrome').setColor(13487862).build();
var iridium = MaterialSystem.getMaterialBuilder().setName('Iridium').setColor(15790325).build();
var wrought_iron = MaterialSystem.getMaterialBuilder().setName('Wrought Iron').setColor(13153460).build();
var tungsten = MaterialSystem.getMaterialBuilder().setName('Tungsten').setColor(3289650).build();
var tungstensteel = MaterialSystem.getMaterialBuilder().setName('Tungstensteel').setColor(6579360).build();
var osmium = MaterialSystem.getMaterialBuilder().setName('Osmium').setColor(3289855).build();
var cobalt_brass = MaterialSystem.getMaterialBuilder().setName('Cobalt Brass').setColor(11842720).build();
var diamond = MaterialSystem.getMaterialBuilder().setName('Diamond').setColor(16777215).build();
var graphite = MaterialSystem.getMaterialBuilder().setName('Graphite').setColor(8421504).build();
var coal = MaterialSystem.getMaterialBuilder().setName('Coal').setColor(6571590).build();
var boron = MaterialSystem.getMaterialBuilder().setName('Boron').setColor(13826770).build();
var tetrahedrite = MaterialSystem.getMaterialBuilder().setName('Tetrahedrite').setColor(13115392).build();
var stibnite = MaterialSystem.getMaterialBuilder().setName('Stibnite').setColor(4605510).build();
var lignite = MaterialSystem.getMaterialBuilder().setName('Lignite').setColor(6571590).build();
var limonite = MaterialSystem.getMaterialBuilder().setName('Limonite').setColor(13158400).build();
var salt = MaterialSystem.getMaterialBuilder().setName('Salt').setColor(16448250).build();
var galena = MaterialSystem.getMaterialBuilder().setName('Galena').setColor(6569060).build();
var bauxite = MaterialSystem.getMaterialBuilder().setName('Bauxite').setColor(13132800).build();
var ilmenite = MaterialSystem.getMaterialBuilder().setName('Ilmenite').setColor(4601650).build();
var pitchblende = MaterialSystem.getMaterialBuilder().setName('Pitchblende').setColor(13160960).build();
var emerald = MaterialSystem.getMaterialBuilder().setName('Emerald').setColor(5308240).build();
var sulfur =  MaterialSystem.getMaterialBuilder().setName('Sulfur').setColor(13158400).build();
var flint =  MaterialSystem.getMaterialBuilder().setName('Flint').setColor(8256).build();
var polyethylene =  MaterialSystem.getMaterialBuilder().setName('Polyethylene').setColor(13158600).build();
var raw_rubber =  MaterialSystem.getMaterialBuilder().setName('Raw Rubber').setColor(13420425).build();
var lepidolite =  MaterialSystem.getMaterialBuilder().setName('Lepidolite').setColor(15741580).build();
/*
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("purified_ore").setPartType(MaterialSystem.getPartType("item")).build();
*/


var metal_list = [silicon, tin, soldering_alloy, antimony, aluminium, tungstensteel, titanium, steel, cobalt, stainless_steel, copper, bismuth_bronze, gold, iron, lead, lithium, magnesium, manganese, platinum, nickel, silver, bronze, iridium, graphite, wrought_iron, polyethylene] as Material[];
var machine_frame_metals_list = [bronze, steel, titanium, tungstensteel, aluminium] as Material[];
var turbine_rotor_metals_list = [steel] as Material[];
var mortar_metals_list = [iron, copper, bronze, steel] as Material[];
var machine_subcomponents_list = [bronze, steel, titanium, tungstensteel, aluminium] as Material[];
var gemstone_list = [diamond, coal, redstone, nether_quartz] as Material[];
var tool_metal_list = [flint, bronze, iron, steel] as Material[];
var dust_list = [raw_rubber] as Material[];

var part_names = ["nugget", "ingot", "plate", "rod", "screw"] as string[]; 
var gemstone_part_names = ["dust", "tiny_dust", "crushed_ore", "washed_ore"] as string[];
var ore_part_names = ["crushed_ore", "dust", "tiny_dust", "washed_ore"] as string[]; 
var dust_part_names = ["dust", "tiny_dust"] as string[]; 

// ORES
var ore_list = [antimony, cobalt, pyrolusite, tetrahedrite, stibnite, graphite, lignite, salt, galena, bauxite, ilmenite, beryllium, pitchblende, limonite, lepidolite] as Material[];
var ore_byproducts_list = [antimony, cobalt, magnesium, manganese, platinum, iridium, tin, gold, iron, silver, copper, lead, nickel, chrome, lapis, lithium, boron, uranium238, uranium235, thorium, zinc, aluminium, 
                      tetrahedrite, stibnite, graphite, lignite, limonite, salt, galena, bauxite, ilmenite, beryllium, pitchblende, pyrolusite, emerald, sulfur, lepidolite] as Material[];
//
var ore_types = ["ore"] as string[];

// Add "item" parts here
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("washed_ore").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Tiny Dust").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Mortar").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Saw").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Macerator Blade").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Gearbox").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Heat Conductor").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Electrode").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("io_unit").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Industrial Turbine Rotor").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Large Turbine Rotor").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Standard Turbine Rotor").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Small Turbine Rotor").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Screw").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Wire").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Axe Head").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Pickaxe Head").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Saw Blade").setPartType(MaterialSystem.getPartType("item")).build();
mods.contenttweaker.MaterialSystem.getPartBuilder().setName("Catalyst Support").setPartType(MaterialSystem.getPartType("item")).build();

// Add "block" parts here
var machineFrame = MaterialSystem.getPartBuilder().setName("machine_frame").setPartType(MaterialSystem.getPartType("storage")).build(); // "machine_frame" instead of "Machine Frame" due to a potential bug; reported to team.
var agitator = MaterialSystem.getPartBuilder().setName("agitator").setPartType(MaterialSystem.getPartType("storage")).build();

for i, gemstone in gemstone_list {
    gemstone.registerParts(gemstone_part_names);
}
for i, dust_item in dust_list {
    dust_item.registerParts(dust_part_names);
}
for i, metal in ore_byproducts_list {
    metal.registerParts(ore_part_names);
}

for i, metal in tool_metal_list {
    metal.registerPart("axe_head");
    metal.registerPart("pickaxe_head");
    metal.registerPart("saw_blade");
}

for i, metal in machine_frame_metals_list {
    metal.registerPart(machineFrame);
    metal.registerPart(agitator);
}

for i, metal in turbine_rotor_metals_list {
    metal.registerPart("small_turbine_rotor");
    metal.registerPart("standard_turbine_rotor");
    metal.registerPart("large_turbine_rotor");
    metal.registerPart("industrial_turbine_rotor");
}

for i, metal in machine_subcomponents_list {
   metal.registerPart("macerator_blade");
   metal.registerPart("electrode");
   metal.registerPart("gearbox");
   metal.registerPart("heat_conductor");
   metal.registerPart("wire");
   metal.registerPart("io_unit");
   metal.registerPart("catalyst_support");
}
  

  
for i, metal in metal_list {
    metal.registerParts(part_names);

    var blockData = metal.registerPart("block").getData();
    blockData.addDataValue("hardness", "5");
    blockData.addDataValue("resistance", "30");
    blockData.addDataValue("harvestTool", "pickaxe");
    blockData.addDataValue("harvestLevel", "1");  
}

for i, metal in ore_list {
    var ores = metal.registerParts(ore_types);
    for i, ore in ores {
        var oreData = ore.getData();
        oreData.addDataValue("variants", "minecraft:stone,minecraft:end_stone,minecraft:netherrack");
        oreData.addDataValue("hardness", "3,3,3");
        oreData.addDataValue("resistance", "15,15,15");
        oreData.addDataValue("harvestTool", "pickaxe,pickaxe,pickaxe");
        oreData.addDataValue("harvestLevel", "1,1,1");
    }
}

/*










*/
