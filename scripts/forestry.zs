import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");

var engineBiogas = <forestry:engine_biogas>;
var engineClock = <forestry:engine_clockwork>;
var enginePeat = <forestry:engine_peat>;
var plateCopper = <ore:plateCopper>;
var HHammer = <ore:craftingToolHardHammer>;
var wrench = <ore:craftingToolWrench>;
var blockGlass = <ore:blockGlass>;
var gearCopper = <ore:gearCopper>;
var piston = <ore:craftingPiston>;
var plateBronze = <ore:plateBronze>;
var gearBronze = <ore:gearBronze>;
var frameIron = <ore:frameGtIron>;
var frameBronze = <ore:frameGtBronze>;
var gtTank = <meta_tile_entity:gregtech:bronze_tank>;
var robotArmLV = <metaitem:robot.arm.lv>;
var sturdyCasing = <forestry:sturdy_machine>;
var gearGtSmallSteel = <ore:gearSmallSteel>;
var electricMotorLV = <metaitem:electric.motor.lv>;
var tinRotor = <ore:rotorTin>;
var plateCupronickel = <ore:plateCupronickel>;
var sensorMV = <metaitem:sensor.mv>;
var electricPistonMV = <metaitem:electric.piston.mv>;
var hardenedCasing = <forestry:hardened_machine>;
var gearGtSmallAluminium = <ore:gearSmallAluminium>;
var emitterMV = <metaitem:emitter.mv>;
var plateIron = <ore:plateIron>;
var ringIron = <ore:ringIron>;
var cauldron = <minecraft:cauldron>;
var steelScrew = <ore:screwSteel>;
var gaCoil = <metaitem:component.small.coil>;
var carpenter = <forestry:carpenter>;
var fermenter = <forestry:fermenter>;
var moistener = <forestry:moistener>;
var rainMaker = <forestry:rainmaker>;
var rainTank = <forestry:raintank>;
var thermionicFabricator = <forestry:fabricator>;
var moltenRedstone = <liquid:redstone>;
var worktable = <forestry:worktable>;
var steelCasing = <gregtech:metal_casing:4>;


// These are covered by GT meta tools
recipes.remove(<forestry:bronze_pickaxe>);
recipes.remove(<forestry:bronze_shovel>);


// Gears
recipes.remove(<forestry:gear_bronze>);
recipes.addShaped(<ore:gearBronze>.firstItem, [
  [<ore:stickBronze>, <ore:plateBronze>, <ore:stickBronze>], 
  [<ore:plateBronze>, <ore:craftingToolScrewdriver>, <ore:plateBronze>], 
  [<ore:stickBronze>, <ore:plateBronze>, <ore:stickBronze>]]);

recipes.remove(<forestry:gear_copper>);
recipes.addShaped(<ore:gearCopper>.firstItem, [
  [<ore:stickCopper>, <ore:plateCopper>, <ore:stickCopper>], 
  [<ore:plateCopper>, <ore:craftingToolScrewdriver>, <ore:plateCopper>], 
  [<ore:stickCopper>, <ore:plateCopper>, <ore:stickCopper>]]);
  
recipes.remove(<forestry:gear_tin>);
recipes.addShaped(<ore:gearTin>.firstItem, [
  [<ore:stickTin>, <ore:plateTin>, <ore:stickTin>], 
  [<ore:plateTin>, <ore:craftingToolScrewdriver>, <ore:plateTin>], 
  [<ore:stickTin>, <ore:plateTin>, <ore:stickTin>]]);  

//MACHINES
recipes.remove(engineBiogas);
recipes.addShaped(engineBiogas, [
	[plateBronze, plateBronze, plateBronze],
	[HHammer, blockGlass, wrench],
	[gearBronze, frameBronze, gearBronze]]);

recipes.remove(engineClock);
recipes.addShaped(engineClock, [
	[plateCopper, plateCopper, plateCopper],
	[HHammer, <ore:stickLongBronze>, wrench],
	[gearCopper, frameIron, gearCopper]]);

recipes.remove(enginePeat);
recipes.addShaped(enginePeat, [
	[plateCopper, plateCopper, plateCopper],
	[HHammer, blockGlass, wrench],
	[gearCopper, frameIron, gearCopper]]);

