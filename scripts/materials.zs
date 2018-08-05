#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Item;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;


import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.PartDataPiece;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.Color;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.MaterialPartColorSupplier;
import mods.contenttweaker.MaterialPartLocalizedNameSupplier;



// METALS
var Iridium =  MaterialSystem.getMaterialBuilder().setName('Iridium').setColor( 0xFFFFFF).build();
var Bismuth =  MaterialSystem.getMaterialBuilder().setName('Bismuth').setColor( 0x64A0A0).build();
var Lead =  MaterialSystem.getMaterialBuilder().setName('Lead').setColor( 0x8C648C).build();
var Gold =  MaterialSystem.getMaterialBuilder().setName('Gold').setColor( 0xFFFF00).build();
var Copper =  MaterialSystem.getMaterialBuilder().setName('Copper').setColor( 0xFF8000).build();
var Silver =  MaterialSystem.getMaterialBuilder().setName('Silver').setColor( 0xDCDCFF).build();
var Zinc =  MaterialSystem.getMaterialBuilder().setName('Zinc').setColor( 0xFAF0F0).build();
var Iron =  MaterialSystem.getMaterialBuilder().setName('Iron').setColor( 0xAAAAAA).build();
var Cobalt =  MaterialSystem.getMaterialBuilder().setName('Cobalt').setColor( 0x2929BC).build();
var Nickel =  MaterialSystem.getMaterialBuilder().setName('Nickel').setColor( 0xAAAAFF).build();
var Platinum =  MaterialSystem.getMaterialBuilder().setName('Platinum').setColor( 0xFFFF99).build();
var Uranium =  MaterialSystem.getMaterialBuilder().setName('Uranium').setColor( 0x32F032).build();
var Uranium235 =  MaterialSystem.getMaterialBuilder().setName('Uranium 235').setColor( 0x46FA46).build();
var Beryllium =  MaterialSystem.getMaterialBuilder().setName('Beryllium').setColor( 0x64B464).build();
var Naquadah =  MaterialSystem.getMaterialBuilder().setName('Naquadah').setColor( 0x323232).build();
var Coal =  MaterialSystem.getMaterialBuilder().setName('Coal').setColor( 0x464646).build();
var Neodymium =  MaterialSystem.getMaterialBuilder().setName('Neodymium').setColor( 0x777777).build();
var Sulfur =  MaterialSystem.getMaterialBuilder().setName('Sulfur').setColor( 0xC8C800).build();
var Aluminium =  MaterialSystem.getMaterialBuilder().setName('Aluminium').setColor( 0x80C8F0).build();
var Quartzite =  MaterialSystem.getMaterialBuilder().setName('Quartzite').setColor( 0xD2E6D2).build();
var Pyrite =  MaterialSystem.getMaterialBuilder().setName('Pyrite').setColor( 0x967828).build();
var Salt =  MaterialSystem.getMaterialBuilder().setName('Salt').setColor( 0xFFFFFF).build();
var BandedIron =  MaterialSystem.getMaterialBuilder().setName('Banded Iron').setColor( 0x915A5A).build();
var Sphalerite =  MaterialSystem.getMaterialBuilder().setName('Sphalerite').setColor( 0xFFFFFF).build();
var Tin =  MaterialSystem.getMaterialBuilder().setName('Tin').setColor( 0xDCDCDC).build();
var Garnierite =  MaterialSystem.getMaterialBuilder().setName('Garnierite').setColor( 0x32C846).build();
var Magnetite =  MaterialSystem.getMaterialBuilder().setName('Magnetite').setColor( 0x1E1E1E).build();
var Stibnite =  MaterialSystem.getMaterialBuilder().setName('Stibnite').setColor( 0x464646).build();
var Uraninite =  MaterialSystem.getMaterialBuilder().setName('Uraninite').setColor( 0x232323).build();
var Cassiterite =  MaterialSystem.getMaterialBuilder().setName('Cassiterite').setColor( 0xDCDCDC).build();
var Cinnabar =  MaterialSystem.getMaterialBuilder().setName('Cinnabar').setColor( 0x960000).build();
var Pentlandite =  MaterialSystem.getMaterialBuilder().setName('Pentlandite').setColor( 0xA59605).build();
var Phosphor =  MaterialSystem.getMaterialBuilder().setName('Phosphor').setColor( 0xFFFF00).build();
var NetherQuartz =  MaterialSystem.getMaterialBuilder().setName('Nether Quartz').setColor( 0xE6D2D2).build();
var CertusQuartz =  MaterialSystem.getMaterialBuilder().setName('Certus Quartz').setColor( 0xD2D2E6).build();
var Phosphate =  MaterialSystem.getMaterialBuilder().setName('Phosphate').setColor( 0xFFFF00).build();
var Pyrolusite =  MaterialSystem.getMaterialBuilder().setName('Pyrolusite').setColor( 0x9696AA).build();
var RockSalt =  MaterialSystem.getMaterialBuilder().setName('RockSalt').setColor( 0xF0C8C8).build();
var Molybdenite =  MaterialSystem.getMaterialBuilder().setName('Molybdenite').setColor( 0x191919).build();
var Monazite =  MaterialSystem.getMaterialBuilder().setName('Monazite').setColor( 0x324632).build();
var GreenSapphire =  MaterialSystem.getMaterialBuilder().setName('Green Sapphire').setColor( 0x64C882).build();
var VanadiumMagnetite =  MaterialSystem.getMaterialBuilder().setName('Vanadium Magnetite').setColor( 0x23233C).build();
var Galena =  MaterialSystem.getMaterialBuilder().setName('Galena').setColor( 0x643C64).build();
var Barite =  MaterialSystem.getMaterialBuilder().setName('Barite').setColor( 0xE6EBFF).build();
var Calcite =  MaterialSystem.getMaterialBuilder().setName('Calcite').setColor( 0xFAE6DC).build();
var Ilmenite =  MaterialSystem.getMaterialBuilder().setName('Ilmenite').setColor( 0x463732).build();
var Lignite =  MaterialSystem.getMaterialBuilder().setName('Lignite').setColor( 0x644646).build();
var Chalcopyrite =  MaterialSystem.getMaterialBuilder().setName('Chalcopyrite').setColor( 0xA07828).build();
var Chromite =  MaterialSystem.getMaterialBuilder().setName('Chromite').setColor( 0x23140F).build();
var Cobaltite =  MaterialSystem.getMaterialBuilder().setName('Cobaltite').setColor( 0x5050FA).build();
var Wulfenite =  MaterialSystem.getMaterialBuilder().setName('Wulfenite').setColor( 0xFF8000).build();
var Scheelite =  MaterialSystem.getMaterialBuilder().setName('Scheelite').setColor( 0xC88C14).build();
var Tungstate =  MaterialSystem.getMaterialBuilder().setName('Tungstate').setColor( 0x373223).build();
var Saltpeter =  MaterialSystem.getMaterialBuilder().setName('Saltpeter').setColor( 0xE6E6E6).build();
var Pitchblende =  MaterialSystem.getMaterialBuilder().setName('Pitchblende').setColor( 0xC8D200).build();
var Powellite =  MaterialSystem.getMaterialBuilder().setName('Powellite').setColor( 0xFFFF00).build();
var Apatite =  MaterialSystem.getMaterialBuilder().setName('Apatite').setColor( 0xC8C8FF).build();
var Magnesite =  MaterialSystem.getMaterialBuilder().setName('Magnesite').setColor( 0xFAFAB4).build();
var BrownLimonite =  MaterialSystem.getMaterialBuilder().setName('Brown Limonite').setColor( 0xC86400).build();
var Tantalite =  MaterialSystem.getMaterialBuilder().setName('Tantalite').setColor( 0x915028).build();
var YellowLimonite =  MaterialSystem.getMaterialBuilder().setName('Yellow Limonite').setColor( 0xC8C800).build();
var Talc =  MaterialSystem.getMaterialBuilder().setName('Talc').setColor( 0x5AB45A).build();
var Bastnasite =  MaterialSystem.getMaterialBuilder().setName('Bastnasite').setColor( 0xC86E2D).build();
var Malachite =  MaterialSystem.getMaterialBuilder().setName('Malachite').setColor( 0x055F05).build();
var Tetrahedrite =  MaterialSystem.getMaterialBuilder().setName('Tetrahedrite').setColor( 0xC82000).build();
var Sodalite =  MaterialSystem.getMaterialBuilder().setName('Sodalite').setColor( 0x1414FF).build();
var Pyrope =  MaterialSystem.getMaterialBuilder().setName('Pyrope').setColor( 0x783264).build();
var Spodumene =  MaterialSystem.getMaterialBuilder().setName('Spodumene').setColor( 0xBEAAAA).build();
var Bauxite =  MaterialSystem.getMaterialBuilder().setName('Bauxite').setColor( 0xC86400).build();
var Soapstone =  MaterialSystem.getMaterialBuilder().setName('Soapstone').setColor( 0x5F915F).build();
var Cooperite =  MaterialSystem.getMaterialBuilder().setName('Cooperite').setColor( 0xFFFFC8).build();
var Almandine =  MaterialSystem.getMaterialBuilder().setName('Almandine').setColor( 0xFF0000).build();
var Grossular =  MaterialSystem.getMaterialBuilder().setName('Grossular').setColor( 0xC86400).build();
var Redstone =  MaterialSystem.getMaterialBuilder().setName('Redstone').setColor( 0xC80000).build();
var Spessartine =  MaterialSystem.getMaterialBuilder().setName('Spessartine').setColor( 0xFF6464).build();
var Lazurite =  MaterialSystem.getMaterialBuilder().setName('Lazurite').setColor( 0x6478FF).build();
var Lepidolite =  MaterialSystem.getMaterialBuilder().setName('Lepidolite').setColor( 0xF0328C).build();
var Diamond =  MaterialSystem.getMaterialBuilder().setName('Diamond').setColor( 0xC8FFFF).build();
var Glauconite =  MaterialSystem.getMaterialBuilder().setName('Glauconite').setColor( 0x82B43C).build();

