import mods.gregtech.recipe.RecipeMap;
import mods.integrateddynamics.MechanicalSqueezer;
import mods.integrateddynamics.Squeezer;

val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
val fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");

var pulpedBiomass = <thermalfoundation:material:816>;
// inputStack, inputFluid, outputStack, outputFluid, duration
mods.integrateddynamics.DryingBasin.addRecipe(pulpedBiomass, null, <minecraft:dirt>, <liquid:methane> * 30, 620);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(pulpedBiomass * 1, null, <minecraft:dirt>, <liquid:methane> * 30, 70);


// Drying Basin.  Possibly too harsh, if players need to use "Menril" early-game.
recipes.remove(<integrateddynamics:drying_basin>);
recipes.addShaped("infitech3_drying_basin", <integrateddynamics:drying_basin>, [
[<ore:plateIron>, null, <ore:plateIron>], 
[<ore:stickAluminium>, null, <ore:stickAluminium>], 
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

// Squeezer.  Also probably too harsh.
recipes.remove(<integrateddynamics:squeezer>);
recipes.addShaped("it3_squeezer", <integrateddynamics:squeezer>, [
  [<ore:stickIron>, <minecraft:heavy_weighted_pressure_plate>, <ore:stickIron>], 
  [<ore:stickIron>, null, <ore:stickIron>], 
  [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);

// Gregify the plank output of menril logs
recipes.removeShapeless(<integrateddynamics:menril_planks> * 4, [<integrateddynamics:menril_log>]);
recipes.addShapeless("it3_ID_menril_planks", <integrateddynamics:menril_planks> * 2, [<integrateddynamics:menril_log>]);

// Gregify extraction of liquid menril from logs and planks.  We arbitrarily added a bonus berry output to log processing
fluid_extractor.recipeBuilder()
  .inputs([<integrateddynamics:menril_log> * 1])
  .fluidOutputs([<liquid:menrilresin> * 1000 ])
  .chancedOutput(<integrateddynamics:menril_berries>, 200, 50)
  .duration(180)
  .EUt(5)
  .buildAndRegister();

fluid_extractor.recipeBuilder()
  .inputs([<integrateddynamics:menril_planks> * 1])
  .fluidOutputs([<liquid:menrilresin> * 250 ])
  .duration(180)
  .EUt(5)
  .buildAndRegister();
  


// Menril Blocks, GT Way
fluid_solidifier.recipeBuilder()
	.notConsumable(<metaitem:shape.mold.block>)
	.fluidInputs([<liquid:menrilresin> * 1000])
	.outputs(<integrateddynamics:crystalized_menril_block> * 1)
	.duration(85)
	.EUt(4)
	.buildAndRegister();
  
// Squeezer shouldn't produce so much bonemeal
Squeezer.removeRecipesWithOutput(<minecraft:dye:15> * 6, 1);  
Squeezer.addRecipe(<minecraft:bone>, <minecraft:dye:15> * 5);

MechanicalSqueezer.removeRecipesWithOutput(<minecraft:dye:15> * 6, 1, <minecraft:dye:15> * 2, 0.5, <minecraft:dye:15> * 2, 0.5);  
MechanicalSqueezer.addRecipe(<minecraft:bone>, <minecraft:dye:15> * 5);

 