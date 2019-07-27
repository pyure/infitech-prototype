import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemTransformer;
import mods.gregtech.recipe.RecipeMap;

//GT Machines
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val fermenter as RecipeMap = RecipeMap.getByName("fermenter");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
val fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");
val implosion_compressor as RecipeMap = RecipeMap.getByName("implosion_compressor");
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val mixer as RecipeMap = RecipeMap.getByName("mixer");
val packer as RecipeMap = RecipeMap.getByName("packer");
val thermal_centrifuge as RecipeMap = RecipeMap.getByName("thermal_centrifuge");
val extruder as RecipeMap = RecipeMap.getByName("extruder");
val forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
val lathe as RecipeMap = RecipeMap.getByName("lathe");

var craftingToolFileEmptyTag = <ore:craftingToolFileEmptyTag>;
var craftingToolSoftHammerEmptyTag = <ore:craftingToolSoftHammerEmptyTag>;
var craftingToolSawEmptyTag = <ore:craftingToolSawEmptyTag>;

//Electric Blast Furnace
blast_furnace.findRecipe(120, [<minecraft:iron_ingot> * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:ingotWroughtIron>.firstItem * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<ore:ingotPigIron>.firstItem * 1], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(480, [<ore:ingotNickel>.firstItem * 4, <ore:ingotChrome>.firstItem * 1], null ).remove();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotNickel> * 4)
	.inputs(<ore:ingotChrome> * 1)
	.fluidInputs([<liquid:helium3> * 25])
	.outputs(<ore:ingotHotNichrome>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 2700)
	.duration(2700)
	.EUt(480)
	.buildAndRegister();
	
blast_furnace.recipeBuilder()
	.inputs(<ore:ingotCompressedWroughtIron> * 1)
	.fluidInputs([<liquid:oxygen> * 500])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 1)
	.property("temperature", 1000)
	.duration(360)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotWroughtIron> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 1000)
	.duration(600)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<ore:ingotPigIron> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 2)
	.property("temperature", 1000)
	.duration(600)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
	.inputs(<minecraft:iron_ingot> * 1)
	.fluidInputs([<liquid:oxygen> * 1000])
	.outputs(<ore:ingotSteelGt>.firstItem * 1, <ore:dustSmallDarkAsh>.firstItem * 3)
	.property("temperature", 1000)
	.duration(1000)
	.EUt(120)
	.buildAndRegister();

blast_furnace.recipeBuilder()
  .inputs(<ore:oreCobaltite> * 1)
  .fluidInputs([<liquid:oxygen> * 3000])
  .outputs(<ore:dustCobaltOxide>.firstItem * 1, <ore:dustArsenicTrioxide>.firstItem * 1)
  .fluidOutputs([<liquid:sulfur_dioxide> * 1000])
  .property("temperature", 1200)
  .duration(320)
  .EUt(120)
  .buildAndRegister();

  
/* EXAMPLES */
/* https://github.com/GregTechCE/GregTech/blob/d99dbaede94f2d622ad56ed05ead32fd85106b45/src/main/java/gregtech/api/recipes/RecipeMaps.java */


// BRONZE
var dustBronze = <gregtech:meta_item_1:2095>;
var dustBronzeTF = <thermalfoundation:material:99>;
recipes.remove(dustBronze * 4);
recipes.remove(dustBronzeTF * 4);
recipes.addShapeless("it3_gt_bronze_dust", <ore:dustBronzeGt>.firstItem * 3, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);


// Stick + Rubber => 3 Torches
var rubber = <metaitem:rubber_drop>;
recipes.addShaped("it3_gt_torch", <minecraft:torch> * 3, [[null, rubber, null], [null, <ore:stickWood>, null], [null, null, null]]);


// DIAMONDS FROM COAL
var diamond = <minecraft:diamond>;
var compressed_coal_ball = <contenttweaker:compressed_coal_ball>;
var coal_chunk = <contenttweaker:coal_chunk>;
var coal_ball = <contenttweaker:coal_ball>;
var coal_dust = <ore:dustCoal>;
var flint = <minecraft:flint>;

compressor.findRecipe(2, [<minecraft:redstone>], null).remove(); // Removed by Gregic Additions already I think

recipes.addShaped("it3_gt_coal_ball", coal_ball, [
  [coal_dust, coal_dust, coal_dust],
  [coal_dust, flint, coal_dust],
  [coal_dust, coal_dust, coal_dust]]);
  
