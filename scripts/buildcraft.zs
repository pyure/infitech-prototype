import mods.gregtech.recipe.RecipeMap;

val packer as RecipeMap = RecipeMap.getByName("packer");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val lathe = mods.gregtech.recipe.RecipeMap.getByName("lathe");

// Remove gear recipes.  They're covered by GT and Thermal Foundation

scripts.functions.disableItem(<buildcraftcore:gear_wood>);
scripts.functions.disableItem(<buildcraftcore:gear_stone>);
scripts.functions.disableItem(<buildcraftcore:gear_iron>);
scripts.functions.disableItem(<buildcraftcore:gear_gold>);
scripts.functions.disableItem(<buildcraftcore:gear_diamond>);


var pipeWood = <buildcrafttransport:pipe_wood_item>;
var pipeCobblestone = <buildcrafttransport:pipe_cobble_item>;
var pipeStone = <buildcrafttransport:pipe_stone_item>;
var pipeQuartz = <buildcrafttransport:pipe_quartz_item>;
var pipeIron = <buildcrafttransport:pipe_iron_item>;
var pipeGold = <buildcrafttransport:pipe_gold_item>;
var pipeClay = <buildcrafttransport:pipe_clay_item>;
var pipeSandstone = <buildcrafttransport:pipe_sandstone_item>;
var pipeVoid = <buildcrafttransport:pipe_void_item>;
var pipeObsidian = <buildcrafttransport:pipe_obsidian_item>;
var pipeDiamond = <buildcrafttransport:pipe_diamond_item>;
var pipeWoodenDiamond = <buildcrafttransport:pipe_diamond_wood_item>;
var pipeLazuli = <buildcrafttransport:pipe_lapis_item>;
var pipeDaizuli = <buildcrafttransport:pipe_daizuli_item>;
var pipeEmzuli = <buildcrafttransport:pipe_emzuli_item>;
var pipeStripes = <buildcrafttransport:pipe_stripes_item>;
var pipeWoodFluid = <buildcrafttransport:pipe_wood_fluid>;
var pipeCobbleFluid = <buildcrafttransport:pipe_cobble_fluid>;
var pipeStoneFluid = <buildcrafttransport:pipe_stone_fluid>;
var pipeQuartzFluid = <buildcrafttransport:pipe_quartz_fluid>;
var pipeGoldFluid = <buildcrafttransport:pipe_gold_fluid>;
var pipeIronFluid = <buildcrafttransport:pipe_iron_fluid>;
var pipeClayFluid  = <buildcrafttransport:pipe_clay_fluid>;
var pipeSandstoneFluid = <buildcrafttransport:pipe_sandstone_fluid>;
var pipeVoidFluid = <buildcrafttransport:pipe_void_fluid>;
var pipeDiamondFluid = <buildcrafttransport:pipe_diamond_fluid>;
var pipeWoodenDiamondFluid = <buildcrafttransport:pipe_diamond_wood_fluid>;
var pipeWoodenKinesis = <buildcrafttransport:pipe_wood_power>;
var pipeCobblestoneKinesis = <buildcrafttransport:pipe_cobble_power>;
var pipeStoneKinesis = <buildcrafttransport:pipe_stone_power>;
var pipeQuartzKinesis = <buildcrafttransport:pipe_quartz_power>;
var pipeGoldKinesis = <buildcrafttransport:pipe_gold_power>;
var pipeSandstoneKinesis = <buildcrafttransport:pipe_sandstone_power>;

var stickWood = <ore:stickWood>;
var stickCobblestone = <ore:stickCobblestone>;
var sealant = <buildcrafttransport:waterproof>;
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolSawEmptyTag = <ore:craftingToolSawEmptyTag>;
var stickStone = <ore:rodStone>; // Forge Microblocks, not GT
var oreStickQuartz = <ore:stickQuartz>; // Shouldn't exist already
oreStickQuartz.addAll(<ore:stickQuartzite>);
oreStickQuartz.addAll(<ore:stickNetherQuartz>);
oreStickQuartz.addAll(<ore:stickCertusQuartz>);


