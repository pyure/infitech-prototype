//TORCHMASTER
recipes.remove(<torchmaster:feral_flare_lantern>);
recipes.remove(<torchmaster:mega_torch>);

var fineGoldWire = <gregtech:meta_item_2:16026>;
var tritorch = <stevescarts:modulecomponents:29>;
var oreKnife = <ore:craftingToolKnife>;
var manaDiamond = <botania:manaresource:2>;

recipes.addShaped("it3_tm_mega_torch", <torchmaster:mega_torch> *3, [[tritorch, oreKnife, tritorch], 
    [manaDiamond, fineGoldWire, <thaumcraft:salis_mundus>], 
    [<thaumcraft:stone_arcane>,<ore:fenceWood>,<botania:livingrock>]]);