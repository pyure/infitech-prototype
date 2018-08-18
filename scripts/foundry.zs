import crafttweaker.liquid.ILiquidStack;

mods.foundry.Melting.clear();
//mods.foundry.Casting.clear(); Casting doesn't clear yet.  https://github.com/Shadows-of-Fire/Foundry/issues/30

var pickaxeHeadMold = <contenttweaker:pickaxe_head_mold>;
var hammerHeadMold = <contenttweaker:hammer_head_mold>;
var swordBladeMold = <contenttweaker:sword_blade_mold>;
var fileHeadMold = <contenttweaker:file_head_mold>;
var axeHeadMold = <contenttweaker:axe_head_mold>;
var shovelHeadMold = <contenttweaker:shovel_head_mold>;
var ingotMold = <foundry:mold>;
var blockMold = <foundry:mold:4>;
var nuggetMold = <foundry:mold:26>;


mods.foundry.Casting.addMold(pickaxeHeadMold);
mods.foundry.Casting.addMold(hammerHeadMold);
mods.foundry.Casting.addMold(swordBladeMold);
mods.foundry.Casting.addMold(fileHeadMold);
mods.foundry.Casting.addMold(axeHeadMold);
mods.foundry.Casting.addMold(shovelHeadMold);

mods.foundry.MoldStation.addRecipe(pickaxeHeadMold, 6, 6, 
[
  0,0,0,0,0,0,
  0,0,0,0,0,0,
  0,0,2,2,0,0,
  0,2,2,2,2,0,
  0,2,0,0,2,0,
  0,0,0,0,0,0
]); 

mods.foundry.MoldStation.addRecipe(hammerHeadMold, 6, 6, 
[
  0,0,0,0,0,0,
  0,0,2,2,0,0,
  0,0,2,2,1,0,
  0,0,2,2,1,0,
  0,0,2,2,0,0,
  0,0,0,0,0,0
]); 

mods.foundry.MoldStation.addRecipe(swordBladeMold, 6, 6, 
[
  0,0,0,0,0,0,
  0,0,0,1,0,0,
  0,0,2,2,0,0,
  0,0,2,2,0,0,
  0,0,2,2,0,0,
  0,0,0,0,0,0
]);
 
mods.foundry.MoldStation.addRecipe(fileHeadMold, 6, 6, 
[
  0,0,0,0,0,0,
  0,0,1,1,0,0,
  0,0,2,2,0,0,
  0,0,2,2,0,0,
  0,0,2,2,0,0,
  0,0,0,0,0,0
]);   
 
mods.foundry.MoldStation.addRecipe(axeHeadMold, 6, 6, 
[
  0,0,0,0,0,0,
  0,0,2,1,0,0,
  0,2,2,1,0,0,
  0,2,2,1,0,0,
  0,0,2,1,0,0,
  0,0,0,0,0,0
]);   
 
mods.foundry.MoldStation.addRecipe(shovelHeadMold, 6, 6, 
[
  0,0,0,0,0,0,
  0,1,1,1,1,0,
  0,2,2,2,2,0,
  0,0,2,2,0,0,
  0,0,0,0,0,0,
  0,0,0,0,0,0
]);   


val tool_array = [
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
  "WroughtIron" 
] as string[];

val ingot_casting_array = [
  "Cobalt"
] as string[];


val ingot_melting_map = {
  "Aluminium" : 2400,
  "Chrome" : 2400,
  "Cobalt" : 1650,
  "Gold" : 800,
  "Iron" : 1400,
  "Tin" : 800,
  "Copper" : 800,
  "Lead" : 1300,
  "Nickel" : 1200,
  "Silver" : 700,
  "Titanium" : 3000,
  "Brass" : 1200,
  "Bronze" : 1100,
  "Electrum" : 1450,
  "Invar" : 1450,
  "WroughtIron" : 1550
} as int[string];


