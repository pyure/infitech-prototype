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
var craftingToolHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();
var craftingToolSaw = <ore:craftingToolSaw>.firstItem.withEmptyTag();
var stickStone = <ore:rodStone>; // Forge Microblocks, not GT
var oreStickQuartz = <ore:stickQuartz>; // Shouldn't exist already
oreStickQuartz.addAll(<ore:stickQuartzite>);
oreStickQuartz.addAll(<ore:stickNetherQuartz>);
oreStickQuartz.addAll(<ore:stickCertusQuartz>);


// Wood Pipes
recipes.remove(pipeWood);
recipes.addShaped(pipeWood * 6, [
  [stickWood, craftingToolHammer, stickWood],
  [stickWood, <minecraft:glass>, stickWood],
  [stickWood, craftingToolSaw, stickWood]]);

// Cobblestone Pipes
recipes.remove(pipeCobblestone);
recipes.addShaped(pipeCobblestone * 6,[
  [stickCobblestone, craftingToolHammer, stickCobblestone],
  [stickCobblestone, <minecraft:glass>, stickCobblestone],
  [stickCobblestone, craftingToolSaw, stickCobblestone]]);
  
assembler.recipeBuilder()
  .inputs(<ore:stickCobblestone> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeCobblestone * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();

// Stone Pipes
recipes.remove(pipeStone);
recipes.addShaped(pipeStone * 6,[
  [stickStone, craftingToolHammer, stickStone],
  [stickStone, <minecraft:glass>, stickStone],
  [stickStone, craftingToolSaw, stickStone]]);
  
assembler.recipeBuilder()
  .inputs(<ore:stickStone> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeStone * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();


// Quartz Pipes
recipes.remove(pipeQuartz);
recipes.addShaped(pipeQuartz * 6,[
  [oreStickQuartz, craftingToolHammer, oreStickQuartz],
  [oreStickQuartz, <minecraft:glass>, oreStickQuartz],
  [oreStickQuartz, craftingToolSaw, oreStickQuartz]]);
  
assembler.recipeBuilder()
  .inputs(oreStickQuartz * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeQuartz * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();

// Iron Pipes
recipes.remove(pipeIron);
assembler.recipeBuilder()
  .inputs(<ore:stickIron> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeIron * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();

// Gold Pipes
recipes.remove(pipeGold);
recipes.addShaped(pipeGold * 6,[
  [<ore:stickGold>, craftingToolHammer, <ore:stickGold>],
  [<ore:stickGold>, <minecraft:glass>, <ore:stickGold>],
  [<ore:stickGold>, craftingToolSaw, <ore:stickGold>]]);
  
assembler.recipeBuilder()
  .inputs(<ore:stickGold> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeGold * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

// Clay Pipes
recipes.remove(pipeClay);
assembler.recipeBuilder()
  .inputs(<ore:stickClay> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeClay * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// Sandstone Pipes
recipes.remove(pipeSandstone);
assembler.recipeBuilder()
  .inputs(<ore:stickSandstone> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeSandstone * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
  
// Void Pipes
recipes.remove(pipeVoid);
assembler.recipeBuilder()
  .inputs(<minecraft:redstone> * 1, <minecraft:dye> * 1)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeVoid * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// Obsidian Pipes
recipes.remove(pipeObsidian);
assembler.recipeBuilder()
  .inputs(<ore:rodObsidian> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeObsidian * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// Diamond Pipes
recipes.remove(pipeDiamond);
assembler.recipeBuilder()
  .inputs(<ore:stickDiamond> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeDiamond * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// WoodenDiamond Pipes
recipes.remove(pipeWoodenDiamond);
assembler.recipeBuilder()
  .inputs(<ore:stickDiamond> * 3, <ore:stickWood> * 3)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeWoodenDiamond * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
  
// Lazuli Pipes
recipes.remove(pipeLazuli);
assembler.recipeBuilder()
  .inputs(<ore:stickLapis> * 6)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeLazuli * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

// Daizuli Pipes
recipes.remove(pipeDaizuli);
assembler.recipeBuilder()
  .inputs(<ore:stickDiamond> * 3, <ore:stickLapis> * 3)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeDaizuli * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  
 
// Emzuli Pipes
recipes.remove(pipeEmzuli);
assembler.recipeBuilder()
  .inputs(<ore:stickEmerald> * 3, <ore:stickLapis> * 3)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeEmzuli * 3)
  .duration(60)
  .EUt(12)
  .buildAndRegister();  

  
// Stripes Pipes
recipes.remove(pipeStripes);
assembler.recipeBuilder()
  .inputs(pipeObsidian * 1, <ore:gearGold> * 2)
  .property("circuit", 6)
  .fluidInputs(<liquid:glass> * 144)
  .outputs(pipeStripes * 3)
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