recipes.addShaped("it3_gt_coal_chunk", coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <minecraft:obsidian>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
     
recipes.addShaped("it3_gt_coal_chunk2", coal_chunk, [
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball],
  [compressed_coal_ball, <minecraft:brick_block>, compressed_coal_ball],
  [compressed_coal_ball, compressed_coal_ball, compressed_coal_ball]]);
    
recipes.addShaped("it3_gt_coal_chunk3", coal_chunk, [
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

var dynamite = <metaitem:dynamite>;
recipes.remove(dynamite);

recipes.addShaped("it3_gt_dynamite", dynamite, [
  [null, <ore:string>, null],
  [<ore:paper>, <ore:dustGunpowder>, <ore:paper>],
  [<ore:paper>, <ore:dustGunpowder>, <ore:paper>]]);
  
chemical_reactor.recipeBuilder()
	.inputs(<ore:string> * 1, <ore:paper> * 1)
	.fluidInputs(<liquid:toluene> * 18)
	.outputs(dynamite * 2)
	.duration(30)
	.EUt(126)
	.buildAndRegister();
  
chemical_reactor.recipeBuilder()
	.fluidInputs(<liquid:copper> * 48, <liquid:redstone> * 96)
	.fluidOutputs(<liquid:red_alloy> * 144)
	.duration(100)
	.EUt(512)
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
  	.fluidInputs(<liquid:oxygen> * 3000)
  	.outputs(<ore:dustCobaltAluminate>.firstItem * 3)
  	.duration(80)
  	.EUt(120)
  	.buildAndRegister();

// Oredict of nuclear fuels we can dissolve into UF6
val oreFuelRichUranium = <ore:fuelsDenseUranium>;
val oreFuelMediumUranium = <ore:fuelsMediumUranium>;
val oreFuelSparseUranium = <ore:fuelsSparseUranium>;

oreFuelRichUranium.addAll(<ore:crushedCentrifugedUranium>);
oreFuelRichUranium.addAll(<ore:crushedPurifiedUranium>);
oreFuelRichUranium.addAll(<ore:crushedUranium>);

oreFuelMediumUranium.addAll(<ore:crushedCentrifugedUraninite>);
oreFuelMediumUranium.addAll(<ore:crushedPurifiedUraninite>);
oreFuelMediumUranium.addAll(<ore:crushedUraninite>);

oreFuelSparseUranium.addAll(<ore:crushedCentrifugedPitchblende>);
oreFuelSparseUranium.addAll(<ore:crushedPurifiedPitchblende>);
oreFuelSparseUranium.addAll(<ore:crushedPitchblende>);

// UF6 (Uranium Hexafluoride from Uranium-rich ores, plus traces of radon)
chemical_reactor.recipeBuilder()
	.inputs(oreFuelRichUranium * 1)
	.fluidInputs([<liquid:hydrofluoric_acid> * 1000, <liquid:water> * 1000])
	.fluidOutputs([<liquid:uranium_hexafluoride> * 7000, <liquid:radon> * 1])
	.duration(400)
	.EUt(580)
	.buildAndRegister();
  
// UF6 (Uranium Hexafluoride from Uranium-average ores)
chemical_reactor.recipeBuilder()
	.inputs(oreFuelMediumUranium * 1)
	.fluidInputs([<liquid:hydrofluoric_acid> * 1000, <liquid:water> * 1000])
	.fluidOutputs(<liquid:uranium_hexafluoride> * 4000)
	.duration(400)
	.EUt(580)
	.buildAndRegister();

  // UF6 (Uranium Hexafluoride from Uranium-light ores)
chemical_reactor.recipeBuilder()
	.inputs(oreFuelSparseUranium * 1)
	.fluidInputs([<liquid:hydrofluoric_acid> * 1000, <liquid:water> * 1000])
	.fluidOutputs(<liquid:uranium_hexafluoride> * 2000)
	.duration(400)
	.EUt(580)
	.buildAndRegister();

// Process UF6 to get U235 etc
/* We do U238 *4 rather than tripling the % chance due to quirks in the overclock math.  Otherwise, say, 30% 
   U238 translates into something close to 100% chance in the IV centrifuge while the U235 improves far less. */
val tinyUranium235 = <nuclearcraft:uranium:6>;
val tinyUranium238 = <nuclearcraft:uranium:10>;
val uranium238 = <nuclearcraft:uranium:8>;
val uranium235 = <nuclearcraft:uranium:4>;
val uranium238Oxidized = <nuclearcraft:uranium:9>;
val uranium235Oxidized = <nuclearcraft:uranium:5>;

centrifuge.recipeBuilder()
	.fluidInputs([<liquid:uranium_hexafluoride> * 220])
  .chancedOutput(tinyUranium235 * 2, 500, 100)
  .chancedOutput(uranium238 * 1, 1150, 200)
  .duration(85)
  .EUt(200)
  .buildAndRegister(); 

// Add missing clump->fullsize uranium recipes

recipes.addShapeless("it3_gt_uranium235", uranium235, [tinyUranium235, tinyUranium235, tinyUranium235, tinyUranium235, tinyUranium235, tinyUranium235, tinyUranium235, tinyUranium235, tinyUranium235]);

// Disable default Uranium238 -> TinyPlutonium + TinyUranium235
centrifuge.findRecipe(320, [<ore:dustUranium>.firstItem * 1], null).remove();

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
	

// Low-efficieny (high sanity) glass plate recipe
alloy_smelter.recipeBuilder()		
	.notConsumable(<metaitem:shape.mold.plate>)
	.inputs(<ore:dustGlass> * 2)
	.outputs(<ore:plateGlass>.firstItem * 1)
	.duration(220)
	.EUt(8)
	.buildAndRegister();	
  
//Extruder glass plate
extruder.recipeBuilder()		
	.notConsumable(<metaitem:shape.extruder.plate>)
	.inputs(<ore:dustGlass> * 1)
	.outputs(<ore:plateGlass>.firstItem * 1)
	.duration(20)
	.EUt(32)
	.buildAndRegister();	
  

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

// Remove helium from end dust centrifuge

var tinyPlatinum = <ore:dustTinyPlatinum>.firstItem;
var smallTungstate = <ore:dustSmallTungstate>.firstItem;
var sand = <minecraft:sand>;

centrifuge.findRecipe(20,[<ore:dustEndstone>.firstItem *1], null).remove();

centrifuge.recipeBuilder().inputs(<ore:dustEndstone> *1)
.chancedOutput(tinyPlatinum * 1 , 625, 100)
.chancedOutput(smallTungstate * 1 , 1250,100)
.chancedOutput(sand * 1 , 9000, 100)
.duration(320).EUt(20).buildAndRegister();	
  
  
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

oreCopperQuestOres.addAll(<ore:oreCopper>);
oreCopperQuestOres.addAll(<ore:oreTetrahedrite>);
oreCopperQuestOres.addAll(<ore:oreMalachite>);
oreCopperQuestOres.addAll(<ore:oreChalcopyrite>);
oreCopperQuestOres.addAll(<ore:oreBornite>);
oreCopperQuestOres.addAll(<ore:oreEnargite>);
oreCopperQuestOres.addAll(<ore:oreChalcocite>);
oreCopperQuestOres.addAll(<ore:oreCuprite>);

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

fluid_extractor.findRecipe(32, [<ore:blockConcrete>.firstItem * 1], null).remove();
fluid_extractor.recipeBuilder()
	.inputs(<ore:blockConcrete> * 1)
	.fluidOutputs([<liquid:concrete> * 144])
	.duration(720)
	.EUt(32)
	.buildAndRegister();

furnace.remove(<gregtech:concrete:1>, <gregtech:concrete>);
furnace.remove(<gregtech:concrete:3>, <gregtech:concrete:2>);
furnace.remove(<ore:ingotBlueAlloy>);

//Glowstone
fluid_extractor.recipeBuilder()
	.inputs(<minecraft:glowstone_dust>)
	.fluidOutputs(<fluid:glowstone> * 144)
	.EUt(32)
	.duration(80)
	.buildAndRegister();
	
// Lava from stone/cobble
fluid_extractor.recipeBuilder()
	.inputs(<ore:cobbleStone> | <ore:stone>)
	.fluidOutputs(<fluid:lava> * 1000)
	.EUt(140)
	.duration(410)
	.buildAndRegister();

// Lava from netherrack
fluid_extractor.recipeBuilder()
	.inputs(<ore:netherrack>)
	.fluidOutputs(<fluid:lava> * 1000)
	.EUt(140)
	.duration(330)
	.buildAndRegister();

// Lava from magma block
fluid_extractor.recipeBuilder()
	.inputs(<minecraft:magma>)
	.fluidOutputs(<fluid:lava> * 2000)
	.EUt(140)
	.duration(220)
	.buildAndRegister();
  
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

// Forge Hammer: Gravel -> Flint
forge_hammer.recipeBuilder()
	.inputs([<minecraft:gravel> * 1])
	.outputs(<minecraft:flint> * 1)
	.duration(45)
	.EUt(5)
	.buildAndRegister();


// Forge Hammer: Sugarcane -> Chad
forge_hammer.recipeBuilder()
	.inputs([<ore:sugarcane> * 3])
	.outputs(<ore:dustPaper>.firstItem * 2)
	.duration(105)
	.EUt(4)
	.buildAndRegister();
  

/* ************************* FOOD -> COMPOST **********************************/

// Custom entries. These override the automatic ones below. FYI: Items here do not need to qualify as "food". They'll still generate compost.
val custom_compost_map = {
 <harvestcraft:stockitem> : 20,
 <integrateddynamics:menril_berries> : 70
} as int[IItemStack];

// Automatically generated compost outputs for every food type.
for mod in loadedMods {
 for item in mod.items {
   var food_value = 0; 

   for itemstack, fluidamount in custom_compost_map {
        if (itemstack.definition.name == item.definition.name) {
         // If the item is in the custom entries above, use that provided value instead of automatically generating one.
         print("\t\t CUST: " ~ item.displayName);    
         food_value = fluidamount as int; // Even though the value is int, we need to typecast 
      } else if (item.getSaturationModifier() + item.getHealAmount() > 0) {
         print("\t\t AUTO: " ~ item.displayName); 
         food_value = 20 + (30 * (item.getSaturationModifier() + item.getHealAmount()));      
      }
   }

   if (food_value > 0) {
     mixer.recipeBuilder()
       .fluidInputs([<liquid:water> * food_value])
       .inputs([item * 1])
       .fluidOutputs([<liquid:liquid_compost> * food_value]) // pyure: switch back to compost
       .duration(240)
       .EUt(9)
      .buildAndRegister(); 
   }         
 }
}

/* *****************************************************************************/

// Add single-use batteries to appropriate oredicts
<ore:batteryLVAll>.add(<metaitem:battery.su.lv.mercury>);
<ore:batteryLVAll>.add(<metaitem:battery.su.lv.sulfuricacid>);
<ore:batteryMVAll>.add(<metaitem:battery.su.mv.mercury>);
<ore:batteryMVAll>.add(<metaitem:battery.su.mv.sulfuricacid>);
<ore:batteryHVAll>.add(<metaitem:battery.su.hv.mercury>);
<ore:batteryHVAll>.add(<metaitem:battery.su.hv.sulfuricacid>);

fermenter.recipeBuilder()
	.fluidInputs([<liquid:liquid_compost> * 3000])
	.fluidOutputs(<liquid:mouldy_compost> * 2700)
	.duration(2250)
	.EUt(4)
	.buildAndRegister();

var pulpedBiomass = <thermalfoundation:material:816>;
centrifuge.recipeBuilder()
  .fluidInputs([<liquid:mouldy_compost> * 100])
  .chancedOutput(pulpedBiomass, 2200, 300)
  .chancedOutput(pulpedBiomass, 2200, 300)
  .chancedOutput(pulpedBiomass, 2200, 300)
  .chancedOutput(pulpedBiomass, 2200, 300)
  .fluidOutputs(<liquid:methane> * 56)
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
var cokeOvenBrickUnfired = <metaitem:compressed.clay>;
recipes.remove(cokeOvenBrickUnfired);

mixer.recipeBuilder()
	.inputs(<ore:dustClay> * 4, <minecraft:sand> * 5)
	.fluidInputs(<liquid:water> * 500)
	.outputs(cokeOvenBrickUnfired * 6)
	.duration(20)
	.EUt(16)
	.buildAndRegister();
	
alloy_smelter.findRecipe(8, [<minecraft:sand> * 2, <minecraft:clay_ball> * 1], [null]).remove();

recipes.addShaped("it3_gt_resistor", <metaitem:component.resistor> *1, [
  [null, <minecraft:paper>, null],
  [<ore:wireGtSingleCopper>, <ore:dustCharcoal>, <ore:wireGtSingleCopper>],
  [null, <minecraft:paper>, null]]);

recipes.addShaped("it3_gt_resistor2", <metaitem:component.resistor> *1, [
  [null, <minecraft:paper>, null],
  [<ore:wireFineCopper>, <ore:dustCharcoal>, <ore:wireFineCopper>],
  [null, <minecraft:paper>, null]]);

assembler.recipeBuilder()
  .inputs(<ore:wireFineCopper> * 4, <ore:dustCharcoal> * 1)
  .outputs(<metaitem:component.resistor> * 6)
  .duration(160)
  .EUt(6)
  .buildAndRegister();

var hLeather = <harvestcraft:hardenedleatheritem>;
recipes.remove(<toolbelt:belt>);
recipes.remove(<toolbelt:pouch>);

recipes.addShaped("it3_gt_toolbelt", <toolbelt:belt>, [
[<ore:manaString>, hLeather, <ore:manaString>],
[hLeather, null, hLeather],
[hLeather, <ore:ringSteel>, hLeather]]);

recipes.addShaped("it3_gt_toolbelt_pouch", <toolbelt:pouch>, [
[<ore:wireFineBrass>, <minecraft:gold_nugget>, <ore:wireFineBrass>],
[hLeather, null, hLeather],
[<ore:wireFineBrass>, hLeather, <ore:wireFineBrass>]]);


// Put a Tooltip for Controllers regarding Structure
val controller_array = [
  <meta_tile_entity:gregtech:electric_blast_furnace>,
  <meta_tile_entity:gregtech:primitive_blast_furnace.bronze>,
  <meta_tile_entity:gregtech:vacuum_freezer>,
  <meta_tile_entity:gregtech:implosion_compressor>,
  <meta_tile_entity:gregtech:multi_furnace>,
  <meta_tile_entity:gregtech:pyrolyse_oven>,
  <meta_tile_entity:gregtech:cracker>,
  <meta_tile_entity:gregtech:diesel_engine>,
  <meta_tile_entity:gregtech:distillation_tower>,
  <meta_tile_entity:gregtech:large_turbine.steam>,
  <meta_tile_entity:gregtech:large_turbine.plasma>,
  <meta_tile_entity:gregtech:large_turbine.gas>,
  <meta_tile_entity:gregtech:large_boiler.bronze>,
  <meta_tile_entity:gregtech:large_boiler.steel>,
  <meta_tile_entity:gregtech:large_boiler.titanium>,
  <meta_tile_entity:gregtech:large_boiler.tungstensteel>,
  <meta_tile_entity:gregtech:coke_oven>
] as IItemStack[];

for itemstack in controller_array {
  itemstack.addTooltip(format.lightPurple("See JEI for Structure."));
}

// Nerf U235 extraction - thermal centrifuge
thermal_centrifuge.findRecipe(60, [<ore:crushedPurifiedUranium>.firstItem], null).remove();
thermal_centrifuge.recipeBuilder()		
	.inputs(<ore:crushedPurifiedUranium> * 1)
	.outputs([<ore:crushedCentrifugedUranium>.firstItem *1, <ore:dustTinyUranium235>.firstItem * 1])
	.duration(40)
	.EUt(60)
	.buildAndRegister();
  
// Nerf U235 extraction - macerator
macerator.findRecipe(12, [<ore:crushedPurifiedUranium>.firstItem], null).remove();
macerator.findRecipe(12, [<ore:crushedCentrifugedUraninite>.firstItem], null).remove();

macerator.recipeBuilder()		
	.inputs(<ore:crushedPurifiedUranium> * 1)
	.outputs([<ore:dustPureUranium>.firstItem *1])
  .chancedOutput(<ore:dustTinyUranium235>.firstItem * 1, 500, 100)
	.duration(40)
	.EUt(18)
	.buildAndRegister();

macerator.recipeBuilder()		
	.inputs(<ore:crushedCentrifugedUraninite> * 1)
	.outputs([<ore:dustUraninite>.firstItem *1])
  .chancedOutput(<ore:dustTinyUranium235>.firstItem * 1, 2500, 300)
	.duration(40)
	.EUt(12)
	.buildAndRegister();  

// Outright remove the centrifuge-238 recipe  
centrifuge.findRecipe(5, [<ore:dustPureUranium>.firstItem], null).remove();
centrifuge.recipeBuilder()		
	.inputs(<ore:dustPureUranium> * 1)
	.outputs([<ore:dustUranium>.firstItem *1])
  .chancedOutput(<ore:dustTinyUranium235>.firstItem * 1, 2500, 300)
	.duration(952)
	.EUt(18)
	.buildAndRegister();  

// Low-efficieny (high sanity) rubber bar recipe
alloy_smelter.recipeBuilder()		
	.inputs(<ore:dustRawRubber> * 8, <ore:dustSulfur> * 4)
	.outputs(<ore:ingotRubber>.firstItem * 1)
	.duration(300)
	.EUt(8)
	.buildAndRegister();
	
// Low-efficieny (high sanity) rubber plate recipe
alloy_smelter.recipeBuilder()		
	.inputs(<ore:ingotRubber> * 2)
	.notConsumable(<metaitem:shape.mold.plate>)
	.outputs(<ore:plateRubber>.firstItem * 1)
	.duration(140)
	.EUt(8)
	.buildAndRegister();

//Rubbers extruder recipes

val rubberIngot = [ <ore:ingotRubber>, <ore:ingotStyreneButadieneRubber>, <ore:ingotPlastic>, <ore:ingotSiliconRubber>  ] as IIngredient[];

val rubberDust = [ <ore:dustRubber>, <ore:dustStyreneButadieneRubber>, <ore:dustPlastic>, <ore:dustSiliconRubber> ] as IIngredient[];

val rubberPlate = [ <ore:plateRubber>, <ore:plateStyreneButadieneRubber>, <ore:platePlastic>, <ore:plateSiliconRubber> ] as IOreDictEntry[];

for j, b in rubberIngot {
    extruder.recipeBuilder()
        .inputs(b * 1)
        .notConsumable(<metaitem:shape.extruder.plate>)
        .outputs(rubberPlate[j].firstItem * 1)
        .duration(40)
        .EUt(32)
        .buildAndRegister();
    }

for j, b in rubberDust {
    extruder.recipeBuilder()
        .inputs(b * 1)
        .notConsumable(<metaitem:shape.extruder.plate>)
        .outputs(rubberPlate[j].firstItem * 1)
        .duration(50)
        .EUt(32)
        .buildAndRegister();
    }

// GT:CE's nerf-wood config doesn't work on GT wood.  Arch is too lazy to fix it his side.
recipes.removeByRecipeName("gregtech:rubber_wood_planks");
recipes.addShapeless("it3_gt_rubber_planks", <minecraft:planks:3> * 2, [<gregtech:log>]);

//Stone Rods
var rodStone = <microblockcbe:stone_rod>;

recipes.remove(rodStone);

recipes.addShaped("it3_gt_stone_rod", <ore:rodStone>.firstItem * 1,[
  [craftingToolFileEmptyTag,null,null],
  [null,<ore:stone>,null],
  [null,null,null]]);

recipes.addShaped("it3_gt_cobble_rod", <ore:rodCobblestone>.firstItem * 1,[
  [craftingToolFileEmptyTag,null,null],
  [null,<ore:cobblestone>,null],
  [null,null,null]]);

lathe.recipeBuilder()
	.inputs(<ore:stone> * 1)
	.outputs(<ore:rodStone>.firstItem * 1)
	.duration(200)
	.EUt(24)
	.buildAndRegister();

/*
**** Custom wood hammer recipe.  Disabled because GT adds its own now, but we want to retain the script for future reference. ****
var woodHammer = <gregtech:meta_tool:7>.withTag({"GT.ToolStats": {PrimaryMaterial: "wood", MaxDurability: 16, DigSpeed: 0.5 as float, AttackDamage: 0.5 as float, HarvestLevel: 1}});
  
recipes.addShaped("it3_gt_wood_hammer", woodHammer * 1,[
[<ore:plankWood>,<ore:plankWood>,null],
[<ore:plankWood>,<ore:plankWood>,<ore:stickWood>],
[<ore:plankWood>,<ore:plankWood>,null]]);  
*/

var fertilizer = <forestry:fertilizer_compound>;

// Fertilizer recipes
chemical_reactor.recipeBuilder().inputs(<ore:sand> * 1).fluidInputs(<liquid:liquid_compost> * 50).outputs(fertilizer * 1).duration(35).EUt(14).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:dirt> * 1).fluidInputs(<liquid:liquid_compost> * 50).outputs(fertilizer * 2).duration(35).EUt(14).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:gemApatite> * 1).fluidInputs(<liquid:liquid_compost> * 50).outputs(fertilizer * 12).duration(35).EUt(14).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:combApatite> * 1).fluidInputs(<liquid:liquid_compost> * 50).outputs(fertilizer * 8).duration(35).EUt(14).buildAndRegister();