recipes.remove(carpenter);
recipes.addShaped(carpenter, [
	[plateCopper, gtTank, plateCopper],
	[robotArmLV, sturdyCasing, robotArmLV],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);

recipes.remove(fermenter);
recipes.addShaped(fermenter, [
	[plateCopper, tinRotor, plateCopper],
	[gtTank, sturdyCasing, gtTank],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);

recipes.remove(moistener);
recipes.addShaped(moistener, [
	[plateCopper, gtTank, plateCopper],
	[tinRotor, sturdyCasing, tinRotor],
	[gearGtSmallSteel, electricMotorLV, gearGtSmallSteel]]);

recipes.remove(rainMaker);
recipes.addShaped(rainMaker, [
	[plateCupronickel, sensorMV, plateCupronickel],
	[electricPistonMV, hardenedCasing, electricPistonMV],
	[gearGtSmallAluminium, emitterMV, gearGtSmallAluminium]]);

recipes.remove(rainTank);
recipes.addShaped(rainTank, [
	[plateIron, ringIron, plateIron],
	[plateIron, HHammer, plateIron],
	[plateIron, cauldron, plateIron]]);

recipes.remove(thermionicFabricator);
mods.forestry.Carpenter.addRecipe(thermionicFabricator, [[steelScrew, gtTank, steelScrew],[gaCoil, sturdyCasing, gaCoil],[steelScrew, electricMotorLV, steelScrew]], 300, moltenRedstone * 1008, worktable);

recipes.remove(sturdyCasing);
recipes.addShaped(sturdyCasing, [
	[plateBronze, steelScrew, plateBronze],
	[steelScrew, steelCasing, steelScrew],
	[plateBronze, steelScrew, plateBronze]]);

assembler.recipeBuilder()
	.inputs(steelCasing *1, plateBronze *4)
	.outputs(sturdyCasing)
	.duration(400)
	.EUt(2)
	.buildAndRegister();

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockCopper = <forestry:resource_storage:1>;
var blockTin = <forestry:resource_storage:2>;
var blockBronze = <forestry:resource_storage:3>;
var blockApatite = <forestry:resource_storage>;

recipes.remove(blockApatite);

compressor.recipeBuilder()
	.inputs(<ore:gemApatite> * 9)
	.outputs(blockApatite)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(blockCopper);
recipes.remove(blockTin);
recipes.remove(blockBronze);
recipes.remove(<forestry:charcoal>);

// Disable forestry scoop in lieue of GT version
scripts.functions.disableItem(<forestry:scoop>);

// Smoker requires flint and steel

var smoker = <forestry:smoker>;
recipes.remove(smoker);
recipes.addShaped("forestry_smoker", smoker, [[<ore:leather>, <ore:stickWood>, <ore:stickTin>], [<ore:leather>, <forestry:ash>, <ore:plateTin>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

//Worktable
recipes.remove(worktable);
recipes.addShaped("forestry_worktable", worktable, [
[<ore:screwIron>, <minecraft:book>, <ore:screwIron>],
[<ore:craftingToolSaw>, <minecraft:crafting_table>, <ore:craftingToolScrewdriver>],
[<ore:screwIron>, <ore:chestWood>, <ore:screwIron>]]);

//Remove bronze recipe
recipes.removeByRecipeName("forestry:bronze_ingot");

// WOOD PILES
var woodPile = <forestry:wood_pile>;

recipes.remove(woodPile);
recipes.addShapeless(woodPile, [<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]);

//Charcoal pile
var bricksBronze = <gregtech:metal_casing>;

mods.forestry.CharcoalWall.removeWall(<minecraft:dirt>);
mods.forestry.CharcoalWall.removeWall(<minecraft:clay>);
mods.forestry.CharcoalWall.removeWall(<forestry:loam>);
mods.forestry.CharcoalWall.removeWall(<minecraft:end_stone>);
mods.forestry.CharcoalWall.removeWall(<minecraft:end_bricks>);
mods.forestry.CharcoalWall.removeWall(<minecraft:gravel>);
mods.forestry.CharcoalWall.removeWall(<minecraft:netherrack>);
mods.forestry.CharcoalWall.removeWall(<forestry:ash_brick>);

mods.forestry.CharcoalWall.addWall(<minecraft:dirt>, 5);
mods.forestry.CharcoalWall.addWall(<minecraft:gravel>, 6);
mods.forestry.CharcoalWall.addWall(<minecraft:nether_brick>, 6);
mods.forestry.CharcoalWall.addWall(<forestry:ash_brick>, 7);
mods.forestry.CharcoalWall.addWall(<forestry:loam>, 7);
mods.forestry.CharcoalWall.addWall(<minecraft:end_bricks>, 9);
mods.forestry.CharcoalWall.addWall(<gregtech:metal_casing>, 10);
mods.forestry.CharcoalWall.addWall(<advancedrocketry:blastbrick>, 12);


//Fluid extract honey drops
fluid_extractor.recipeBuilder().inputs([<ore:dropHoney> * 1]).fluidOutputs([<liquid:for.honey> * 150 ]).duration(240).EUt(12).buildAndRegister();



  