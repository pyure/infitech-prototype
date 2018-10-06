import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;
import mods.gregtech.recipe.RecipeMap;

//GT Machines
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
val fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");
val mixer as RecipeMap = RecipeMap.getByName("mixer");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val fermenter as RecipeMap = RecipeMap.getByName("fermenter");
val packer as RecipeMap = RecipeMap.getByName("packer");

//Electric Blast Furnace
blast_furnace.findRecipe(120, [<minecraft:iron_ingot> * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:ingotWroughtIron>.firstItem * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:ingotPigIron>.firstItem * 1], [<liquid:oxygen> * 1000]).remove();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotCompressedWroughtIron> * 1)
	.fluidInputs([<liquid:oxygen> * 500])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 1)
	.property("temperature", 1000)
	.duration(480)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotWroughtIron> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 1000)
	.duration(560)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotPigIron> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 1000)
	.duration(560)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<minecraft:iron_ingot> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 3)
	.property("temperature", 1000)
	.duration(800)
	.EUt(120)
	.buildAndRegister();

/* EXAMPLES */
/* https://github.com/GregTechCE/GregTech/blob/d99dbaede94f2d622ad56ed05ead32fd85106b45/src/main/java/gregtech/api/recipes/RecipeMaps.java */


// BRONZE
var dustBronze = <gregtech:meta_item_1:2095>;
var dustBronzeTF = <thermalfoundation:material:99>;
recipes.remove(dustBronze * 4);
recipes.remove(dustBronzeTF * 4);
recipes.addShapeless(<ore:dustBronzeGt>.firstItem * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);


// Stick + Rubber => 3 Torches
var rubber = <metaitem:rubber_drop>;
recipes.addShaped(<minecraft:torch> * 3, [[null, rubber, null], [null, <ore:stickWood>, null], [null, null, null]]);


// DIAMONDS FROM COAL
var diamond = <minecraft:diamond>;
var compressed_coal_ball = <contenttweaker:compressed_coal_ball>;
var coal_chunk = <contenttweaker:coal_chunk>;
var coal_ball = <contenttweaker:coal_ball>;
var coal_dust = <ore:dustCoal>;
var flint = <minecraft:flint>;

compressor.findRecipe(2, [<minecraft:redstone>], null).remove();

recipes.addShaped(coal_ball, [
  [coal_dust, coal_dust, coal_dust],
  [coal_dust, flint, coal_dust],
  [coal_dust, coal_dust, coal_dust]]);
  