// Empty all the cells
recipes.addShapeless("it3_gt_empty_tsteel_cell", <metaitem:large_fluid_cell.tungstensteel>, [<metaitem:large_fluid_cell.tungstensteel>]);
recipes.addShapeless("it3_gt_empty_steel_cell", <metaitem:large_fluid_cell.steel>, [<metaitem:large_fluid_cell.steel>]);
recipes.addShapeless("it3_gt_empty_cell", <metaitem:fluid_cell>, [<metaitem:fluid_cell>]);

// Saw + Rubber Log -> 4 Planks
recipes.addShaped("it3_gt_saw_rubber", <minecraft:planks:3> * 4, [[craftingToolSawEmptyTag], [<gregtech:log>]]);

cutting_saw.recipeBuilder()
	.inputs(<gregtech:log> * 1)
	.fluidInputs(<liquid:lubricant> * 1)
	.outputs(<minecraft:planks:3> * 6, <ore:dustWood>.firstItem * 2)
	.duration(200)
	.EUt(8)
	.buildAndRegister();

//Fluid extractor recipe for nuts
<ore:listAllnut>.add(<harvestcraft:hazelnutitem>); // Pyure: reminder, Agrax didn't invent this shitty oredict name.  Came from Pam's.
var pulpBiomass = <thermalfoundation:material:816>;

