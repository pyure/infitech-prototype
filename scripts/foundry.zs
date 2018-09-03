import crafttweaker.liquid.ILiquidStack;

mods.foundry.Melting.clear();
mods.foundry.Casting.clearRecipes();
mods.foundry.Casting.clearMolds(); //Casting doesn't clear yet. https://github.com/Shadows-of-Fire/Foundry/issues/30 Fixed.

var pickaxeHeadMold = <contenttweaker:pickaxe_head_mold>;
var hammerHeadMold = <contenttweaker:hammer_head_mold>;
var swordBladeMold = <contenttweaker:sword_blade_mold>;
var fileHeadMold = <contenttweaker:file_head_mold>;
var axeHeadMold = <contenttweaker:axe_head_mold>;
var shovelHeadMold = <contenttweaker:shovel_head_mold>;
var ingotMold = <foundry:mold>;
var blockMold = <foundry:mold:4>;
var nuggetMold = <foundry:mold:26>;
var gearMold = <foundry:mold:2>;
var rodMold = <foundry:mold:3>;
var plateMold = <foundry:mold:1>;



mods.foundry.Casting.addMold(pickaxeHeadMold);
mods.foundry.Casting.addMold(hammerHeadMold);
mods.foundry.Casting.addMold(swordBladeMold);
mods.foundry.Casting.addMold(fileHeadMold);
mods.foundry.Casting.addMold(axeHeadMold);
mods.foundry.Casting.addMold(shovelHeadMold);
mods.foundry.Casting.addMold(gearMold);
mods.foundry.Casting.addMold(ingotMold);
mods.foundry.Casting.addMold(blockMold);
mods.foundry.Casting.addMold(nuggetMold);
mods.foundry.Casting.addMold(rodMold);
mods.foundry.Casting.addMold(plateMold);

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

val gear_array = [
  "Aluminium",
  "Chrome" ,
  "Gold",
  "Iron" ,
  "TinAlloy" ,
  "Lead",
  "Silver",
  "Titanium",
  "Brass" ,
  "Bronze",
  "Electrum" ,
  "Invar",
  "WroughtIron"
] as string[];

val rod_array = [
  "Aluminium",
  "Chrome",
  "Cobalt",
  "Gold",
  "Iron",
  "Tin",
  "TinAlloy",
  "Copper",
  "Lead",
  "Silver",
  "Titanium",
  "Brass",
  "Bronze",
  "Electrum",
  "Invar",
  "WroughtIron"
] as string[];


val ingot_melting_map = {
  "Aluminium" : 2400,
  "Chrome" : 2400,
  "Cobalt" : 1650,
  "Gold" : 800,
  "Iron" : 1400,
  "Tin" : 800,
  "TinAlloy" : 1100,
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
  "BandedIron" : 1450
} as int[string];