val ore_melting_map = {
  "Cobalt" : 1650,
  "Cobaltite" : 1650,  
  "Gold" : 800,
  "Iron" : 1400,
  "Tin" : 800,
  "Cassiterite" : 800,
  "Copper" : 800,
  "Lead" : 1300,
  "Nickel" : 1200,
  "Silver" : 800,  
  "BandedIron" : 1450,
  "YellowLimonite" : 1450,
  "BrownLimonite" : 1450,
  "Tetrahedrite" : 1500,
  "Pyrite" : 1500,
  "Chalcopyrite" : 1500,
  "Malachite" : 1500
} as int[string];


val metal_liquid_map = {
  "Aluminium" : <liquid:aluminium>,
  "Beryllium" : <liquid:beryllium>,
  "Bismuth" : <liquid:bismuth>,
  "Carbon" : <liquid:carbon>,
  "Chrome" : <liquid:chrome>,
  "Cobalt" : <liquid:cobalt>,
  "Cobaltite" : <liquid:cobalt>,
  "Gallium" : <liquid:gallium>,
  "Gold" : <liquid:gold>,
  "Iridium" : <liquid:iridium>,
  "Iron" : <liquid:iron>,
  "Tin" : <liquid:tin>,
  "Cassiterite" : <liquid:tin>,
  "Copper" : <liquid:copper>,
  "YellowLimonite" : <liquid:iron>,
  "BrownLimonite" : <liquid:iron>,
  "Chalcopyrite" : <liquid:copper>,
  "Pyrite" : <liquid:iron>,
  "BandedIron" : <liquid:copper>,
  "Tetrahedrite" : <liquid:copper>,
  "Malachite" : <liquid:copper>,
  "Lead" : <liquid:lead>,
  "Manganese" : <liquid:manganese>,
  "Molybdenum" : <liquid:molybdenum>,
  "Neodymium" : <liquid:neodymium>,
  "Darmstadtium" : <liquid:darmstadtium>,
  "Nickel" : <liquid:nickel>,
  "Osmium" : <liquid:osmium>,
  "Palladium" : <liquid:palladium>,
  "Platinum" : <liquid:platinum>,
  "Plutonium" : <liquid:plutonium>,
  "Plutonium241" : <liquid:plutonium241>,
  "Silver" : <liquid:silver>,
  "Thorium" : <liquid:thorium>,
  "Titanium" : <liquid:titanium>,
  "Tungsten" : <liquid:tungsten>,
  "Uranium" : <liquid:uranium>,
  "Uranium235" : <liquid:uranium235>,
  "Brass" : <liquid:brass>,
  "Bronze" : <liquid:bronze>,
  "Cupronickel" : <liquid:cupronickel>,
  "Electrum" : <liquid:electrum>,
  "Invar" : <liquid:invar>,
  "Kanthal" : <liquid:kanthal>,
  "Magnalium" : <liquid:magnalium>,
  "Nichrome" : <liquid:nichrome>,
  "PigIron" : <liquid:pig_iron>,
  "StainlessSteel" : <liquid:stainless_steel>,
  "Steel" : <liquid:steel>,
  "TinAlloy" : <liquid:tin_alloy>,
  "Ultimet" : <liquid:ultimet>,
  "WroughtIron" : <liquid:wrought_iron>,
  "Osmiridium" : <liquid:osmiridium>,
  "SterlingSilver" : <liquid:sterling_silver>,
  "RoseGold" : <liquid:rose_gold>,
  "BlackBronze" : <liquid:black_bronze>,
  "BismuthBronze" : <liquid:bismuth_bronze>,
  "BlackSteel" : <liquid:black_steel>,
  "RedSteel" : <liquid:red_steel>,
  "BlueSteel" : <liquid:blue_steel>,
  "DamascusSteel" : <liquid:damascus_steel>,
  "TungstenSteel" : <liquid:tungsten_steel>,
  "CobaltBrass" : <liquid:cobalt_brass>,
  "IronMagnetic" : <liquid:iron_magnetic>,
  "SteelMagnetic" : <liquid:steel_magnetic>,
  "NeodymiumMagnetic" : <liquid:neodymium_magnetic>,
  "TungstenCarbide" : <liquid:tungsten_carbide>,
  "VanadiumSteel" : <liquid:vanadium_steel>,
  "Hssg" : <liquid:hssg>,
  "Hsse" : <liquid:hsse>,
  "Hsss" : <liquid:hsss>,
  "Naquadah" : <liquid:naquadah>,
  "NaquadahAlloy" : <liquid:naquadah_alloy>,
  "NaquadahEnriched" : <liquid:naquadah_enriched>,
  "Naquadria" : <liquid:naquadria>,
  "Tritanium" : <liquid:tritanium>,
  "Duranium" : <liquid:duranium>
} as ILiquidStack[string];


