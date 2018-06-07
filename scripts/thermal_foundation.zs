import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// These are covered by GT meta tools
recipes.remove(<thermalfoundation:tool.pickaxe_copper>);
recipes.remove(<thermalfoundation:tool.pickaxe_tin>);
recipes.remove(<thermalfoundation:tool.pickaxe_silver>);
recipes.remove(<thermalfoundation:tool.pickaxe_lead>);
recipes.remove(<thermalfoundation:tool.pickaxe_aluminum>);

recipes.remove(<thermalfoundation:tool.axe_copper>);
recipes.remove(<thermalfoundation:tool.axe_tin>);
recipes.remove(<thermalfoundation:tool.axe_silver>);
recipes.remove(<thermalfoundation:tool.axe_lead>);
recipes.remove(<thermalfoundation:tool.axe_aluminum>);

recipes.remove(<thermalfoundation:tool.shovel_copper>);
recipes.remove(<thermalfoundation:tool.shovel_tin>);
recipes.remove(<thermalfoundation:tool.shovel_silver>);
recipes.remove(<thermalfoundation:tool.shovel_lead>);
recipes.remove(<thermalfoundation:tool.shovel_aluminum>);

recipes.remove(<thermalfoundation:tool.sword_copper>);
recipes.remove(<thermalfoundation:tool.sword_tin>);
recipes.remove(<thermalfoundation:tool.sword_silver>);
recipes.remove(<thermalfoundation:tool.sword_lead>);
recipes.remove(<thermalfoundation:tool.sword_aluminum>);

recipes.remove(<thermalfoundation:tool.hoe_copper>);
recipes.remove(<thermalfoundation:tool.hoe_tin>);
recipes.remove(<thermalfoundation:tool.hoe_silver>);
recipes.remove(<thermalfoundation:tool.hoe_lead>);
recipes.remove(<thermalfoundation:tool.hoe_aluminum>);

// Removing gears that have GT counterpart

var meta = [24, 25, 256, 257, 258, 259,260,261,262,263,264,288,289,290,291,292,293,294,295] as int[];

for id in meta {
	recipes.remove(<thermalfoundation:material>.definition.makeStack(id));
}

// Removing plates that have GT couterpart
recipes.remove(<thermalfoundation:material:32>);
recipes.remove(<thermalfoundation:material:33>);
recipes.remove(<thermalfoundation:material:320>);
recipes.remove(<thermalfoundation:material:321>);
recipes.remove(<thermalfoundation:material:322>);
recipes.remove(<thermalfoundation:material:323>);
recipes.remove(<thermalfoundation:material:324>);
recipes.remove(<thermalfoundation:material:325>);
recipes.remove(<thermalfoundation:material:326>);
recipes.remove(<thermalfoundation:material:327>);
