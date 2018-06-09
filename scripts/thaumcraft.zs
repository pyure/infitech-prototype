import mods.contenttweaker.VanillaFactory;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


// These are covered by GT meta tools (or should be)
recipes.remove(<thaumcraft:thaumium_axe>);
recipes.remove(<thaumcraft:thaumium_pick>);
recipes.remove(<thaumcraft:thaumium_sword>);
recipes.remove(<thaumcraft:thaumium_shovel>);
recipes.remove(<thaumcraft:thaumium_hoe>);


mods.thaumcraft.LootBag.addLoot(<minecraft:dirt>%20000, [0,1,2]);

// ADD ASPECTS TO ITEMS
<minecraft:stone>.setAspects(<aspect:ignis>*35);
<contenttweaker:cluster_uranium238>.setAspects([<aspect:potentia>*3, <aspect:ignis>*1]);


mods.thaumcraft.Crucible.registerRecipe("crucibleTest", "", <minecraft:diamond>, <minecraft:stick>, [<aspect:aer> * 10]);


