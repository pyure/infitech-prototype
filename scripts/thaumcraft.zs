import mods.contenttweaker.VanillaFactory;

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

mods.thaumcraft.LootBag.addLoot(<minecraft:dirt>%20000, [0,1,2]);

// ADD ASPECTS TO ITEMS
<minecraft:stone>.setAspects(<aspect:ignis>*35);
<contenttweaker:cluster_uranium238>.setAspects([<aspect:potentia>*3, <aspect:ignis>*1]);


mods.thaumcraft.Crucible.registerRecipe("crucibleTest", "", <minecraft:diamond>, <minecraft:stick>, [<aspect:aer> * 10]);

// Thauminomicon wants to see TC plates to satisfy some thauminomicon requirement apparently.  Hopefully this addresses the issue.
var plateThaumiumGT = <gregtech:meta_item_1:12706>;
var plateThaumiumTC = <thaumcraft:plate:2>;
recipes.addShapeless(plateThaumiumGT, [plateThaumiumTC]);
recipes.addShapeless(plateThaumiumTC, [plateThaumiumGT]);