fluid_extractor.recipeBuilder()
	.inputs(<ore:listAllnut> * 1)
	.fluidOutputs(<liquid:seed.oil> * 65) /* Probably too much seed oil.  At least some of these nuts grow just like any other seeds */
	.chancedOutput(pulpBiomass * 1, 150, 50)
	.duration(80)
	.EUt(8)
	.buildAndRegister();

// Lapotron recipes
var lapotron = <metaitem:lapotron_crystal>;
var lapis = <ore:plateLapis>;
var sodalite = <ore:plateSodalite>;
var lazurite = <ore:plateLazurite>;
var cpu = <metaitem:plate.nano_central_processing_unit>;

recipes.addShaped("it3_gt_lapotron", lapotron * 1, [
  [lapis,<ore:circuitAdvanced>,lapis],
  [lapis,<ore:gemFlawlessSapphire>,lapis],
  [lapis,<ore:circuitAdvanced>,lapis]]);

recipes.addShaped("it3_gt_lapotron2", lapotron * 1, [
  [sodalite,<ore:circuitAdvanced>,sodalite],
  [sodalite,<ore:gemFlawlessSapphire>,sodalite],
  [sodalite,<ore:circuitAdvanced>,sodalite]]);


recipes.addShaped("it3_gt_lapotron4", lapotron * 1, [
  [lazurite,<ore:circuitAdvanced>,lazurite],
  [lazurite,<ore:gemFlawlessSapphire>,lazurite],
  [lazurite,<ore:circuitAdvanced>,lazurite]]);