recipes.addShaped(coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <minecraft:obsidian>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
     
recipes.addShaped(coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <minecraft:brick_block>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
    
recipes.addShaped(coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <ore:blockIron>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
  
compressor.recipeBuilder()
	.inputs(coal_ball)
	.outputs(compressed_coal_ball)
	.duration(440)
  .EUt(12)
	.buildAndRegister();
  
compressor.recipeBuilder()
	.inputs(coal_chunk)
	.outputs(diamond)
	.duration(440)
  .EUt(12)
	.buildAndRegister();


var resonating_ore = <deepresonance:resonating_ore>;
var resonating_plate = <deepresonance:resonating_plate>;
var resonating_plate_block = <deepresonance:resonating_block>;

furnace.remove(<deepresonance:resonating_plate> * 8, <deepresonance:resonating_ore:0>);
furnace.remove(<deepresonance:resonating_plate> * 8, <deepresonance:resonating_ore:1>);
furnace.remove(<deepresonance:resonating_plate> * 8, <deepresonance:resonating_ore:2>);

furnace.remove(<deepresonance:resonating_plate> , <deepresonance:resonating_ore:0>);
furnace.remove(<deepresonance:resonating_plate> , <deepresonance:resonating_ore:1>);
furnace.remove(<deepresonance:resonating_plate> , <deepresonance:resonating_ore:2>);

electrolyzer.recipeBuilder()
	.inputs(resonating_ore)
	.outputs(resonating_plate_block)
	.duration(820)
  .EUt(2)
	.buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(resonating_plate_block)
	.outputs(resonating_plate * 9)
	.duration(420)
  .EUt(2)
  .buildAndRegister();

var dynamite = <gregtech:meta_item_1:32629>;

chemical_reactor.recipeBuilder()
	.fluidInputs(<liquid:copper> * 144, <liquid:redstone> * 288)
	.fluidOutputs(<liquid:red_alloy> * 144)
	.duration(100)
	.EUt(512)
	.buildAndRegister();

chemical_reactor.recipeBuilder()
	.inputs(<ore:string> * 1, <ore:paper> * 1)
	.fluidInputs(<liquid:toluene> * 36)
	.outputs(dynamite * 1)
	.duration(60)
	.EUt(126)
	.buildAndRegister();

chemical_reactor.recipeBuilder()		//Molten Enderium Base
	.inputs(<ore:dustSilver> * 1, <ore:dustPlatinum> * 1)
	.fluidInputs(<liquid:tin> * 288)
	.fluidOutputs(<liquid:enderium_base> * 576)
	.duration(100)
	.EUt(300)
	.buildAndRegister();

chemical_reactor.recipeBuilder()		//Enderium Dust
	.inputs(<ore:dustEnderPearl> * 1)
	.fluidInputs(<liquid:enderium_base> * 144)
	.outputs(<ore:dustEnderiumGt>.firstItem * 1)
	.duration(200)
	.EUt(30)
	.buildAndRegister();
	
chemical_reactor.recipeBuilder()		//Signalum Dust
	.inputs(<ore:dustSilver> * 1)
	.fluidInputs(<liquid:red_alloy> * 432)
	.outputs(<ore:dustSignalumGt>.firstItem * 4)
	.duration(300)
	.EUt(30)
	.buildAndRegister();

chemical_reactor.recipeBuilder()    //Cobalt aluminate
  	.inputs(<ore:dustCobaltOxide> * 1, <ore:dustAluminium> * 2)
  	.fluidInputs(<liquid:oxygen> * 4000)
  	.outputs(<ore:dustCobaltAluminate>.firstItem * 3)
  	.duration(80)
  	.EUt(120)
  	.buildAndRegister();

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
alloy_smelter.recipeBuilder()		//Blue Alloy
	.inputs(<ore:dustSilver> * 1, <ore:dustCobaltAluminate> * 1)
	.outputs(<ore:ingotBlueAlloy>.firstItem * 2)
	.duration(100)
	.EUt(16)
	.buildAndRegister();
	
alloy_smelter.recipeBuilder()		//Refactory Glass
	.inputs(<minecraft:sand> * 1, <minecraft:clay_ball> * 1)
	.outputs(<foundry:refractoryglass> * 1)
	.duration(60)
	.EUt(4)
	.buildAndRegister();	
	
recipes.remove(dynamite);
recipes.addShaped(dynamite, [
  [null, <ore:string>, null],
  [<ore:paper>, <ore:dustGunpowder>, <ore:paper>],
  [<ore:paper>, <ore:dustGunpowder>, <ore:paper>]]);

var turfMoonCentrifuge = <ore:turfMoonCentrifuge>;
turfMoonCentrifuge.add(<advancedrocketry:moonturf>);
turfMoonCentrifuge.add(<advancedrocketry:moonturf_dark>);

centrifuge.recipeBuilder()
    .inputs(<ore:turfMoonCentrifuge> * 1)
    .outputs(<minecraft:gravel> * 1)
    .fluidOutputs(<liquid:helium3> * 125)
    .duration(320)
    .EUt(30)
    .buildAndRegister();
	
centrifuge.recipeBuilder()		//Saltpeter
	.inputs(<ore:sand> * 4)
	.outputs(<ore:dustSaltpeterGt>.firstItem * 1)
	.duration(400)
	.EUt(30)
	.buildAndRegister();
  
  
// Add oredicts to facilitate some questing
var oreIronQuestOres = <ore:ironQuestOres>;  
var oreCopperQuestOres = <ore:copperQuestOres>;  
var oreTinQuestOres = <ore:tinQuestOres>;  
var oreCoalQuestOres = <ore:coalQuestOres>;  

oreTinQuestOres.add(<gregtech:ore_tin_0>);
oreTinQuestOres.add(<gregtech:ore_cassiterite_0>);
oreTinQuestOres.add(<gregtech:ore_cassiterite_sand_0>);

oreIronQuestOres.add(<gregtech:ore_magnetite_0>);
oreIronQuestOres.add(<gregtech:ore_pyrite_0>);
oreIronQuestOres.add(<gregtech:ore_iron_0>);
oreIronQuestOres.add(<gregtech:ore_yellow_limonite_0>);
oreIronQuestOres.add(<gregtech:ore_banded_iron_0>);
oreIronQuestOres.add(<gregtech:ore_brown_limonite_0>);

oreCoalQuestOres.add(<gregtech:ore_coal_0>);
oreCoalQuestOres.add(<gregtech:ore_lignite_0>);

oreCopperQuestOres.add(<gregtech:ore_copper_0>);
oreCopperQuestOres.add(<gregtech:ore_tetrahedrite_0>);
oreCopperQuestOres.add(<gregtech:ore_malachite_0>);
oreCopperQuestOres.add(<gregtech:ore_chalcopyrite_0>);

//Cement fun
fluid_solidifier.findRecipe(8, [<metaitem:shape.mold.block>], [<liquid:concrete> * 1296]).remove();

fluid_solidifier.recipeBuilder()
	.notConsumable(<metaitem:shape.mold.block>)
	.fluidInputs([<liquid:concrete> * 144])
	.outputs(<minecraft:concrete> * 1)
	.duration(75)
	.EUt(4)
	.buildAndRegister();

mixer.findRecipe(4, [<gregtech:concrete> * 1], [<liquid:water> * 144]).remove();
mixer.recipeBuilder()
	.inputs(<ore:sand> * 2, <ore:gravel> * 2)
	.outputs(<minecraft:concrete_powder> * 1)
	.duration(20)
	.EUt(4)
	.buildAndRegister();

furnace.remove(<gregtech:concrete:1>, <gregtech:concrete>);
furnace.remove(<gregtech:concrete:3>, <gregtech:concrete:2>);
furnace.remove(<ore:ingotBlueAlloy>);

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

//Glowstone
fluid_extractor.recipeBuilder()
	.inputs(<minecraft:glowstone_dust>)
	.fluidOutputs(<fluid:glowstone> * 144)
	.EUt(32)
	.duration(80)
	.buildAndRegister();
	
//Basisc Electronic Circuit
var basicCircuit = <ore:circuitBasic>.firstItem;
recipes.addShaped(basicCircuit, [
[<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>],
[<ore:circuitPrimitive>,<ore:plateSteel>,<ore:circuitPrimitive>],
[<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>,<ore:cableGtSingleRedAlloy>]]);

//NC Alloys
var ferroBoron = <nuclearcraft:alloy:6>;
var toughAlloy = <nuclearcraft:alloy:1>;
var hardCarbon = <nuclearcraft:alloy:2>;
var magnesiumDiboride = <nuclearcraft:alloy:3>;
var lithiumManganeseDioxide = <nuclearcraft:alloy:4>;
var dustManganeseOxide = <nuclearcraft:dust_oxide:2>;
var dustManganeseDioxide = <nuclearcraft:dust_oxide:3>;
var ingotManganeseOxide = <nuclearcraft:ingot_oxide:2>;
var ingotManganeseDioxide = <nuclearcraft:ingot_oxide:3>;

var ingotMagnesium = <gregtech:meta_item_1:10039>;

recipes.remove(ferroBoron);
recipes.remove(toughAlloy);
recipes.remove(hardCarbon);
recipes.remove(magnesiumDiboride);
recipes.remove(lithiumManganeseDioxide);
recipes.remove(dustManganeseOxide);
recipes.remove(dustManganeseDioxide);
recipes.remove(ingotManganeseOxide);
recipes.remove(ingotManganeseDioxide);

furnace.remove(ingotMagnesium, dustManganeseOxide);
furnace.addRecipe(<ore:ingotManganeseOxide>.firstItem * 1, <ore:dustManganeseOxide>);

alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotSteel> * 1, <ore:ingotBoron> * 1)
	.outputs(<ore:ingotFerroboron>.firstItem * 2)
	.duration(200)
	.EUt(16)
	.buildAndRegister();
	
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotFerroboron> * 1, <ore:ingotLithium> * 1)
	.outputs(<ore:ingotTough>.firstItem * 2)
	.duration(300)
	.EUt(16)
	.buildAndRegister();

// Macerator: Gravel -> Flint
macerator.recipeBuilder()
	.inputs([<minecraft:gravel> * 1])
	.outputs(<minecraft:flint> * 1)
	.duration(65)
	.EUt(4)
	.buildAndRegister();
  
  
// Fix Paper recipe consuming slabs (will eventually get fixed on Exidex's side: https://github.com/GregTechCE/GregTech/issues/341)
recipes.remove(<minecraft:paper> * 2);
recipes.addShapeless("thermalfoundation_paper", <minecraft:paper> * 2, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <minecraft:water_bucket>]);
recipes.addShaped("gregtech_paper", <minecraft:paper> * 2, [[null, <minecraft:stone_slab>.reuse(), null], [<ore:dustPaper>, <ore:dustPaper>, <ore:dustPaper>], [null, <minecraft:stone_slab>.reuse(), null]]);

