
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
<ore:fluidTankTier1>.add(tankCopper);
<ore:fluidTankTier2>.add(tankTin);
<ore:fluidTankTier2>.add(tankIron);
<ore:fluidTankTier2>.add(tankLead);
<ore:fluidTankTier2>.add(tankBronze);
<ore:fluidTankTier3>.add(tankSilver);
<ore:fluidTankTier3>.add(tankGold);
<ore:fluidTankTier4>.add(tankDiamond);
<ore:fluidTankTier4>.add(tankEmerald);
<ore:fluidTankTier5>.add(tankStar);

// Stone Tank
recipes.addShaped("it3_fluidtank_tankstone", tankStone, [
  [<ore:stone>, <ore:fluidTankTier0>, <ore:stone>], 
  [<ore:fluidTankTier0>, <ore:plateWroughtIron>, <ore:fluidTankTier0>], 
  [<ore:stone>, <ore:fluidTankTier0>, <ore:stone>]]);

// Copper Tank
recipes.addShaped("it3_fluidtank_tankcopper", tankCopper, [
  [<ore:plateCopper>, <ore:fluidTankTier0>, <ore:plateCopper>], 
  [<ore:fluidTankTier0>, <ore:plateWroughtIron>, <ore:fluidTankTier0>], 
  [<ore:plateCopper>, <ore:fluidTankTier0>, <ore:plateCopper>]]);
  
// Tin Tank
recipes.addShaped("it3_fluidtank_tanktin", tankTin, [
  [<ore:plateTin>, <ore:fluidTankTier1>, <ore:plateTin>], 
  [<ore:fluidTankTier1>, <ore:plateAluminium>, <ore:fluidTankTier1>], 
  [<ore:plateTin>, <ore:fluidTankTier1>, <ore:plateTin>]]);
    
// Iron Tank
recipes.addShaped("it3_fluidtank_tankiron", tankIron, [
  [<ore:plateIron>, <ore:fluidTankTier1>, <ore:plateIron>], 
  [<ore:fluidTankTier1>, <ore:plateAluminium>, <ore:fluidTankTier1>], 
  [<ore:plateIron>, <ore:fluidTankTier1>, <ore:plateIron>]]);  

// Lead Tank
recipes.addShaped("it3_fluidtank_tankLead", tankLead, [
  [<ore:plateLead>, <ore:fluidTankTier1>, <ore:plateLead>], 
  [<ore:fluidTankTier1>, <ore:plateAluminium>, <ore:fluidTankTier1>], 
  [<ore:plateLead>, <ore:fluidTankTier1>, <ore:plateLead>]]);    

// Bronze Tank
recipes.addShaped("it3_fluidtank_tankbronze", tankBronze, [
  [<ore:plateBronze>, <ore:fluidTankTier1>, <ore:plateBronze>], 
  [<ore:fluidTankTier1>, <ore:plateAluminium>, <ore:fluidTankTier1>], 
  [<ore:plateBronze>, <ore:fluidTankTier1>, <ore:plateBronze>]]);      

// Silver Tank
recipes.addShaped("it3_fluidtank_tanksilver", tankSilver, [
  [<ore:plateSilver>, <ore:fluidTankTier2>, <ore:plateSilver>], 
  [<ore:fluidTankTier2>, <ore:plateTitanium>, <ore:fluidTankTier2>], 
  [<ore:plateSilver>, <ore:fluidTankTier2>, <ore:plateSilver>]]);   

// Gold Tank
recipes.addShaped("it3_fluidtank_tankGold", tankGold, [
  [<ore:plateGold>, <ore:fluidTankTier2>, <ore:plateGold>], 
  [<ore:fluidTankTier2>, <ore:plateTitanium>, <ore:fluidTankTier2>], 
  [<ore:plateGold>, <ore:fluidTankTier2>, <ore:plateGold>]]);   
    
// Diamond Tank
recipes.addShaped("it3_fluidtank_tankDiamond", tankDiamond, [
  [<ore:plateDiamond>, <ore:fluidTankTier3>, <ore:plateDiamond>], 
  [<ore:fluidTankTier3>, <ore:plateOsmium>, <ore:fluidTankTier3>], 
  [<ore:plateDiamond>, <ore:fluidTankTier3>, <ore:plateDiamond>]]);   
     
// Emerald Tank
recipes.addShaped("it3_fluidtank_tankEmerald", tankEmerald, [
  [<ore:plateEmerald>, <ore:fluidTankTier3>, <ore:plateEmerald>], 
  [<ore:fluidTankTier3>, <ore:plateOsmium>, <ore:fluidTankTier3>], 
  [<ore:plateEmerald>, <ore:fluidTankTier3>, <ore:plateEmerald>]]);   
       
// Star Tank
recipes.addShaped("it3_fluidtank_tankStar", tankStar, [
  [<ore:plateStar>, <ore:fluidTankTier4>, <ore:plateStar>], 
  [<ore:fluidTankTier4>, <ore:plateOsmiridium>, <ore:fluidTankTier4>], 
  [<ore:plateStar>, <ore:fluidTankTier4>, <ore:plateStar>]]);   