
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