// Wood Pipes
recipes.remove(pipeWood);
recipes.addShaped("it3_buildcraft_pipe_wood", pipeWood * 6, [
  [stickWood, craftingToolHardHammerEmptyTag, stickWood],
  [stickWood, <minecraft:glass>, stickWood],
  [stickWood, craftingToolSawEmptyTag, stickWood]]);

// Cobblestone Pipes
recipes.remove(pipeCobblestone);
recipes.addShaped("it3_buildcraft_pipe_cobble", pipeCobblestone * 6,[
  [stickCobblestone, craftingToolHardHammerEmptyTag, stickCobblestone],
  [stickCobblestone, <minecraft:glass>, stickCobblestone],
  [stickCobblestone, craftingToolSawEmptyTag, stickCobblestone]]);
  
assembler.recipeBuilder()
  .inputs(<ore:stickCobblestone> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeCobblestone * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();

// Stone Pipes
recipes.remove(pipeStone);
recipes.addShaped("it3_buildcraft_pipe_stone", pipeStone * 6,[
  [stickStone, craftingToolHardHammerEmptyTag, stickStone],
  [stickStone, <minecraft:glass>, stickStone],
  [stickStone, craftingToolSawEmptyTag, stickStone]]);
  
assembler.recipeBuilder()
  .inputs(<ore:stickStone> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeStone * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();


// Quartz Pipes
recipes.remove(pipeQuartz);
recipes.addShaped("it3_buildcraft_pipe_quartz", pipeQuartz * 6,[
  [oreStickQuartz, craftingToolHardHammerEmptyTag, oreStickQuartz],
  [oreStickQuartz, <minecraft:glass>, oreStickQuartz],
  [oreStickQuartz, craftingToolSawEmptyTag, oreStickQuartz]]);
  
assembler.recipeBuilder()
  .inputs(oreStickQuartz * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeQuartz * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();

// Iron Pipes
recipes.remove(pipeIron);
assembler.recipeBuilder()
  .inputs(<ore:stickIron> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeIron * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();

recipes.addShaped("it3_buildcraft_pipe_iron", pipeIron * 6,[
  [<ore:stickIron>, craftingToolHardHammerEmptyTag, <ore:stickIron>],
  [<ore:stickIron>, <minecraft:glass>, <ore:stickIron>],
  [<ore:stickIron>, craftingToolSawEmptyTag, <ore:stickIron>]]);
  
  
// Gold Pipes
recipes.remove(pipeGold);
recipes.addShaped("it3_buildcraft_pipe_gold", pipeGold * 6,[
  [<ore:stickGold>, craftingToolHardHammerEmptyTag, <ore:stickGold>],
  [<ore:stickGold>, <minecraft:glass>, <ore:stickGold>],
  [<ore:stickGold>, craftingToolSawEmptyTag, <ore:stickGold>]]);
  
assembler.recipeBuilder()
  .inputs(<ore:stickGold> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeGold * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

// Clay Pipes

recipes.addShaped("it3_clay_rod_file", <contenttweaker:clay_rod>, [
  [<ore:craftingToolFileEmptyTag>, null], 
  [null, <ore:blockClay>]]);

recipes.remove(pipeClay);
assembler.recipeBuilder()
  .inputs(<ore:stickClay> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeClay * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
recipes.addShaped("it3_buildcraft_pipe_Clay", pipeClay * 6,[
  [<ore:stickClay>, craftingToolHardHammerEmptyTag, <ore:stickClay>],
  [<ore:stickClay>, <minecraft:glass>, <ore:stickClay>],
  [<ore:stickClay>, craftingToolSawEmptyTag, <ore:stickClay>]]);  
  
// Sandstone Pipes
recipes.remove(pipeSandstone);
assembler.recipeBuilder()
  .inputs(<ore:stickSandstone> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeSandstone * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
recipes.addShaped("it3_buildcraft_pipe_Sandstone", pipeSandstone * 6,[
  [<ore:stickSandstone>, craftingToolHardHammerEmptyTag, <ore:stickSandstone>],
  [<ore:stickSandstone>, <minecraft:glass>, <ore:stickSandstone>],
  [<ore:stickSandstone>, craftingToolSawEmptyTag, <ore:stickSandstone>]]);  

recipes.addShaped("it3_sandstone_rod_file", <contenttweaker:sandstone_rod>, [
  [<ore:craftingToolFileEmptyTag>, null], 
  [null, <minecraft:sandstone>]]);
  
// Void Pipes
recipes.remove(pipeVoid);
assembler.recipeBuilder()
  .inputs(<minecraft:redstone> * 1, <minecraft:dye> * 1)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeVoid * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// Obsidian Pipes
recipes.remove(pipeObsidian);
assembler.recipeBuilder()
  .inputs(<ore:stickObsidian> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeObsidian * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
recipes.addShaped("it3_buildcraft_pipe_Obsidian", pipeObsidian * 6,[
  [<ore:stickObsidian>, craftingToolHardHammerEmptyTag, <ore:stickObsidian>],
  [<ore:stickObsidian>, <minecraft:glass>, <ore:stickObsidian>],
  [<ore:stickObsidian>, craftingToolSawEmptyTag, <ore:stickObsidian>]]);  
  
recipes.addShaped("it3_obsidian_rod_file", <contenttweaker:obsidian_rod>, [
  [<ore:craftingToolFileEmptyTag>, null], 
  [null, <ore:blockObsidian>]]);
  
// Diamond Pipes
recipes.remove(pipeDiamond);
assembler.recipeBuilder()
  .inputs(<ore:stickDiamond> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeDiamond * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

recipes.addShaped("it3_buildcraft_pipe_Diamond", pipeDiamond * 6,[
  [<ore:stickDiamond>, craftingToolHardHammerEmptyTag, <ore:stickDiamond>],
  [<ore:stickDiamond>, <minecraft:glass>, <ore:stickDiamond>],
  [<ore:stickDiamond>, craftingToolSawEmptyTag, <ore:stickDiamond>]]);  

  
// WoodenDiamond Pipes
recipes.remove(pipeWoodenDiamond);
assembler.recipeBuilder()
  .inputs(<ore:stickDiamond> * 3, <ore:stickWood> * 3)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeWoodenDiamond * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// Lazuli Pipes
recipes.remove(pipeLazuli);
assembler.recipeBuilder()
  .inputs(<ore:stickLapis> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeLazuli * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

// Daizuli Pipes
recipes.remove(pipeDaizuli);
assembler.recipeBuilder()
  .inputs(<ore:stickDiamond> * 3, <ore:stickLapis> * 3)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeDaizuli * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
 
// Emzuli Pipes
recipes.remove(pipeEmzuli);
assembler.recipeBuilder()
  .inputs(<ore:stickEmerald> * 3, <ore:stickLapis> * 3)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeEmzuli * 8)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

  
// Stripes Pipes
recipes.remove(pipeStripes);
assembler.recipeBuilder()
  .inputs(pipeObsidian * 1, <ore:gearGold> * 2)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeStripes * 8)
  .duration(60)
  .EUt(8)
  .buildAndRegister();  

// Quartz Fluid Pipes
recipes.remove(pipeQuartzFluid);
packer.recipeBuilder()
  .inputs(pipeQuartz * 1, sealant)
  .outputs(pipeQuartzFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();  

// Gold Fluid Pipes
recipes.remove(pipeGoldFluid);
packer.recipeBuilder()
  .inputs(pipeGold * 1, sealant)
  .outputs(pipeGoldFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();  

// Iron Fluid Pipes
recipes.remove(pipeIronFluid);
packer.recipeBuilder()
  .inputs(pipeIron * 1, sealant)
  .outputs(pipeIronFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();  
  
 
// Clay Fluid Pipes
recipes.remove(pipeClayFluid);
packer.recipeBuilder()
  .inputs(pipeClay * 1, sealant)
  .outputs(pipeClayFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();  

// Sandstone Fluid Pipes
recipes.remove(pipeSandstoneFluid);
packer.recipeBuilder()
  .inputs(pipeSandstone * 1, sealant)
  .outputs(pipeSandstoneFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();  

// Void Fluid Pipes
recipes.remove(pipeVoidFluid);
packer.recipeBuilder()
  .inputs(pipeVoid * 1, sealant)
  .outputs(pipeVoidFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();    

// Diamond Fluid Pipes
recipes.remove(pipeDiamondFluid);
packer.recipeBuilder()
  .inputs(pipeDiamond * 1, sealant)
  .outputs(pipeDiamondFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister();  
  
// WoodenDiamond Fluid Pipes
//recipes.remove(pipeWoodenDiamondFluid);
packer.recipeBuilder()
  .inputs(pipeWoodenDiamond * 1, sealant)
  .outputs(pipeWoodenDiamondFluid * 1)
  .duration(30)
  .EUt(8)
  .buildAndRegister(); 


// Wooden Kinesis Pipes
recipes.remove(pipeWoodenKinesis);
assembler.recipeBuilder()
  .inputs(pipeWood * 1)
  .property("circuit", 1)
  .fluidInputs(<liquid:redstone> * 144)
  .outputs(pipeWoodenKinesis * 1)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  


// Cobblestone Kinesis Pipes
recipes.remove(pipeCobblestoneKinesis);
assembler.recipeBuilder()
  .inputs(pipeCobblestone * 1)
  .property("circuit", 1)
  .fluidInputs(<liquid:redstone> * 144)
  .outputs(pipeCobblestoneKinesis * 1)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
 
// Stone Kinesis Pipes
recipes.remove(pipeStoneKinesis);
assembler.recipeBuilder()
  .inputs(pipeStone * 1)
  .property("circuit", 1)
  .fluidInputs(<liquid:redstone> * 144)
  .outputs(pipeStoneKinesis * 1)
  .duration(60)
  .EUt(12)
  .buildAndRegister();   
 
// Quartz Kinesis Pipes
recipes.remove(pipeQuartzKinesis);
assembler.recipeBuilder()
  .inputs(pipeQuartz * 1)
  .property("circuit", 1)
  .fluidInputs(<liquid:redstone> * 144)
  .outputs(pipeQuartzKinesis * 1)
  .duration(60)
  .EUt(12)
  .buildAndRegister(); 
  
  
// Gold Kinesis Pipes
recipes.remove(pipeGoldKinesis);
assembler.recipeBuilder()
  .inputs(pipeGold * 1)
  .property("circuit", 1)
  .fluidInputs(<liquid:redstone> * 144)
  .outputs(pipeGoldKinesis * 1)
  .duration(60)
  .EUt(12)
  .buildAndRegister(); 

// Sandstone Kinesis Pipes
recipes.remove(pipeSandstoneKinesis);
assembler.recipeBuilder()
  .inputs(pipeSandstone * 1)
  .property("circuit", 1)
  .fluidInputs(<liquid:redstone> * 144)
  .outputs(pipeSandstoneKinesis * 1)
  .duration(60)
  .EUt(12)
  .buildAndRegister(); 

// Lathe Recipes for Obsidian, Cobblestone, Sandstone, Clay
lathe.recipeBuilder()
  .inputs(<ore:blockObsidian>)
  .outputs(<ore:stickObsidian>.firstItem * 1)
  .duration(320)
  .EUt(24)
  .buildAndRegister();  
  
lathe.recipeBuilder()
  .inputs(<ore:stoneCobble>)
  .outputs(stickCobblestone.firstItem * 1)
  .duration(200)
  .EUt(24)
  .buildAndRegister();   
  
lathe.recipeBuilder()
  .inputs(<ore:sandstone>)
  .outputs(<ore:stickSandstone>.firstItem * 1)
  .duration(200)
  .EUt(24)
  .buildAndRegister();    
  
lathe.recipeBuilder()
  .inputs(<ore:blockClay>)
  .outputs(<ore:stickClay>.firstItem * 1)
  .duration(200)
  .EUt(24)
  .buildAndRegister();    
  
// Buildcraft wrench recipe
recipes.remove(<buildcraftcore:wrench>);
recipes.addShaped("it3_buildcraftcore_wrench", <buildcraftcore:wrench>, [
  [<ore:ingotIron>, craftingToolHardHammerEmptyTag, <ore:ingotIron>], 
  [null, <ore:ingotIron>, null], 
  [null, <ore:ingotIron>, null]]);