recipes.addShapeless("it3_gt_lapotron6", lapotron * 1, [
  cpu,<ore:gemExquisiteSapphire>,<ore:stickLapis>
]);

recipes.addShapeless("it3_gt_lapotron7", lapotron * 1, [
  cpu,<ore:gemExquisiteSapphire>,<ore:stickSodalite>
]);

recipes.addShapeless("it3_gt_lapotron8", lapotron * 1, [
  cpu,<ore:gemExquisiteSapphire>,<ore:stickLazurite>
]);

// Steel bullets
var steel_bullet = <foundry:component:14>;
var bullet_mold = <foundry:mold:16>;
fluid_solidifier.recipeBuilder()
	.notConsumable(bullet_mold)
	.fluidInputs([<liquid:steel> * 36])
	.outputs(steel_bullet * 1)
	.duration(45)
	.EUt(4)
	.buildAndRegister();
  
// Steel pellets
var steel_pellet = <foundry:component:15>;
var pellet_mold = <foundry:mold:22>;
fluid_solidifier.recipeBuilder()
	.notConsumable(pellet_mold)
	.fluidInputs([<liquid:steel> * 12])
	.outputs(steel_pellet * 1)
	.duration(35)
	.EUt(4)
	.buildAndRegister();

    
// Remind ppl where Air comes from
mods.jei.JEI.addDescription(<liquid:air>, "Obtained via Air Collector");

