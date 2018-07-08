import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.gregtech.recipe.RecipeMap;

recipes.remove(<libvulpes:structuremachine> * 16);
recipes.addShaped(<libvulpes:structuremachine> * 2, [[<ore:rodIron>, <ore:plateIron>, <ore:rodIron>],[<ore:plateIron>, <ore:wrench> , <ore:plateIron>], [<ore:rodIron>, <ore:plateIron>, <ore:rodIron>]]);

recipes.remove(<libvulpes:advstructuremachine> * 16);
recipes.addShaped(<libvulpes:advstructuremachine> * 2, [[<ore:rodTitanium>, <ore:plateTitanium>, <ore:rodTitanium>],[<ore:plateTitanium>, <ore:wrench> , <ore:plateTitanium>], [<ore:rodTitanium>, <ore:plateTitanium>, <ore:rodTitanium>]]);

// These are covered by GT meta tools
recipes.remove(<nuclearcraft:pickaxe_boron>);
recipes.remove(<nuclearcraft:pickaxe_tough>);
recipes.remove(<nuclearcraft:pickaxe_hard_carbon>);
recipes.remove(<nuclearcraft:pickaxe_boron_nitride>);

recipes.remove(<nuclearcraft:axe_boron>);
recipes.remove(<nuclearcraft:axe_tough>);
recipes.remove(<nuclearcraft:axe_hard_carbon>);
recipes.remove(<nuclearcraft:axe_boron_nitride>);

recipes.remove(<nuclearcraft:sword_boron>);
recipes.remove(<nuclearcraft:sword_tough>);
recipes.remove(<nuclearcraft:sword_hard_carbon>);
recipes.remove(<nuclearcraft:sword_boron_nitride>);

recipes.remove(<nuclearcraft:hoe_boron>);
recipes.remove(<nuclearcraft:hoe_tough>);
recipes.remove(<nuclearcraft:hoe_hard_carbon>);
recipes.remove(<nuclearcraft:hoe_boron_nitride>);

recipes.remove(<nuclearcraft:shovel_boron>);
recipes.remove(<nuclearcraft:shovel_tough>);
recipes.remove(<nuclearcraft:shovel_hard_carbon>);
recipes.remove(<nuclearcraft:shovel_boron_nitride>);

// Spaxelhoe removal
recipes.remove(<nuclearcraft:spaxelhoe_boron>);
recipes.remove(<nuclearcraft:spaxelhoe_tough>);
recipes.remove(<nuclearcraft:spaxelhoe_hard_carbon>);
recipes.remove(<nuclearcraft:spaxelhoe_boron_nitride>);

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

var blockUranium = <nuclearcraft:ingot_block:4>;
var blockBoron = <nuclearcraft:ingot_block:5>;
var blockZirconium = <nuclearcraft:ingot_block:10>;
var blockGraphite = <nuclearcraft:ingot_block:8>;
var blockBeryllium = <nuclearcraft:ingot_block:9>;
var blockCopper = <nuclearcraft:ingot_block>;
var blockTin = <nuclearcraft:ingot_block:1>;
var blockLead = <nuclearcraft:ingot_block:2>;
var blockThorium = <nuclearcraft:ingot_block:3>;
var blockLithium = <nuclearcraft:ingot_block:6>;
var blockMagnesium = <nuclearcraft:ingot_block:7>;

recipes.remove(blockUranium);
recipes.remove(blockBoron);
recipes.remove(blockZirconium);
recipes.remove(blockGraphite);
recipes.remove(blockBeryllium);
recipes.remove(blockCopper);
recipes.remove(blockTin);
recipes.remove(blockLead);
recipes.remove(blockThorium);
recipes.remove(blockLithium);
recipes.remove(blockMagnesium);
recipes.remove(<nuclearcraft:block_depleted_curium>);
recipes.remove(<nuclearcraft:block_depleted_americium>);
recipes.remove(<nuclearcraft:block_depleted_plutonium>);
recipes.remove(<nuclearcraft:block_depleted_neptunium>);
recipes.remove(<nuclearcraft:block_depleted_uranium>);
recipes.remove(<nuclearcraft:block_depleted_thorium>);
recipes.remove(<nuclearcraft:block_depleted_californium>);
recipes.remove(<nuclearcraft:block_depleted_berkelium>);

compressor.recipeBuilder()
	.inputs(<ore:ingotUranium> * 9)
	.outputs(blockUranium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotBoron> * 9)
	.outputs(blockBoron)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotZirconium> * 9)
	.outputs(blockZirconium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotCurium246> * 9)
	.outputs(<nuclearcraft:block_depleted_curium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotAmericium243> * 9)
	.outputs(<nuclearcraft:block_depleted_americium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotPlutonium242> * 9)
	.outputs(<nuclearcraft:block_depleted_plutonium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotNeptunium237> * 9)
	.outputs(<nuclearcraft:block_depleted_neptunium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotUranium238> * 9)
	.outputs(<nuclearcraft:block_depleted_uranium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotThorium230> * 9)
	.outputs(<nuclearcraft:block_depleted_thorium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotCalifornium252> * 9)
	.outputs(<nuclearcraft:block_depleted_californium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotBerkelium247> * 9)
	.outputs(<nuclearcraft:block_depleted_berkelium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotGraphite> * 9)
	.outputs(blockGraphite)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotBeryllium> * 9)
	.outputs(blockBeryllium)
	.duration(400).EUt(2)
	.buildAndRegister();