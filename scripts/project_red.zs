import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemTransformer;

var silicon_boule = <projectred-core:resource_item:300>;
var silicon = <projectred-core:resource_item:301>;
var prPlate = <projectred-core:resource_item>;
var goldSilicon = <projectred-core:resource_item:341>;
var redSilicon = <projectred-core:resource_item:320>;

scripts.functions.disableItem(<projectred-core:resource_item:310>);
scripts.functions.disableItem(<projectred-core:resource_item:311>);
scripts.functions.disableItem(<projectred-core:resource_item:103>);
scripts.functions.disableItem(<projectred-core:resource_item:250>);
scripts.functions.disableItem(<projectred-core:resource_item:251>);
scripts.functions.disableItem(<projectred-core:resource_item:252>);
scripts.functions.disableItem(<projectred-core:resource_item:312>);
scripts.functions.disableItem(<projectred-core:resource_item:342>);
scripts.functions.disableItem(<projectred-core:resource_item:400>);
scripts.functions.disableItem(<projectred-core:resource_item:401>);
scripts.functions.disableItem(<projectred-core:resource_item:402>);
scripts.functions.disableItem(<projectred-core:resource_item:410>);
scripts.functions.disableItem(<projectred-core:resource_item:420>);
scripts.functions.disableItem(<projectred-core:resource_item:421>);
scripts.functions.disableItem(<projectred-core:resource_item:600>);
scripts.functions.disableItem(<projectred-core:drawplate>);
scripts.functions.disableItem(<projectred-transmission:framed_wire:34>);
scripts.functions.disableItem(<projectred-transmission:wire:34>);

//manual removals
furnace.remove(<projectred-core:resource_item:104>);
furnace.remove(silicon_boule);
recipes.removeShaped(<projectred-fabrication:ic_chip>);
furnace.remove(redSilicon);
furnace.remove(goldSilicon);
recipes.removeShaped(silicon);
recipes.removeShaped(<microblockcbe:saw_stone>);
recipes.removeShaped(<microblockcbe:saw_iron>);
recipes.removeShaped(<microblockcbe:saw_diamond>);
recipes.removeShaped(<projectred-fabrication:ic_blueprint>);

//Greggified PR recipes
recipes.addShapedMirrored(silicon *2, [[<microblockcbe:saw_iron>], [silicon_boule]]);

recipes.addShaped(<microblockcbe:saw_stone>, [
[null, null, null],
[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
[<ore:stickWood>, <minecraft:flint>, <minecraft:flint>]]);

recipes.addShaped(<microblockcbe:saw_iron>, [
[null, null, null],
[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
[<ore:stickWood>, <ore:plateIron>, <ore:plateIron>]]);

recipes.addShaped(<microblockcbe:saw_diamond>, [
[null, null, null],
[<ore:stickWood>, <ore:rodStone>, <ore:rodStone>],
[<ore:stickWood>, <ore:plateDiamond>, <ore:plateDiamond>]]);

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
alloy_smelter.recipeBuilder()
    .inputs(<ore:blockCoal>*1, <ore:sand>*8)
    .outputs(silicon_boule *1)
    .duration(140)
    .EUt(16)
    .buildAndRegister();

val cutting_saw as RecipeMap = RecipeMap.getByName("cutting_saw");

//Plate recipes
cutting_saw.recipeBuilder()
	.inputs(<ore:stoneBricks>*1)
	.fluidInputs(<liquid:lubricant> * 1)
    .outputs(prPlate *5)
    .duration(10)
    .EUt(8)
    .buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(<ore:stoneBricks>*1)
	.fluidInputs(<liquid:distilled_water> * 3)
    .outputs(prPlate *5)
    .duration(20)
    .EUt(8)
    .buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(<ore:stoneBricks>*1)
	.fluidInputs(<liquid:water> * 5)
    .outputs(prPlate *5)
    .duration(80)
    .EUt(8)
    .buildAndRegister();

//silicon recipes

cutting_saw.recipeBuilder()
	.inputs(silicon_boule *1)
	.fluidInputs(<liquid:lubricant> * 1)
    .outputs(silicon *12)
    .duration(200)
    .EUt(32)
    .buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(silicon_boule *1)
	.fluidInputs(<liquid:distilled_water> * 3)
    .outputs(silicon *8)
    .duration(200)
    .EUt(32)
    .buildAndRegister();

cutting_saw.recipeBuilder()
	.inputs(silicon_boule *1)
	.fluidInputs(<liquid:water> * 5)
    .outputs(silicon *8)
    .duration(800)
    .EUt(32)
    .buildAndRegister();

val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
chemical_bath.recipeBuilder()
	.inputs(silicon *1)
	.fluidInputs(<liquid:redstone> * 1152)
    .outputs(redSilicon * 1)
    .duration(400)
    .EUt(32)
    .buildAndRegister();

chemical_bath.recipeBuilder()
	.inputs(silicon *1)
	.fluidInputs(<liquid:glowstone> * 1152)
    .outputs(goldSilicon * 1)
    .duration(400)
    .EUt(32)
    .buildAndRegister();

val assembler as RecipeMap = RecipeMap.getByName("assembler");
assembler.recipeBuilder()
	.inputs(<minecraft:quartz> * 2, <minecraft:diamond> * 1, <ore:circuitPrimitive> * 1)
	.fluidInputs(<liquid:gold> * 96)
    .outputs(<projectred-fabrication:ic_chip> * 1)
    .duration(300)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
	.inputs(<minecraft:paper> * 1, <minecraft:redstone> * 1)
	.fluidInputs(<liquid:chemi_dye_blue> * 288)
    .outputs(<projectred-fabrication:ic_blueprint> * 1)
    .duration(300)
    .EUt(32)
    .buildAndRegister();