var compressed_wrought_iron = MaterialSystem.getMaterialBuilder().setName('Compressed Wrought Iron').setColor(13151460).build();

var ore_byproducts_list = [Iridium,Bismuth,Lead,Gold,Copper,Silver,Zinc,Iron,Cobalt,Nickel,Platinum,Uranium,Uranium235,Beryllium,Naquadah,Coal,Neodymium,Sulfur,Aluminium,Quartzite,Pyrite,Salt,BandedIron,Sphalerite,Tin,Garnierite,Magnetite,Stibnite,Uraninite,Cassiterite,Cinnabar,Pentlandite,Phosphor,NetherQuartz,CertusQuartz,Phosphate,Pyrolusite,RockSalt,Molybdenite,Monazite,GreenSapphire,VanadiumMagnetite,Galena,Barite,Calcite,Ilmenite,Lignite,Chalcopyrite,Chromite,Cobaltite,Wulfenite,Scheelite,Tungstate,Saltpeter,Pitchblende,Powellite,Apatite,Magnesite,BrownLimonite,Tantalite,YellowLimonite,Talc,Bastnasite,Malachite,Tetrahedrite,Sodalite,Pyrope,Spodumene,Bauxite,Soapstone,Cooperite,Almandine,Grossular,Redstone,Spessartine,Lazurite,Lepidolite,Diamond,Glauconite] as Material[];

mods.contenttweaker.MaterialSystem.getPartBuilder().setName("small_crushed_ore").setPartType(MaterialSystem.getPartType("item")).setOreDictName("smallCrushedOre").build();
var metal_list = [] as Material[];
var ore_part_names = ["small_crushed_ore"] as string[]; 
var part_names = ["nugget", "ingot", "plate", "rod"] as string[]; 

for i, metal in ore_byproducts_list {
    metal.registerParts(ore_part_names);
}

for i, metal in metal_list {
    metal.registerParts(part_names);

    var blockData = metal.registerPart("block").getData();
    blockData.addDataValue("hardness", "5");
    blockData.addDataValue("resistance", "30");
    blockData.addDataValue("harvestTool", "pickaxe");
    blockData.addDataValue("harvestLevel", "1");  
}