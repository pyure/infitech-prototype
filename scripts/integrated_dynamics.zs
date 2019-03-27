
var pulpedBiomass = <thermalfoundation:material:816>;
// inputStack, inputFluid, outputStack, outputFluid, duration
mods.integrateddynamics.DryingBasin.addRecipe(pulpedBiomass, null, <minecraft:dirt>, <liquid:methane> * 30, 620);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(pulpedBiomass * 8, null, <minecraft:dirt>, <liquid:methane> * 240, 620);


// Drying Basin.  Possibly too harsh, if players need to use "Menril" early-game.
recipes.remove(<integrateddynamics:drying_basin>);
recipes.addShaped("infitech3_drying_basin", <integrateddynamics:drying_basin>, [
[<ore:plateIron>, null, <ore:plateIron>], 
[<ore:stickAluminium>, null, <ore:stickAluminium>], 
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// Squeezer.  Also probably too harsh.
recipes.addShaped("it3_squeezer", <integrateddynamics:squeezer>, [
  [<ore:stickIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:stickIron>], 
  [<ore:stickIron>, null, <ore:stickIron>], 
  [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);

// Gregify the plank output of menril logs
recipes.removeShapeless(<integrateddynamics:menril_planks> * 4, [<integrateddynamics:menril_log>]);
recipes.addShapeless(<integrateddynamics:menril_planks> * 2, [<integrateddynamics:menril_log>]);