// Lubricant recipes: make redstone variants less efficient than talc/soapstone
mixer.findRecipe(4, [<minecraft:redstone> * 1], [<liquid:oil> * 750]).remove();
mixer.findRecipe(4, [<minecraft:redstone> * 1], [<liquid:creosote> * 750]).remove();
mixer.findRecipe(4, [<minecraft:redstone> * 1], [<liquid:seed.oil> * 750]).remove();

mixer.recipeBuilder()
	.inputs(<minecraft:redstone> * 10)
  .fluidInputs([<liquid:oil> * 750])
	.fluidOutputs(<liquid:lubricant> * 750)
	.duration(160)
	.EUt(4)
	.buildAndRegister();
mixer.recipeBuilder()
	.inputs(<minecraft:redstone> * 10)
  .fluidInputs([<liquid:creosote> * 750])
	.fluidOutputs(<liquid:lubricant> * 750)
	.duration(160)
	.EUt(4)
	.buildAndRegister();  
mixer.recipeBuilder()
	.inputs(<minecraft:redstone> * 10)
  .fluidInputs([<liquid:seed.oil> * 750])
	.fluidOutputs(<liquid:lubricant> * 750)
	.duration(160)
	.EUt(4)
	.buildAndRegister();    
  
// Book automation
assembler.recipeBuilder()
  .inputs(<ore:plateWood> * 1, <ore:paper> * 2)
  .fluidInputs([<liquid:glue> * 100])  
  .outputs(<minecraft:book> * 1)
  .duration(220)
  .EUt(9)
  .buildAndRegister();  
  
  
