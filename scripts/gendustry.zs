import mods.gregtech.recipe.RecipeMap;

val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");

var scooporator = <gendustry:industrial_scoop:100>.withTag({charge: 0});
var modulePower = <gendustry:power_module>;
var scoop = <ore:craftingToolScoopEmptyTag>;
var frameUpgrade = <gendustry:upgrade_frame>;
var ingotAluminium = <ore:ingotAluminium>;
var ingotGold = <ore:ingotGold>;
var blockRedstone = <ore:blockRedstone>;
var gearAluminium = <ore:gearAluminium>;
var circuitBasic = <ore:circuitBasic>;
var tankMutagen = <gendustry:mutagen_tank>;
var plateAluminium = <ore:plateAluminium>;
var pressurePlateLightWeighted = <minecraft:light_weighted_pressure_plate>;
var beeReceptacle = <gendustry:bee_receptacle>;
var glassPane = <ore:paneGlass>;
var mutagenProducer = <gendustry:mutagen_producer>;
var pipeSmallBronze = <ore:pipeSmallBronze>;
var hullMachineHV = <gregtech:machine:503>;
var processorGenetics = <gendustry:genetics_processor>;
var swarmer = <forestry:alveary.swarmer>;
var apiaryIndustrial = <gendustry:industrial_apiary>;
var imprinter = <gendustry:imprinter>;
var liquifier = <gendustry:liquifier>;
var extractor = <gendustry:extractor>;
var transposer = <gendustry:transposer>;
var replicator = <gendustry:replicator>;
var mutatron = <gendustry:mutatron_advanced>;
var sampler = <gendustry:sampler>;

//Recipes
scripts.functions.disableItem(<gendustry:mutatron>);
scripts.functions.disableItem(<gendustry:mutagen_producer>);

//recipes.remove(scooporator);
recipes.addShaped("it3_gendustry_scooporator", scooporator, [
[null, null, scoop.noReturn()],
[null, <minecraft:diamond>, null],
[modulePower, null, null]]);

//recipes.remove(frameUpgrade);
recipes.addShaped("it3_gendustry_frame_upgrade", frameUpgrade, [
[ingotAluminium, ingotGold, ingotAluminium],
[blockRedstone, null, blockRedstone],
[ingotAluminium, ingotGold, ingotAluminium]]);

//recipes.remove(modulePower);
recipes.addShaped("it3_gendustry_module_power", modulePower, [
[gearAluminium, ingotGold, gearAluminium],
[circuitBasic, blockRedstone, circuitBasic],
[gearAluminium, ingotGold, gearAluminium]]);

//recipes.remove(tankMutagen);
recipes.addShaped("it3_gendustry_tank_mutagen", tankMutagen, [
[plateAluminium,glassPane, plateAluminium],
[plateAluminium,glassPane, plateAluminium],
[plateAluminium,glassPane, plateAluminium]]);

//recipes.remove(beeReceptacle);	
recipes.addShaped("it3_gendustry_bee_receptacle", beeReceptacle, [
[ingotAluminium, ingotAluminium, ingotAluminium],
[ingotAluminium, glassPane, ingotAluminium],
[blockRedstone, pressurePlateLightWeighted, blockRedstone]]);


//recipes.remove(apiaryIndustrial);	
recipes.addShaped("it3_gendustry_indust_apiary", apiaryIndustrial, [
[swarmer, processorGenetics, swarmer],
[modulePower, hullMachineHV, modulePower],
[gearAluminium, beeReceptacle, gearAluminium]]);
	
//recipes.remove(imprinter);
recipes.addShaped("it3_gendustry_imprinter", imprinter, [
[gearAluminium, processorGenetics, gearAluminium],
[beeReceptacle, hullMachineHV, beeReceptacle],
[gearAluminium, modulePower, gearAluminium]]);
	
//recipes.remove(liquifier);
recipes.addShaped("it3_gendustry_liquifier", liquifier, [
[gearAluminium, tankMutagen, gearAluminium],
[ingotAluminium, hullMachineHV, gearAluminium],
[gearAluminium, modulePower, gearAluminium]]);
	
//recipes.remove(extractor);
recipes.addShaped("it3_gendustry_extractor", extractor, [
[gearAluminium, tankMutagen, gearAluminium],
[processorGenetics, hullMachineHV, processorGenetics],
[gearAluminium, modulePower, gearAluminium]]);
	
//recipes.remove(transposer);
recipes.addShaped("it3_gendustry_transposer", transposer, [
[pipeSmallBronze, tankMutagen, pipeSmallBronze],
[processorGenetics, hullMachineHV, processorGenetics],
[gearAluminium, modulePower, gearAluminium]]);
	
//recipes.remove(replicator);
recipes.addShaped("it3_gendustry_replicator", replicator, [
[gearAluminium, processorGenetics, gearAluminium],
[modulePower, hullMachineHV, modulePower],
[gearAluminium, processorGenetics, gearAluminium]]);
	
//recipes.remove(mutatron);
recipes.addShaped("it3_gendustry_mutatron", mutatron, [
[beeReceptacle, processorGenetics, gearAluminium],
[modulePower, hullMachineHV, beeReceptacle],
[beeReceptacle, tankMutagen, gearAluminium]]);

//recipes.remove(sampler);
recipes.addShaped("it3_gendustry_sampler", sampler, [
[gearAluminium, processorGenetics, gearAluminium],
[beeReceptacle, hullMachineHV, <minecraft:diamond>],
[gearAluminium, tankMutagen, gearAluminium]]);


var mutagen_comb = <contenttweaker:mutagen_bee_comb>;
var mutagen_liquid = <liquid:mutagen>;

// Add fluid extractor recipe for mutagen comb, since we cannot remove the vanilla mutagen recipes from the mutagen producer
fluid_extractor.recipeBuilder()
	.inputs(mutagen_comb * 1)
	.fluidOutputs([mutagen_liquid * 1337])
	.duration(800)
	.EUt(512)
	.buildAndRegister();