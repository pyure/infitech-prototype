import mods.pneumaticcraft.pressurechamber;
import mods.pneumaticcraft.plasticmixer;
import mods.gregtech.recipe.RecipeMap;

var ingotWroughtIron = <ore:ingotWroughtIron>.firstItem;
var ingotCompressedWroughtIron = <ore:ingotCompressedWroughtIron>.firstItem;

// Wrought Iron into Compressed Wrought Iron
mods.pneumaticcraft.pressurechamber.addRecipe([ingotWroughtIron * 1], 2.0, [ingotCompressedWroughtIron]);

// Pulp into Paper
for pulp in <ore:dustWood>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([pulp * 3], 1.5, [<minecraft:paper>]);
}

// Coal blocks into diamond
mods.pneumaticcraft.pressurechamber.removeRecipe([<minecraft:diamond> * 1]);
for coal in <ore:blockCoal>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([coal * 8], 4.5, [<minecraft:diamond>]);
}

// Coal ore into 3x Coal
for oreCoal in <ore:oreCoal>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([oreCoal * 1], 1.5, [<minecraft:coal> * 3]);
}
// Lignite ore into 3x Lignite
var lignite = <ore:gemLignite>.firstItem;
for oreLignite in <ore:oreLignite>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([oreLignite * 1], 1.5, [lignite * 3]);
}
// Redstone ore into 3x Redstone
for redstone in <ore:oreRedstone>.items {
	mods.pneumaticcraft.pressurechamber.addRecipe([redstone * 1], 1.5, [<minecraft:redstone> * 7]);
}

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<pneumaticcraft:compressed_iron_block>);
compressor.recipeBuilder()
	.inputs(<ore:ingotIronCompressed> * 9)
	.outputs(<pneumaticcraft:compressed_iron_block>)
	.duration(400).EUt(2)
	.buildAndRegister();

  
// Gregtech adds Compressed Iron with a different oredict name.
var blockCompressedIron = <ore:blockCompressedIron>; // GT version.  Good name.
var blockIronCompressed = <ore:blockIronCompressed>; // PC version.  Weird name.
var ingotCompressedIron = <ore:ingotCompressedIron>; // GT version.  Good name.
var ingotIronCompressed = <ore:ingotIronCompressed>; // PC version.  Weird name.

blockCompressedIron.addAll(blockIronCompressed);
blockIronCompressed.addAll(blockCompressedIron); // doesn't seem to help AE2 recipes
ingotCompressedIron.addAll(ingotIronCompressed);
ingotIronCompressed.addAll(ingotCompressedIron);


// Remove everything from refinery
mods.pneumaticcraft.refinery.removeAllRecipes();

// Add our oil recipes
// Current setup is dumb.  Need to make 2-refineries and 3-refineries useful.
//mods.pneumaticcraft.refinery.addRecipe(int minimumTemperature, ILiquidStack input, ILiquidStack[] outputs);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_light> * 150, [<liquid:sulfuric_heavy_fuel> * 6, <liquid:sulfuric_light_fuel> * 8, <liquid:sulfuric_naphtha> * 8, <liquid:sulfuric_gas> * 20]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_light> * 150, [<liquid:sulfuric_heavy_fuel> * 6, <liquid:sulfuric_light_fuel> * 8, <liquid:sulfuric_naphtha> * 8]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_light> * 150, [<liquid:sulfuric_heavy_fuel> * 6, <liquid:sulfuric_light_fuel> * 8]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_medium> * 50, [<liquid:sulfuric_heavy_fuel> * 8, <liquid:sulfuric_light_fuel> * 20, <liquid:sulfuric_naphtha> * 5, <liquid:sulfuric_gas> * 6]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_medium> * 50, [<liquid:sulfuric_heavy_fuel> * 8, <liquid:sulfuric_light_fuel> * 20, <liquid:sulfuric_naphtha> * 5]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_medium> * 50, [<liquid:sulfuric_heavy_fuel> * 8, <liquid:sulfuric_light_fuel> * 20]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_heavy> * 50, [<liquid:sulfuric_heavy_fuel> * 150, <liquid:sulfuric_light_fuel> * 18, <liquid:sulfuric_naphtha> * 3, <liquid:sulfuric_gas> * 48]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_heavy> * 50, [<liquid:sulfuric_heavy_fuel> * 150, <liquid:sulfuric_light_fuel> * 18, <liquid:sulfuric_naphtha> * 3]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil_heavy> * 50, [<liquid:sulfuric_heavy_fuel> * 150, <liquid:sulfuric_light_fuel> * 18]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil> * 100, [<liquid:sulfuric_heavy_fuel> * 8, <liquid:sulfuric_light_fuel> * 20, <liquid:sulfuric_naphtha> * 5, <liquid:sulfuric_gas> * 6]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil> * 100, [<liquid:sulfuric_heavy_fuel> * 8, <liquid:sulfuric_light_fuel> * 20, <liquid:sulfuric_naphtha> * 5]);
mods.pneumaticcraft.refinery.addRecipe(373, <liquid:oil> * 100, [<liquid:sulfuric_heavy_fuel> * 8, <liquid:sulfuric_light_fuel> * 20]);