for name in tool_array {
  var pickaxeHead = oreDict["toolHeadPickaxe" ~ name].firstItem;
  var hammerHead = oreDict["toolHeadHammer" ~ name].firstItem;
  var shovelHead = oreDict["toolHeadShovel" ~ name].firstItem;
  var swordBlade = oreDict["toolHeadSword" ~ name].firstItem;
  var axeHead = oreDict["toolHeadAxe" ~ name].firstItem;
  var fileHead = oreDict["toolHeadFile" ~ name].firstItem;
  
  mods.foundry.Casting.addRecipe(pickaxeHead, metal_liquid_map[name] * 432, pickaxeHeadMold); // 3 ingots.  Better than early-game 4 ingots.
  mods.foundry.Casting.addRecipe(hammerHead, metal_liquid_map[name] * 864, hammerHeadMold); // We cannot make this cheaper unless we make hammer-heads melt into fewer ingots
  mods.foundry.Casting.addRecipe(shovelHead, metal_liquid_map[name] * 144, shovelHeadMold); 
  mods.foundry.Casting.addRecipe(swordBlade, metal_liquid_map[name] * 432, swordBladeMold); 
  mods.foundry.Casting.addRecipe(axeHead, metal_liquid_map[name] * 576, axeHeadMold); 
  mods.foundry.Casting.addRecipe(fileHead, metal_liquid_map[name] * 432, fileHeadMold); 
 
}

// Replace all default melting recipes


