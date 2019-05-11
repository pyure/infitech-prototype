import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");


// Elevators
for i in 0 to 15 {
  var recipe_name = "it3_openblocks_elevator_" ~ i;
  var rotating_recipe_name = "it3_openblocks_rotating_elevator_" ~ i;
  var converting_recipe_name = "it3_openblocks_converted_elevator_" ~ i;
  var elevator = <openblocks:elevator>.definition.makeStack(i);
  var rotating_elevator = <openblocks:elevator_rotating>.definition.makeStack(i);
  var wool = <minecraft:wool>.definition.makeStack(i);
  
  recipes.remove(elevator);
  // Add new recipe for the basic elevator
  recipes.addShaped(recipe_name, elevator, [
    [<ore:stickTitanium>, wool, <ore:stickTitanium>], 
    [wool, <botania:platform>, wool], 
    [<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>]]);
    
    
  recipes.remove(rotating_elevator);
  // Add new recipe for the rotating elevator
  recipes.addShaped(rotating_recipe_name, rotating_elevator, [
    [<ore:stickTitanium>, wool, <ore:stickTitanium>], 
    [wool, <botania:platform>, wool], 
    [<ore:stickTitanium>, <ore:ringTitanium>, <ore:stickTitanium>]]);
   
  // Bring back recipe to convert normal elevator into rotating.  Unchanged.
  recipes.addShapeless(converting_recipe_name, rotating_elevator, [elevator, <ore:ingotIron>, <ore:ingotIron>]);

}

// Fan.  Disabled in IT2.  Let's allow it, mid-game.
recipes.remove(<openblocks:fan>);
recipes.addShaped("it3_openblocks_fan_0", <openblocks:fan>, [[<minecraft:iron_bars>], [<ore:rotorTitanium>], [<minecraft:stone_slab>]]);

// Glider.  Disabled in IT2. Let's allow it, mid-game.
var gliderWing = <openblocks:generic>;
recipes.remove(<openblocks:hang_glider>);
recipes.addShaped("it3_openblocks_hang_glider_0", <openblocks:hang_glider>, [[gliderWing, <ore:stickTitanium>, gliderWing]]);

// Tank.  IT2 didn't tweak this, but its so awesome I think we should.
recipes.remove(<openblocks:tank> * 2);
recipes.addShaped("it3_openblocks_tank_0", <openblocks:tank> * 2, [
  [<ore:plateStainlessSteel>, <ore:paneGlass>, <ore:plateStainlessSteel>], 
  [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], 
  [<ore:plateStainlessSteel>, <ore:paneGlass>, <ore:plateStainlessSteel>]]);

// Auto Anvil.  IT2 didn't tweak this, but its so awesome I think we should.
recipes.remove(<openblocks:auto_anvil>);
recipes.addShaped("it3_openblocks_auto_anvil_0", <openblocks:auto_anvil>, [
  [<ore:plateSteel>, <ore:plateLapis>, <ore:plateSteel>], 
  [<ore:plateSteel>, <minecraft:anvil>, <ore:plateSteel>], 
  [<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>]]);

// Auto Enchantment Table
recipes.remove(<openblocks:auto_enchantment_table>);
recipes.addShaped("it3_openblocks_auto_enchantment_table_0", <openblocks:auto_enchantment_table>, [
  [<ore:plateSteel>, <ore:plateLapis>, <ore:plateSteel>], 
  [<ore:plateSteel>, <minecraft:enchanting_table>, <ore:plateSteel>], 
  [<ore:plateRedAlloy>, <ore:plateRedAlloy>, <ore:plateRedAlloy>]]);
  
// XP Shower
recipes.remove(<openblocks:xp_shower>);
recipes.addShaped("it3_openblocks_xp_shower_0", <openblocks:xp_shower>, [
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
  [null, null, <minecraft:obsidian>]]);

// XP Drain
recipes.remove(<openblocks:xp_drain>);
recipes.addShaped("it3_openblocks_xp_drain_0", <openblocks:xp_drain>, [
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
  [<ore:stickIron>, <minecraft:iron_bars>, <ore:stickIron>], 
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

// Dev/Null
recipes.remove(<openblocks:dev_null>);
recipes.addShapeless("it3_openblocks_dev_null_0", <openblocks:dev_null>.withTag({}), [<ore:chest>, <ore:dustVoid>, <ore:dustVoid>, <ore:dustVoid>]);

// Vacuum Hopper.  Let's keep it MV-ish, let ppl have an incentive to get an earlier-game Hopperhock or some such if they're inclined.
recipes.remove(<openblocks:vacuum_hopper>);
assembler.recipeBuilder()
  .inputs(<minecraft:hopper>, <minecraft:obsidian>, <minecraft:ender_eye>)
  .outputs(<openblocks:vacuum_hopper> * 2)
  .duration(540)
  .EUt(96)
  .buildAndRegister();

// Outright disables
scripts.functions.disableItem(<openblocks:generic:1>); // Beam, from crane stuff
scripts.functions.disableItem(<openblocks:generic:5>); // Line, from crane stuff
scripts.functions.disableItem(<openblocks:block_breaker>);
scripts.functions.disableItem(<openblocks:generic:2>); // Crane Engine
scripts.functions.disableItem(<openblocks:generic:3>); // Crane Magnet
scripts.functions.disableItem(<openblocks:crane_control>);
scripts.functions.disableItem(<openblocks:crane_backpack>);


  