// Wood Plank recipe
recipes.addShaped("it3_gt_wood_plank", <ore:plateWood>.firstItem, [
  [null, craftingToolSoftHammerEmptyTag,null],
  [null,<ore:plankWood>,null],
  [null,<ore:plankWood>,null]]);

  
// Add stand-in recipe for imploding diamond dust
implosion_compressor.recipeBuilder()
	.inputs(<ore:dustDiamond> * 4)
	.property("explosives", 2)
	.outputs(<minecraft:diamond> * 3)
	.duration(20)
	.EUt(30)
	.buildAndRegister();

// We need P-241 varations of a couple recipes that expect P-244, which we don't provide
var improved_ender_eye = <metaitem:quantumeye>;  
var improved_nether_star = <metaitem:quantumstar>;  
chemical_bath.recipeBuilder()
	.inputs(<ore:gemEnderEye> * 1)
  .fluidInputs([<liquid:plutonium241> * 288])
	.outputs(improved_ender_eye * 1)
	.duration(480)
	.EUt(384)
	.buildAndRegister();

chemical_bath.recipeBuilder()
	.inputs(<ore:gemNetherStar> * 1)
  .fluidInputs([<liquid:plutonium241> * 1152])
	.outputs(improved_nether_star * 1)
	.duration(1920)
	.EUt(384)
	.buildAndRegister();