for name, melting_point in ore_melting_map {
  print("Melting dust, ore and crushed for " ~ name);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["dust" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["ore" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 192, oreDict["crushed" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["oreGravel" ~ name], melting_point);
}

for name, melting_point in ingot_melting_map {
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["ingot" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 16, oreDict["nugget" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 1296, oreDict["block" ~ name], melting_point);
}

for name in ingot_casting_array {
  var ingot = oreDict["ingot" ~ name].firstItem;
  var block = oreDict["block" ~ name].firstItem;
  var nugget = oreDict["nugget" ~ name].firstItem;

  
  mods.foundry.Casting.addRecipe(ingot, metal_liquid_map[name] * 144, ingotMold); 
  mods.foundry.Casting.addRecipe(block, metal_liquid_map[name] * 1296, blockMold);
  mods.foundry.Casting.addRecipe(nugget, metal_liquid_map[name] * 16, nuggetMold); 
}

// LAVA RECIPES
mods.foundry.Melting.addRecipe(<liquid:lava> * 250, <ore:stoneSmooth>, 900);
mods.foundry.Melting.addRecipe(<liquid:lava> * 250, <ore:stoneCobble>, 900);
mods.foundry.Melting.addRecipe(<liquid:lava> * 500, <ore:stoneNetherrack>, 900);
mods.foundry.Melting.addRecipe(<liquid:lava> * 750, <minecraft:magma>, 900);


/* ====================================== MACHINES ============================================= */
var rodCopper = <ore:stickCopper>;
var bricksPrimitive = (<gregtech:metal_casing:1>);
var screwBronze = (<gregtech:meta_item_1:17095>);
var brickFoundry = (<foundry:component:2>);
var screwWroughtIron = (<gregtech:meta_item_1:17197>);
var refractoryCasingBasic = <foundry:componentblock:3>;
var refractoryCasingStandard = <foundry:componentblock:0>;
var caster = <foundry:machine:1>;

// CAULDRON
recipes.remove(<foundry:bronzecauldron>);
recipes.addShaped(<foundry:bronzecauldron>, [
   [<ore:plateBronze>, null, <ore:plateBronze>],
   [<ore:plateBronze>, <ore:craftingToolHardHammer>, <ore:plateBronze>],
   [<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>]]);

// BURNER HEATER
recipes.remove(<foundry:burnerheater>);
recipes.addShaped(<foundry:burnerheater>, [
   [rodCopper, <ore:plateCupronickel>, rodCopper],
   [null, refractoryCasingBasic, null],
   [bricksPrimitive, <minecraft:furnace>, bricksPrimitive]]);

// REFRACTORY CASING BASIC
recipes.remove(refractoryCasingBasic);
recipes.addShaped(refractoryCasingBasic, [
   [screwBronze, brickFoundry, <ore:plateBronze>],
   [brickFoundry, <ore:craftingToolHardHammer>, brickFoundry],
   [<ore:plateBronze>, brickFoundry, screwBronze]]);

// REFACTORY SPOUT
recipes.remove(<foundry:refractoryspout>);
recipes.addShaped(<foundry:refractoryspout>, [
   [<ore:plateBronze>, <minecraft:lever>, null],
   [brickFoundry, brickFoundry, null],
   [<ore:plateBronze>, <ore:craftingToolHardHammer>, null]]);

// MOLD STATION
recipes.remove(<foundry:moldstation>);
recipes.addShaped(<foundry:moldstation>, [
   [brickFoundry, <minecraft:crafting_table>, brickFoundry],
   [brickFoundry, brickFoundry, brickFoundry],
   [brickFoundry, <ore:craftingToolWrench>, brickFoundry]]);

// REFRACTORY CASING STANDARD
recipes.remove(refractoryCasingStandard);
recipes.addShaped(refractoryCasingStandard, [
   [screwWroughtIron, brickFoundry, <ore:plateWroughtIron>],
   [brickFoundry, <ore:craftingToolHardHammer>, brickFoundry],
   [<ore:plateWroughtIron>, brickFoundry, screwWroughtIron]]);

// CASTER   
recipes.remove(caster);
recipes.addShaped(caster, [
   [null, <foundry:mold>, null],
   [<ore:craftingToolWrench>, refractoryCasingStandard, <ore:craftingToolHardHammer>],
   [<ore:gearWroughtIron>, brickFoundry, <ore:gearWroughtIron>]]);

//Basic melting crucible
recipes.remove(<foundry:machine>);
recipes.addShaped(<foundry:machine>, [
	[brickFoundry, <foundry:bronzecauldron>, brickFoundry],
	[<ore:plateBronze>, refractoryCasingBasic, <ore:plateBronze>],
	[brickFoundry, <ore:craftingToolHardHammer>, brickFoundry]]);

//Standard melting crucible
recipes.remove(<foundry:machine:8>);
recipes.addShaped(<foundry:machine:8>, [
	[brickFoundry, <foundry:refractorytankstandard>, brickFoundry],
	[<ore:plateIron>, refractoryCasingStandard, <ore:plateIron>],
	[brickFoundry, <ore:craftingToolHardHammer>, brickFoundry]]);

// DISABLED BLOCKS/ITEMS
scripts.functions.disableItem(<foundry:alloyfurnace>);
scripts.functions.disableItem(<foundry:machine:2>);//alloy mixer, allowing mixing up to 4 metals at once
