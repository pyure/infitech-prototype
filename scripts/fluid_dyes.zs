import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.RecipeMap;


val mixer as RecipeMap = RecipeMap.getByName("mixer") as RecipeMap;
val assembler as RecipeMap = RecipeMap.getByName("assembler") as RecipeMap;
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor") as RecipeMap;
val fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner") as RecipeMap;
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath") as RecipeMap;

val gtDyes = [ <metaitem:dye.black>, <metaitem:dye.red>, <metaitem:dye.green>, <metaitem:dye.brown>, <metaitem:dye.blue>, <metaitem:dye.purple>, <metaitem:dye.cyan>, <metaitem:dye.silver>, <metaitem:dye.gray>, <metaitem:dye.pink>, <metaitem:dye.lime>, <metaitem:dye.yellow>, <metaitem:dye.light_blue>, <metaitem:dye.magenta>, <metaitem:dye.orange>, <metaitem:dye.white> ] as IItemStack[];
val spraycans = [ <metaitem:spray.can.dyes.black>, <metaitem:spray.can.dyes.red>, <metaitem:spray.can.dyes.green>, <metaitem:spray.can.dyes.brown>, <metaitem:spray.can.dyes.blue>, <metaitem:spray.can.dyes.purple>, <metaitem:spray.can.dyes.cyan>, <metaitem:spray.can.dyes.silver>, <metaitem:spray.can.dyes.gray>, <metaitem:spray.can.dyes.pink>, <metaitem:spray.can.dyes.lime>, <metaitem:spray.can.dyes.yellow>, <metaitem:spray.can.dyes.light_blue>, <metaitem:spray.can.dyes.magenta>, <metaitem:spray.can.dyes.orange>, <metaitem:spray.can.dyes.white>] as IItemStack[];
val itemDyes = [ <ore:dyeBlack>, <ore:dyeRed>, <ore:dyeGreen>, <ore:dyeBrown>, <ore:dyeBlue>, <ore:dyePurple>, <ore:dyeCyan>, <ore:dyeLightGray>, <ore:dyeGray>, <ore:dyePink>, <ore:dyeLime>, <ore:dyeYellow>, <ore:dyeLightBlue>, <ore:dyeMagenta>, <ore:dyeOrange>, <ore:dyeWhite> ] as IIngredient[];
val waterDyes = [ <liquid:water_dye_black>, <liquid:water_dye_red>, <liquid:water_dye_green>, <liquid:water_dye_brown>, <liquid:water_dye_blue>, <liquid:water_dye_purple>, <liquid:water_dye_cyan>, <liquid:water_dye_lightgray>, <liquid:water_dye_gray>, <liquid:water_dye_pink>, <liquid:water_dye_lime>, <liquid:water_dye_yellow>, <liquid:water_dye_lightblue>, <liquid:water_dye_magenta>, <liquid:water_dye_orange>, <liquid:water_dye_white> ] as ILiquidStack[];
val chemDyes = [ <liquid:chemi_dye_black>, <liquid:chemi_dye_red>, <liquid:chemi_dye_green>, <liquid:chemi_dye_brown>, <liquid:chemi_dye_blue>, <liquid:chemi_dye_purple>, <liquid:chemi_dye_cyan>, <liquid:chemi_dye_lightgray>, <liquid:chemi_dye_gray>, <liquid:chemi_dye_pink>, <liquid:chemi_dye_lime>, <liquid:chemi_dye_yellow>, <liquid:chemi_dye_lightblue>, <liquid:chemi_dye_magenta>, <liquid:chemi_dye_orange>, <liquid:chemi_dye_white>] as ILiquidStack[];


for j, b in itemDyes {
    mixer.recipeBuilder() // Water + dye = Water mixed dye
        .fluidInputs([<liquid:water> as ILiquidStack * 216])
        .inputs([b])
        .fluidOutputs([waterDyes[j] * 192])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    mixer.recipeBuilder() // Distilled Water + Dye = More water mixed dye
        .fluidInputs([<liquid:distilled_water> as ILiquidStack * 216])
        .inputs([b])
        .fluidOutputs([waterDyes[j] * 216])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    chemical_reactor.recipeBuilder() // Sulfuric acid + dye + salt = Chemical mixed dye
        .fluidInputs([<liquid:sulfuric_acid> * 432])
        .inputs([b,<ore:dustSalt>])
        .fluidOutputs([chemDyes[j] * 288])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    fluid_canner.recipeBuilder() // 2304mb of chemical dye + empty spray can = filled spray can
        .fluidInputs(chemDyes[j] * 2304)
        .inputs(<metaitem:spray.empty>)
        .outputs(spraycans[j] * 1 )
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    assembler.findRecipe(4,[gtDyes[j] * 1,<metaitem:spray.empty> * 1], null).remove();

    // Wool colours are "backwards" (black is 15, white is 0), so this lets me refer to the wool for a given colour
    val woolDef = (<minecraft:wool>.definition as IItemDefinition).makeStack(15-j);

    chemical_bath.recipeBuilder() // 72mb of chemical dye + wool = coloured wool
        .fluidInputs([chemDyes[j] * 72])
        .inputs([<minecraft:wool:0>])
        .outputs([woolDef])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    chemical_bath.recipeBuilder() // 144mb of water dye + wool = coloured wool
        .fluidInputs([waterDyes[j] * 144])
        .inputs([<minecraft:wool:0>])
        .outputs([woolDef])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    val concreteDef = (<minecraft:concrete>.definition as IItemDefinition).makeStack(15-j);

    chemical_bath.recipeBuilder()
        .fluidInputs([chemDyes[j] * 72])
        .inputs([<minecraft:concrete:0>])
        .outputs([concreteDef])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    chemical_bath.recipeBuilder()
        .fluidInputs([waterDyes[j] * 144])
        .inputs([<minecraft:concrete:0>])
        .outputs([concreteDef])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    val concretePowderDef = (<minecraft:concrete_powder>.definition as IItemDefinition).makeStack(15-j);

    chemical_bath.recipeBuilder()
        .fluidInputs([chemDyes[j] * 72])
        .inputs([<minecraft:concrete_powder:0>])
        .outputs([concretePowderDef])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

    chemical_bath.recipeBuilder()
        .fluidInputs([waterDyes[j] * 144])
        .inputs([<minecraft:concrete_powder:0>])
        .outputs([concretePowderDef])
        .duration(8)
        .EUt(8)
        .buildAndRegister();

}
