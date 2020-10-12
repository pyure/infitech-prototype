
var tankWood = <fluidtank:blocktank1>;
var tankStone = <fluidtank:blocktank2>;
var tankCopper = <fluidtank:blocktank2:1>;
var tankTin = <fluidtank:blocktank2:2>;
var tankIron = <fluidtank:blocktank3>;
var tankBronze = <fluidtank:blocktank3:1>;
var tankLead = <fluidtank:blocktank3:2>;
var tankSilver = <fluidtank:blocktank3:3>;
var tankGold = <fluidtank:blocktank4>;
var tankDiamond = <fluidtank:blocktank5>;
var tankEmerald = <fluidtank:blocktank6>;
var tankStar = <fluidtank:blocktank7>;

// Oredict Tiers
<ore:fluidTankTier0>.add(tankWood);
<ore:fluidTankTier1>.add(tankStone);
<ore:fluidTankTier2>.add(tankCopper);
<ore:fluidTankTier2>.add(tankTin);
<ore:fluidTankTier3>.add(tankIron);
<ore:fluidTankTier3>.add(tankLead);
<ore:fluidTankTier4>.add(tankBronze);
<ore:fluidTankTier4>.add(tankSilver);
<ore:fluidTankTier5>.add(tankGold);
<ore:fluidTankTier5>.add(tankDiamond);
<ore:fluidTankTier5>.add(tankEmerald);
<ore:fluidTankTier6>.add(tankStar);

// *** TIER 0 ***
// Wood Tank
recipes.addShaped("it3_fluidtank_tankwood", tankWood, [
  [null, null, null], 
  [<ore:blockGlass>, <ore:logWood>, <ore:blockGlass>], 
  [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);  

// *** TIER 1 ***  
// Stone Tank
recipes.addShaped("it3_fluidtank_tankstone", tankStone, [
  [<ore:stone>, <ore:plateWroughtIron>, <ore:stone>], 
  [<ore:stone>, <ore:fluidTankTier0>, <ore:stone>], 
  [<ore:stone>, <ore:fluidTankTier0>, <ore:stone>]]);

// *** TIER 2 ***  
// Copper Tank
recipes.addShaped("it3_fluidtank_tankcopper", tankCopper, [
  [<ore:plateCopper>, <ore:plateStainlessSteel>, <ore:plateCopper>], 
  [<ore:plateCopper>, <ore:fluidTankTier1>, <ore:plateCopper>], 
  [<ore:plateCopper>, <ore:fluidTankTier1>, <ore:plateCopper>]]);
  
// Tin Tank
recipes.addShaped("it3_fluidtank_tanktin", tankTin, [
  [<ore:plateTin>, <ore:plateStainlessSteel>, <ore:plateTin>], 
  [<ore:plateTin>, <ore:fluidTankTier1>, <ore:plateTin>], 
  [<ore:plateTin>, <ore:fluidTankTier1>, <ore:plateTin>]]);

// *** TIER 3 ***  
// Iron Tank
recipes.addShaped("it3_fluidtank_tankiron", tankIron, [
  [<ore:plateIron>, <ore:plateTitanium>, <ore:plateIron>], 
  [<ore:plateIron>, <ore:fluidTankTier2>, <ore:plateIron>], 
  [<ore:plateIron>, <ore:fluidTankTier2>, <ore:plateIron>]]);  
  
// Lead Tank
recipes.addShaped("it3_fluidtank_tankLead", tankLead, [
  [<ore:plateLead>, <ore:plateTitanium>, <ore:plateLead>], 
  [<ore:plateLead>, <ore:fluidTankTier2>, <ore:plateLead>], 
  [<ore:plateLead>, <ore:fluidTankTier2>, <ore:plateLead>]]);    

// *** TIER 4 ***
// Bronze Tank
recipes.addShaped("it3_fluidtank_tankbronze", tankBronze, [
  [<ore:plateBronze>, <ore:plateOsmium>, <ore:plateBronze>], 
  [<ore:plateBronze>, <ore:fluidTankTier3>, <ore:plateBronze>], 
  [<ore:plateBronze>, <ore:fluidTankTier3>, <ore:plateBronze>]]);      

// Silver Tank
recipes.addShaped("it3_fluidtank_tanksilver", tankSilver, [
  [<ore:plateSilver>, <ore:plateOsmium>, <ore:plateSilver>], 
  [<ore:plateSilver>, <ore:fluidTankTier3>, <ore:plateSilver>], 
  [<ore:plateSilver>, <ore:fluidTankTier3>, <ore:plateSilver>]]);   

// *** TIER 5 ***
// Gold Tank
recipes.addShaped("it3_fluidtank_tankGold", tankGold, [
  [<ore:plateGold>, <ore:plateNaquadah>, <ore:plateGold>], 
  [<ore:plateGold>, <ore:fluidTankTier4>, <ore:plateGold>], 
  [<ore:plateGold>, <ore:fluidTankTier4>, <ore:plateGold>]]);   
    
// Diamond Tank
recipes.addShaped("it3_fluidtank_tankDiamond", tankDiamond, [
  [<ore:plateDiamond>, <ore:plateNaquadah>, <ore:plateDiamond>], 
  [<ore:plateDiamond>, <ore:fluidTankTier4>, <ore:plateDiamond>], 
  [<ore:plateDiamond>, <ore:fluidTankTier4>, <ore:plateDiamond>]]);   

// Emerald Tank
recipes.addShaped("it3_fluidtank_tankEmerald", tankEmerald, [
  [<ore:plateEmerald>, <ore:plateNaquadah>, <ore:plateEmerald>], 
  [<ore:plateEmerald>, <ore:fluidTankTier4>, <ore:plateEmerald>], 
  [<ore:plateEmerald>, <ore:fluidTankTier4>, <ore:plateEmerald>]]);   

// *** TIER 5 ***
// Star Tank
recipes.addShaped("it3_fluidtank_tankStar", tankStar, [
  [<ore:plateNetherStar>, <ore:plateNaquadria>, <ore:plateNetherStar>], 
  [<ore:plateNetherStar>, <ore:fluidTankTier5>, <ore:plateNetherStar>], 
  [<ore:plateNetherStar>, <ore:fluidTankTier5>, <ore:plateNetherStar>]]);   