val impure_ore_melting_map = {
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
  "BandedIron" : <liquid:iron>,
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

for name, melting_point in impure_ore_melting_map {
  print("Melting dust, ore and crushed for " ~ name);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["dust" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["ore" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 153, oreDict["crushed" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["oreGravel" ~ name], melting_point);
}

for name, melting_point in ingot_melting_map {
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 144, oreDict["ingot" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 16, oreDict["nugget" ~ name], melting_point);
  mods.foundry.Melting.addRecipe(metal_liquid_map[name] * 1296, oreDict["block" ~ name], melting_point);
}

for name in ingot_melting_map {
  var ingot = oreDict["ingot" ~ name].firstItem;
  var block = oreDict["block" ~ name].firstItem;
  var nugget = oreDict["nugget" ~ name].firstItem;
  var plate = oreDict["plate" ~ name].firstItem;
  
  mods.foundry.Casting.addRecipe(ingot, metal_liquid_map[name] * 144, ingotMold); 
  mods.foundry.Casting.addRecipe(block, metal_liquid_map[name] * 1296, blockMold);
  mods.foundry.Casting.addRecipe(nugget, metal_liquid_map[name] * 16, nuggetMold);
  mods.foundry.Casting.addRecipe(plate, metal_liquid_map[name] * 216, plateMold);
  mods.foundry.CastingTable.addBlockRecipe(block, metal_liquid_map[name] *1296);
  mods.foundry.CastingTable.addIngotRecipe(ingot, metal_liquid_map[name] *144);
  mods.foundry.CastingTable.addPlateRecipe(plate, metal_liquid_map[name] *216);
}

for name in gear_array {
  var gear = oreDict["gear" ~ name].firstItem;
  
  mods.foundry.Casting.addRecipe(gear, metal_liquid_map[name] * 864, gearMold); 
}

for name in rod_array {
  var rod = oreDict["stick" ~ name].firstItem;
  
  mods.foundry.Casting.addRecipe(rod, metal_liquid_map[name] * 144, rodMold);
  mods.foundry.CastingTable.addRodRecipe(rod, metal_liquid_map[name] *144);
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
scripts.functions.disableItem(<foundry:machine:9>);// alloying crucible; don't need it

//Remove wrong recipes from Casting Tables

val liquid_remove_plate = {
"Steel" : <liquid:steel>,
"ElectrumF" : <liquid:liquidelectrum>,
"CupronickelF" : <liquid:liquidcupronickel>,
"IronF" : <liquid:liquidiron>,
"Gold" : <liquid:gold>,
"SignalumF" : <liquid:liquidsignalum>,
"Platinum" : <liquid:platinum>,
"BrassF" : <liquid:liquidbrass>,
"LumiumF" : <liquid:liquidlumium>,
"LeadF" : <liquid:liquidlead>,
"Signalum" : <liquid:signalum>,
"GoldF" : <liquid:liquidgold>,
"SteelF" : <liquid:liquidsteel>,
"Tin" : <liquid:tin>,
"Invar" : <liquid:invar>,
"Copper" : <liquid:copper>,
"Zinc" : <liquid:zinc>,
"NickelF" : <liquid:liquidnickel>,
"InvarF" : <liquid:liquidinvar>,
"Nickel" : <liquid:nickel>,
"Electrum" : <liquid:electrum>,
"TinF" : <liquid:liquidtin>,
"BronzeF" : <liquid:liquidbronze>,
"Osmium" : <liquid:osmium>,
"Brass" : <liquid:brass>,
"CopperF" : <liquid:liquidcopper>,
"Lead" : <liquid:lead>,
"Bronze" : <liquid:bronze>,
"ZincF" : <liquid:liquidzinc>,
"EnderiumF" : <liquid:liquidenderium>,
"AluminiumF" : <liquid:liquidaluminium>,
"OsmiumF" : <liquid:liquidosmium>,
"Aluminium" : <liquid:aluminium>,
"Iron" : <liquid:iron>,
"SilverF" : <liquid:liquidsilver>,
"PlatinumF" : <liquid:liquidplatinum>
} as ILiquidStack[string];

val liquid_remove_block = {
"IronF" : <liquid:liquidiron>,
"BrassF" : <liquid:liquidbrass>,
"LeadF" : <liquid:liquidlead>,
"GoldF" : <liquid:liquidgold>,
"TinF" : <liquid:liquidtin>,
"BronzeF" : <liquid:liquidbronze>,
"CopperF" : <liquid:liquidcopper>,
"AluminiumF" : <liquid:liquidaluminium>,
"SilverF" : <liquid:liquidsilver>,
"PlatinumF" : <liquid:liquidplatinum>,
"ElectrumF" : <liquid:liquidelectrum>,
"CupronickelF" : <liquid:liquidcupronickel>,
"SignalumF" : <liquid:liquidsignalum>,
"LumiumF" : <liquid:liquidlumium>,
"SteelF" : <liquid:liquidsteel>,
"NickelF" : <liquid:liquidnickel>,
"InvarF" : <liquid:liquidinvar>,
"ZincF" : <liquid:liquidzinc>,
"EnderiumF" : <liquid:liquidenderium>,
"OsmiumF" : <liquid:liquidosmium>
} as ILiquidStack[string];

val liquid_remove_ingot = {
"IronF" : <liquid:liquidiron>,
"BrassF" : <liquid:liquidbrass>,
"LeadF" : <liquid:liquidlead>,
"GoldF" : <liquid:liquidgold>,
"TinF" : <liquid:liquidtin>,
"BronzeF" : <liquid:liquidbronze>,
"CopperF" : <liquid:liquidcopper>,
"AluminiumF" : <liquid:liquidaluminium>,
"SilverF" : <liquid:liquidsilver>,
"PlatinumF" : <liquid:liquidplatinum>,
"ElectrumF" : <liquid:liquidelectrum>,
"CupronickelF" : <liquid:liquidcupronickel>,
"SignalumF" : <liquid:liquidsignalum>,
"LumiumF" : <liquid:liquidlumium>,
"SteelF" : <liquid:liquidsteel>,
"NickelF" : <liquid:liquidnickel>,
"InvarF" : <liquid:liquidinvar>,
"ZincF" : <liquid:liquidzinc>,
"EnderiumF" : <liquid:liquidenderium>,
"OsmiumF" : <liquid:liquidosmium>,
"ElementiumF" : <liquid:liquidelvenelementium>,
"TerrasteelF" : <liquid:liquidterrasteel>,
"ManasteelF" : <liquid:liquidmanasteel>
} as ILiquidStack[string];

val liquid_remove_rod = {
"CupronickelF" : <liquid:liquidcupronickel>
} as ILiquidStack[string];

for name in liquid_remove_block {
	mods.foundry.CastingTable.removeBlockRecipe(liquid_remove_block[name]);
}

for name in liquid_remove_ingot {
	mods.foundry.CastingTable.removeIngotRecipe(liquid_remove_ingot[name]);
}

for name in liquid_remove_plate {
	mods.foundry.CastingTable.removePlateRecipe(liquid_remove_plate[name]);
}

for name in liquid_remove_rod {
	mods.foundry.CastingTable.removeRodRecipe(liquid_remove_rod[name]);
}