val custom_food_compost_map = {
  /*
  <ore:listAllbeefcooked> : 200,
  <ore:listAllmeatraw> : 200,
  <ore:foodBeefjerky> : 220,
  <ore:foodSouthernstylebreakfast> : 4200,
  <ore:foodMeatfeastpizza> : 4800,
  <ore:foodThankfuldinner> : 4800,
  <ore:foodKoreandinner> : 4800,
  <ore:foodGourmetvenisonburger> : 4200*/
} as int[IOreDictEntry];


for mod in loadedMods {
  for item in mod.items {
    if (item.isFood() && item.getHealAmount() > 0) {
      print("\t\t" ~ item.displayName);      
      
      val food_value = 100 * (item.getSaturationModifier() + item.getHealAmount());
      
      mixer.recipeBuilder()
        .fluidInputs([<liquid:water> * food_value])
        .inputs([item * 1])
        .fluidOutputs([<liquid:liquid_compost> * food_value])
        .duration(265)
        .EUt(8)
        .buildAndRegister();   
    }          
  }
}

for itemstack, fluidAmount in custom_food_compost_map {
  mixer.recipeBuilder()
    .fluidInputs([<liquid:water> * fluidAmount])
    .inputs([itemstack * 1])
    .fluidOutputs([<liquid:liquid_compost> * fluidAmount])
    .duration(265)
    .EUt(8)
    .buildAndRegister();
}

