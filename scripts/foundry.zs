import crafttweaker.liquid.ILiquidStack;

var pickaxeHeadMold = <contenttweaker:pickaxe_head_mold>;
var hammerHeadMold = <contenttweaker:hammer_head_mold>;
mods.foundry.Casting.addMold(pickaxeHeadMold);
mods.foundry.Casting.addMold(hammerHeadMold);

mods.foundry.MoldStation.addRecipe(pickaxeHeadMold, 6, 6, 
[
4,4,4,4,4,4,
4,4,4,4,4,4,
4,4,3,3,4,4,
4,3,3,3,3,4,
4,3,4,4,3,4,
4,4,4,4,4,4
]); 

mods.foundry.MoldStation.addRecipe(hammerHeadMold, 6, 6, 
[
4,4,4,4,4,4,
4,4,3,3,4,4,
4,4,3,3,3,4,
4,4,3,3,3,4,
4,4,3,3,4,4,
4,4,4,4,4,4
]); 

val mold_metals = {
  "Aluminium" : <liquid:aluminium>,
  "Beryllium" : <liquid:beryllium>,
  "Bismuth" : <liquid:bismuth>,
  "Carbon" : <liquid:carbon>,
  "Chrome" : <liquid:chrome>,
  "Cobalt" : <liquid:cobalt>,
  "Gallium" : <liquid:gallium>,
  "Gold" : <liquid:gold>,
  "Iridium" : <liquid:iridium>,
  "Iron" : <liquid:iron>,
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
  "Plutonium241" : <liquid:plutonium_241>,
  "Silver" : <liquid:silver>,
  "Thorium" : <liquid:thorium>,
  "Titanium" : <liquid:titanium>,
  "Tungsten" : <liquid:tungsten>,
  "Uranium" : <liquid:uranium_238>,
  "Uranium235" : <liquid:uranium_235>,
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
  "IronMagnetic" : <liquid:iron_magnetic  >,
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

for name, liquidStack in mold_metals {
  var pickaxeHead = oreDict["toolHeadPickaxe" ~ name].firstItem;
  var hammerHead = oreDict["toolHeadHammer" ~ name].firstItem;
  
  // <liquid:tool_metal> is probably not a valid liquidstack
  mods.foundry.Casting.addRecipe(pickaxeHead, mold_metals[name] * 432, pickaxeHeadMold);
  mods.foundry.Casting.addRecipe(hammerHead, mold_metals[name] * 432, hammerHeadMold);
}