// Split Arsenic Trioxide, which is a IT3 specific substance
electrolyzer.recipeBuilder()
	.inputs(<ore:dustArsenicTrioxide> * 5)
	.outputs(<ore:dustArsenic>.firstItem * 2)
	.fluidOutputs(<liquid:oxygen> * 3000)  
	.duration(620)
  .EUt(90)
	.buildAndRegister();
  

// Allow centrifuges to turn dead bush into dirt with small chance
centrifuge.recipeBuilder()
	.inputs(<minecraft:deadbush> * 1)
  .chancedOutput(<minecraft:dirt> * 1, 800, 300)
  .duration(45)
  .EUt(4)
  .buildAndRegister(); 
  
// Fertilizer (5mb Nitrogen + 6 Phosphorus + 6 Potassium + 2 Calcium + 1 Magnesium -> Fertilizer)
mixer.recipeBuilder()
	.inputs(<ore:dustPhosphorus> * 4, <ore:dustPotassium> * 3, <ore:dustCalcium> * 2)
  .fluidInputs(<liquid:nitrogen> * 5)  
	.outputs(<forestry:fertilizer_compound> * 16)
	.duration(50)
	.EUt(9)
	.buildAndRegister();

// Alternative Cobalt Oxide recipe.  HV, and wastes oxygen.  Use Cobalt Ore EBF variant, people.
var cobaltOxide = <gregtech:meta_item_1:2707>;
chemical_reactor.recipeBuilder()
  .inputs(<ore:dustCobalt> * 1)
  .fluidInputs(<liquid:oxygen> * 2000) // Lots of waste
  .outputs(cobaltOxide)
  .duration(345)
  .EUt(240)
  .buildAndRegister();
  
// This generates some logistical oredicts.  In particular allRegularDust might be useful
for entry in oreDict {
  if entry.name.startsWith("dustTiny") {
   <ore:allTinyDust>.addAll(entry);
  } else if entry.name.startsWith("dustSmall") {
   <ore:allSmallDust>.addAll(entry);
  } else if entry.name.startsWith("dustPure") {
   <ore:allPureDust>.addAll(entry);
  } else if entry.name.startsWith("dustImpure") {
   <ore:allImpureDust>.addAll(entry);
  } else if entry.name.startsWith("dust") {   
   <ore:allRegularDust>.addAll(entry);
  }
}  