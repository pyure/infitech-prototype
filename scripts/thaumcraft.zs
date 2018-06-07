import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// These are covered by GT meta tools (or should be)
recipes.remove(<thaumcraft:thaumium_axe>);
recipes.remove(<thaumcraft:thaumium_pick>);
recipes.remove(<thaumcraft:thaumium_sword>);
recipes.remove(<thaumcraft:thaumium_shovel>);
recipes.remove(<thaumcraft:thaumium_hoe>);

// Removed Plates that have GT Counterpart
recipes.remove(<thaumcraft:plate>);
recipes.remove(<thaumcraft:plate:1>);

// GT style plate crafting
recipes.remove(<thaumcraft:plate:2>);
recipes.addShaped(<thaumcraft:plate:2>, [
	[<ore:craftingToolHardHammer>],
	[<ore:ingotThaumium>],
	[<ore:ingotThaumium>]]);
recipes.remove(<thaumcraft:plate:3>);
recipes.addShaped(<thaumcraft:plate:2>, [
	[<ore:craftingToolHardHammer>],
	[<ore:ingotVoid>],
	[<ore:ingotVoid>]]);