fermenter.recipeBuilder()
	.fluidInputs([<liquid:liquid_compost> * 100])
	.fluidOutputs(<liquid:mouldy_compost> * 100)
	.duration(45)
	.EUt(4)
	.buildAndRegister();

var pulpedBiomass = <thermalfoundation:material:816>;
centrifuge.recipeBuilder()
  .fluidInputs([<liquid:mouldy_compost> * 100])
  .chancedOutput(pulpedBiomass, 2200)
  .chancedOutput(pulpedBiomass, 2200)
  .chancedOutput(pulpedBiomass, 2200)
  .chancedOutput(pulpedBiomass, 2200)
  .fluidOutputs(<liquid:methane> * 125)
  .duration(45)
  .EUt(12)
  .buildAndRegister();

alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotGraphite> * 2, <ore:dustDiamond> * 1)
	.outputs(<ore:ingotHardCarbon>.firstItem * 2)
	.duration(240)
	.EUt(16)
	.buildAndRegister();
	
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotMagnesium> * 1, <ore:ingotBoron> * 2)
	.outputs(<ore:ingotMagnesiumDiboride>.firstItem * 3)
	.duration(200)
	.EUt(16)
	.buildAndRegister();
	
alloy_smelter.recipeBuilder()
	.inputs(<ore:ingotLithium> * 1, <ore:ingotManganeseDioxide> * 1)
	.outputs(<ore:ingotLithiumManganeseDioxide>.firstItem * 2)
	.duration(10)
	.EUt(16)
	.buildAndRegister();
	
chemical_reactor.recipeBuilder()
	.inputs(<ore:dustManganese> * 1)
	.fluidInputs(<liquid:oxygen> * 1000)
	.outputs(<ore:dustManganeseOxide>.firstItem * 1)
	.duration(200)
	.EUt(30)
	.buildAndRegister();

chemical_reactor.recipeBuilder()
	.inputs(<ore:dustManganeseOxide> * 1)
	.fluidInputs(<liquid:oxygen> * 1000)
	.outputs(<ore:dustManganeseDioxide>.firstItem * 1)
	.duration(200)
	.EUt(30)
	.buildAndRegister();


//Magnetite Ore/Dust
furnace.addRecipe(<minecraft:iron_nugget> * 3, <ore:dustMagnetite>);

//PBF and Coke Oven Bricks
var cokeOvenBrick = <gtadditions:ga_multiblock_casing>;
recipes.remove(cokeOvenBrick);

mixer.recipeBuilder()
	.inputs(<ore:dustClay> * 4, <minecraft:sand> * 5)
	.fluidInputs(<liquid:water> * 100)
	.outputs(cokeOvenBrick * 1)
	.duration(20)
	.EUt(16)
	.buildAndRegister();

recipes.addShaped(<metaitem:component.resistor> *2, [
  [null, <minecraft:paper>, null],
  [<ore:wireGtSingleCopper>, <ore:dustCharcoal>, <ore:wireGtSingleCopper>],
  [null, <minecraft:paper>, null]]);

recipes.addShaped(<metaitem:component.resistor> *2, [
  [null, <minecraft:paper>, null],
  [<ore:wireFineCopper>, <ore:dustCharcoal>, <ore:wireFineCopper>],
  [null, <minecraft:paper>, null]]);

val assembler as RecipeMap = RecipeMap.getByName("assembler");
assembler.recipeBuilder()
  .inputs(<ore:wireFineCopper> * 4, <ore:dustCharcoal> * 1)
  .outputs(<metaitem:component.resistor> * 8)
  .duration(160)
  .EUt(6)
  .buildAndRegister();

