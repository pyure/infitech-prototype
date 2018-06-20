import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

// These are covered by GT meta tools
recipes.remove(<thermalfoundation:tool.pickaxe_copper>);
recipes.remove(<thermalfoundation:tool.pickaxe_tin>);
recipes.remove(<thermalfoundation:tool.pickaxe_silver>);
recipes.remove(<thermalfoundation:tool.pickaxe_lead>);
recipes.remove(<thermalfoundation:tool.pickaxe_aluminum>);
recipes.remove(<thermalfoundation:tool.pickaxe_nickel>);
recipes.remove(<thermalfoundation:tool.pickaxe_platinum>);
recipes.remove(<thermalfoundation:tool.pickaxe_steel>);
recipes.remove(<thermalfoundation:tool.pickaxe_electrum>);
recipes.remove(<thermalfoundation:tool.pickaxe_invar>);
recipes.remove(<thermalfoundation:tool.pickaxe_bronze>);
recipes.remove(<thermalfoundation:tool.pickaxe_constantan>);

recipes.remove(<thermalfoundation:tool.axe_copper>);
recipes.remove(<thermalfoundation:tool.axe_tin>);
recipes.remove(<thermalfoundation:tool.axe_silver>);
recipes.remove(<thermalfoundation:tool.axe_lead>);
recipes.remove(<thermalfoundation:tool.axe_aluminum>);
recipes.remove(<thermalfoundation:tool.axe_nickel>);
recipes.remove(<thermalfoundation:tool.axe_platinum>);
recipes.remove(<thermalfoundation:tool.axe_steel>);
recipes.remove(<thermalfoundation:tool.axe_electrum>);
recipes.remove(<thermalfoundation:tool.axe_invar>);
recipes.remove(<thermalfoundation:tool.axe_bronze>);
recipes.remove(<thermalfoundation:tool.axe_constantan>);

recipes.remove(<thermalfoundation:tool.shovel_copper>);
recipes.remove(<thermalfoundation:tool.shovel_tin>);
recipes.remove(<thermalfoundation:tool.shovel_silver>);
recipes.remove(<thermalfoundation:tool.shovel_lead>);
recipes.remove(<thermalfoundation:tool.shovel_aluminum>);
recipes.remove(<thermalfoundation:tool.shovel_nickel>);
recipes.remove(<thermalfoundation:tool.shovel_platinum>);
recipes.remove(<thermalfoundation:tool.shovel_steel>);
recipes.remove(<thermalfoundation:tool.shovel_electrum>);
recipes.remove(<thermalfoundation:tool.shovel_invar>);
recipes.remove(<thermalfoundation:tool.shovel_bronze>);
recipes.remove(<thermalfoundation:tool.shovel_constantan>);

recipes.remove(<thermalfoundation:tool.sword_copper>);
recipes.remove(<thermalfoundation:tool.sword_tin>);
recipes.remove(<thermalfoundation:tool.sword_silver>);
recipes.remove(<thermalfoundation:tool.sword_lead>);
recipes.remove(<thermalfoundation:tool.sword_aluminum>);
recipes.remove(<thermalfoundation:tool.sword_nickel>);
recipes.remove(<thermalfoundation:tool.sword_platinum>);
recipes.remove(<thermalfoundation:tool.sword_steel>);
recipes.remove(<thermalfoundation:tool.sword_electrum>);
recipes.remove(<thermalfoundation:tool.sword_invar>);
recipes.remove(<thermalfoundation:tool.sword_bronze>);
recipes.remove(<thermalfoundation:tool.sword_constantan>);

recipes.remove(<thermalfoundation:tool.hoe_copper>);
recipes.remove(<thermalfoundation:tool.hoe_tin>);
recipes.remove(<thermalfoundation:tool.hoe_silver>);
recipes.remove(<thermalfoundation:tool.hoe_lead>);
recipes.remove(<thermalfoundation:tool.hoe_aluminum>);
recipes.remove(<thermalfoundation:tool.hoe_nickel>);
recipes.remove(<thermalfoundation:tool.hoe_platinum>);
recipes.remove(<thermalfoundation:tool.hoe_steel>);
recipes.remove(<thermalfoundation:tool.hoe_electrum>);
recipes.remove(<thermalfoundation:tool.hoe_invar>);
recipes.remove(<thermalfoundation:tool.hoe_bronze>);
recipes.remove(<thermalfoundation:tool.hoe_constantan>);

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


// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(<thermalfoundation:storage:8>);
recipes.remove(<thermalfoundation:storage_alloy:5>);
recipes.remove(<thermalfoundation:storage_alloy:6>);
recipes.remove(<thermalfoundation:storage_alloy:7>);

compressor.recipeBuilder()
	.inputs(<ore:ingotMithril> * 9)
	.outputs(<thermalfoundation:storage:8>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotSignalum> * 9)
	.outputs(<thermalfoundation:storage_alloy:5>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotLumium> * 9)
	.outputs(<thermalfoundation:storage_alloy:6>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotEnderium> * 9)
	.outputs(<thermalfoundation:storage_alloy:7>)
	.duration(400).EUt(2)
	.buildAndRegister();

recipes.remove(<thermalfoundation:storage>);
recipes.remove(<thermalfoundation:storage:1>);
recipes.remove(<thermalfoundation:storage:2>);
recipes.remove(<thermalfoundation:storage:3>);
recipes.remove(<thermalfoundation:storage:4>);
recipes.remove(<thermalfoundation:storage:5>);
recipes.remove(<thermalfoundation:storage:6>);
recipes.remove(<thermalfoundation:storage:7>);
recipes.remove(<thermalfoundation:storage_alloy>);
recipes.remove(<thermalfoundation:storage_alloy:1>);
recipes.remove(<thermalfoundation:storage_alloy:2>);
recipes.remove(<thermalfoundation:storage_alloy:3>);
recipes.remove(<thermalfoundation:storage_alloy:4>);