// Remove everything from thermopneumaticprocessingplant
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();

// Add in some probably-dumb oil conversion recipes.  Note that the machine already used redstone to make silly conversions
// mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(ILiquidStack liquidInput, IItemStack itemInput, double pressure, double temperature, ILiquidStack output);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oil_heavy> * 100, <minecraft:redstone>, 3.5, 473, <liquid:oil> * 70);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oil> * 100, <minecraft:redstone>, 3.0, 423, <liquid:oil_light> * 70);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:oil_light> * 100, <minecraft:clay_ball>, 2.5, 373, <liquid:kerosene> * 70);

// Heat Frame Cooling: Pulped Biomass -> Slime Ball
var pulped_biomass = <thermalfoundation:material:816>;
var slime_ball = <minecraft:slime_ball>;
mods.pneumaticcraft.heatframecooling.addRecipe(pulped_biomass *4, slime_ball);


// Drones
var vacuum_tube = <gregtech:meta_item_2:32450>;

recipes.removeByRecipeName("pneumaticcraft:drone");
recipes.addShaped("it3_pneumaticcraft_drone", 
  <pneumaticcraft:drone>.withTag({volume: 12000.0 as float, UpgradeInventory: {}, currentAir: 0.0 as float}), [
  [null, <pneumaticcraft:turbine_rotor>, null], 
  [<pneumaticcraft:turbine_rotor>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:turbine_rotor>], 
  [null, <pneumaticcraft:turbine_rotor>, <metaitem:robot.arm.lv>]]);
  
recipes.removeByRecipeName("pneumaticcraft:logistic_drone");
recipes.addShaped("it3_pneumaticcraft_logistics_drone", 
  <pneumaticcraft:drone>.withTag({volume: 12000.0 as float, UpgradeInventory: {}, currentAir: 0.0 as float}), [
  [null, <pneumaticcraft:turbine_rotor>, null], 
  [<pneumaticcraft:turbine_rotor>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:turbine_rotor>], 
  [null, <pneumaticcraft:turbine_rotor>, null]]);
  
recipes.removeByRecipeName("pneumaticcraft:harvesting_drone");
recipes.addShaped("it3_pneumaticcraft_harvesting_drone", 
  <pneumaticcraft:drone>.withTag({volume: 12000.0 as float, UpgradeInventory: {}, currentAir: 0.0 as float}), [
  [null, <pneumaticcraft:turbine_rotor>, null], 
  [<pneumaticcraft:turbine_rotor>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:turbine_rotor>], 
  [null, <pneumaticcraft:turbine_rotor>, <ore:treeSapling>]]);
  
// PC Rotors
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:turbine_blade>]);
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:turbineBladeSteel>.firstItem,<ore:plateRedAlloy>.firstItem,<ore:wireFineGold>.firstItem * 12], 3.0, [<pneumaticcraft:turbine_blade>]);

// Plastic Mixer Alternatives
mods.pneumaticcraft.plasticmixer.removeAllRecipes();
mods.pneumaticcraft.plasticmixer.addSolidifyOnlyRecipe(<liquid:plastic> * 50, <pneumaticcraft:plastic>);  // 50mb Plastic makes a plastic sheet
mods.pneumaticcraft.plasticmixer.addSolidifyOnlyRecipe(<liquid:oil_light> * 600, <pneumaticcraft:plastic>); // 600mb light oil makes a plastic sheet
mods.pneumaticcraft.plasticmixer.addSolidifyOnlyRecipe(<liquid:oil_medium> * 400, <pneumaticcraft:plastic>); // 400mb Medium oil makes a plastic sheet
mods.pneumaticcraft.plasticmixer.addSolidifyOnlyRecipe(<liquid:oil_heavy> * 200, <pneumaticcraft:plastic>); // 200mb Heavy oil makes a plastic sheet
mods.pneumaticcraft.plasticmixer.addRecipe(<liquid:oil> * 400, <pneumaticcraft:plastic>, 373);  // 400mb Raw Oil (same quality as Medium) makes a plastic sheet and can be produced from a plastic sheet


// Exploding dusts into gems, cuz realism
val dust_to_gem_array = [
  "Ruby",
  "Almandine",
  "BlueTopaz", 
  "Cinnabar", 
  "GreenSapphire", 
  "Lazurite", 
  "Sapphire",
  "Sodalite", 
  "Tanzanite",
  "Topaz", 
  "CertusQuartz", 
  "Quartzite", 
  "Jasper",
  "Olivine", 
  "Diamond",
  "NetherQuartz",
  "Lignite",
  "Opal",
  "Amethyst",
  "Lapis",
  "Apatite",
  "GarnetRed",
  "GarnetYellow",
  "Vinteum",
  "Monazite",
  "Coke",
  "Coal"
] as string[];

var lossChance = 55; // This percentage of dusts will get voided, on average.

for name in dust_to_gem_array {
  var gem = oreDict["gem" ~ name].firstItem;
  var dust = oreDict["dust" ~ name];
  mods.pneumaticcraft.explosioncrafting.addRecipe(dust, gem, lossChance);
}


