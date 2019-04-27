import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

#priority 90



function disableItem(item as IItemStack){
  recipes.removeShapeless(item);
  recipes.removeShaped(item);
  item.addTooltip(format.darkRed("Disabled in Infitech."));
}

function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}


function gregArmorPiece(part as IItemStack, multiplier as int, dust as IIngredient, plate as IIngredient, ingot as IIngredient, molten as ILiquidStack) {
  var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();

	if (!isNull(dust)) {
		RecipeMap.getByName("macerator").recipeBuilder()
			.inputs(part)
			.outputs(dust.items[0] * multiplier)
			.duration(200)
			.EUt(16)
			.buildAndRegister();
	}
	if (!isNull(plate)) {
		recipes.remove(part);
		var toolHardHammer = craftingToolHardHammerEmptyTag;
    // TODO: NEED DYNAMIC RECIPE NAMING HERE
		if (multiplier == 5) {
			recipes.addShaped(part,
				[[plate, plate, plate],
				 [plate, toolHardHammer, plate]]);
		} else if (multiplier == 8) {
			recipes.addShaped(part,
				[[plate, toolHardHammer, plate],
				 [plate, plate, plate],
				 [plate, plate, plate]]);
		} else if (multiplier == 7) {
			recipes.addShaped(part,
				[[plate, plate, plate],
				 [plate, toolHardHammer, plate],
				 [plate, null, plate]]);
		} else if (multiplier == 4) {
			recipes.addShaped(part,
				[[plate, null, plate],
				 [plate, toolHardHammer, plate]]);
		}
	}
	if (!isNull(ingot)) {
		RecipeMap.getByName("arc_furnace").recipeBuilder()
			.inputs(part)
			.fluidInputs([<fluid:oxygen> * (60 * multiplier)])
			.outputs(ingot.items[0] * multiplier)
			.duration(60 * multiplier)
			.EUt(32)
			.buildAndRegister();
		RecipeMap.getByName("plasma_arc_furnace").recipeBuilder()
			.inputs(part)
			.fluidInputs([<fluid:plasma.nitrogen> * 1])
			.outputs(ingot.items[0] * multiplier)
			.fluidOutputs([<fluid:nitrogen> * 1])
			.duration(4 * multiplier)
			.EUt(16)
			.buildAndRegister();
		RecipeMap.getByName("plasma_arc_furnace").recipeBuilder()
			.inputs(part)
			.fluidInputs([<fluid:plasma.argon> * 1])
			.outputs(ingot.items[0] * multiplier)
			.fluidOutputs([<fluid:argon> * 1])
			.duration(4 * multiplier)
			.EUt(16)
			.buildAndRegister();
	}
	if (!isNull(molten)) {
		RecipeMap.getByName("fluid_extractor").recipeBuilder()
			.inputs(part)
			.fluidOutputs([molten * (144 * multiplier)])
			.duration(80 * multiplier)
			.EUt(32)
			.buildAndRegister();
	}
}

function gregArmor(dust as IIngredient, plate as IIngredient, ingot as IIngredient, molten as ILiquidStack,
		helmet as IItemStack, chestplate as IItemStack, leggings as IItemStack, boots as IItemStack) {
	if (!isNull(helmet)) {
		gregArmorPiece(helmet, 5, dust, plate, ingot, molten);
	}
	if (!isNull(chestplate)) {
		gregArmorPiece(chestplate, 8, dust, plate, ingot, molten);
	}
	if (!isNull(leggings)) {
		gregArmorPiece(leggings, 7, dust, plate, ingot, molten);
	}
	if (!isNull(boots)) {
		gregArmorPiece(boots, 4, dust, plate, ingot, molten);
	}
}
