import mods.contenttweaker.VanillaFactory;

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


// These are covered by GT meta tools (or should be)
// Set to 1 durability via MaterialChanger mod
<thaumcraft:thaumium_axe>.addTooltip(format.red("For crafting only; otherwise useless."));
<thaumcraft:thaumium_pick>.addTooltip(format.red("For crafting only; otherwise useless."));
<thaumcraft:thaumium_sword>.addTooltip(format.red("For crafting only; otherwise useless."));
<thaumcraft:thaumium_shovel>.addTooltip(format.red("For crafting only; otherwise useless."));
<thaumcraft:thaumium_hoe>.addTooltip(format.red("For crafting only; otherwise useless."));

var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();

// Removed Plates that have GT Counterpart
recipes.remove(<thaumcraft:plate>);
recipes.remove(<thaumcraft:plate:1>);

// GT style plate crafting
recipes.remove(<thaumcraft:plate:2>);
recipes.addShaped(<thaumcraft:plate:2>, [
	[craftingToolHardHammerEmptyTag],
	[<ore:ingotThaumium>],
	[<ore:ingotThaumium>]]);
recipes.remove(<thaumcraft:plate:3>);
recipes.addShaped(<thaumcraft:plate:3>, [
	[craftingToolHardHammerEmptyTag],
	[<ore:ingotVoid>],
	[<ore:ingotVoid>]]);

mods.thaumcraft.LootBag.addLoot(<minecraft:dirt>%20000, [0,1,2]);

// ADD ASPECTS TO ITEMS
<minecraft:stone>.setAspects(<aspect:ignis>*35);
<contenttweaker:cluster_uranium238>.setAspects([<aspect:potentia>*3, <aspect:ignis>*1]);

// Thauminomicon wants to see TC plates to satisfy some thauminomicon requirement apparently.  Hopefully this addresses the issue.
var plateThaumiumGT = <gregtech:meta_item_1:12706>;
var plateThaumiumTC = <thaumcraft:plate:2>;
recipes.addShapeless(plateThaumiumGT, [plateThaumiumTC]);
recipes.addShapeless(plateThaumiumTC, [plateThaumiumGT]);


var sealBlank = <thaumcraft:seal>;
var sealBlockBreaker = <thaumcraft:seal:12>;

/* REMINDER for research names: You can type /thaumcraft research list, to get a list of all the names (it gets dumped to log)
You can also open the thaumcraft .jar and look at the files in \assets\thaumcraft\research, which I found to be easier to search through */

mods.thaumcraft.Infusion.removeRecipe(sealBlockBreaker);
mods.thaumcraft.Infusion.registerRecipe(
  "it3_seal_block_breaker", 
  "SEALBREAK", 
  sealBlockBreaker, 
  1, 
  [<aspect:instrumentum> * 10, <aspect:perditio> * 10, <aspect:humanus> * 10], 
  sealBlank, 
  [<ore:toolHeadShovelDiamond>, <ore:toolHeadAxeDiamond>, <ore:toolHeadPickaxeDiamond>]);
  
<thaumcraft:thaumonomicon>.addTooltip(format.aqua("Some recipes may be removed from this tome.  See JEI."));

// Tweak Vis Generator to be a bit later-game
recipes.remove(<thaumcraft:vis_generator>);
recipes.addShaped(<thaumcraft:vis_generator>, 
  [[<ore:plankWood>, <metaitem:electric.motor.lv>, <ore:plankWood>], 
  [<ore:stickThaumium>, <minecraft:piston>, <ore:stickThaumium>], 
  [<ore:foilRedAlloy>, <thaumcraft:vis_resonator>, <ore:foilRedAlloy>]]);


