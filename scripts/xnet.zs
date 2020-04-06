import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

var craftingToolWrenchEmptyTag = <ore:craftingToolWrenchEmptyTag>;
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;

// Basic Cable
val blue_cable = <xnet:netcable>.withEmptyTag();
recipes.removeByRecipeName("xnet:netcable_0");
assembler.recipeBuilder()
  .inputs(<ore:wireFineAluminium> * 2, <ore:wireFineRedAlloy> * 1, <ore:wireFineGold> * 1)
  .outputs(blue_cable * 12)
  .duration(70)
  .EUt(105)
  .buildAndRegister();

// Routing Network cables.  Others are colored variants of this one via dye.
val routing_cable = <xnet:netcable:4>.withTag({display: {LocName: "tile.xnet.netcable_routing.name"}});
recipes.remove(<xnet:netcable:4>);
recipes.addShaped("it3_xnet_routing_cable", routing_cable * 3, [
  [<ore:wireFineRedAlloy>, <xnet:netcable>, <ore:wireFineRedAlloy>], 
  [<ore:wireFineRedAlloy>, <xnet:netcable>, <ore:wireFineRedAlloy>], 
  [<ore:wireFineRedAlloy>, <xnet:netcable>, <ore:wireFineRedAlloy>]]);
  
// Blue Connectors
val blue_connector = <xnet:connector>.withEmptyTag();
recipes.removeByRecipeName("xnet:connector_0");
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium> * 1, <ore:wireFineRedAlloy> * 2, <ore:wireFineGold> * 2)
  .outputs(blue_connector)
  .duration(120)
  .EUt(115)
  .buildAndRegister();

  
// Controller
val controller = <xnet:controller>;
recipes.removeByRecipeName("xnet:controller_rftools");
val mv_machine_casing = <gregtech:machine_casing:2>;
assembler.recipeBuilder()
  .inputs(<ore:circuitGood> * 1, mv_machine_casing, <ore:wireFineRedAlloy> * 2, <ore:wireFineGold> * 2)
  .outputs(controller)
  .duration(220)
  .EUt(115)
  .buildAndRegister();  

// Redstone Proxy (non-updating)
recipes.remove(<xnet:redstone_proxy>);
assembler.recipeBuilder()
  .inputs(<ore:circuitGood> * 1, <rftools:machine_frame>, <ore:plateSilicon>)
  .outputs(<xnet:redstone_proxy>)
  .duration(60)
  .EUt(40)
  .buildAndRegister();

// Redstone Proxy (updating)
recipes.remove(<xnet:redstone_proxy_upd>);
recipes.addShapeless("it3_xnet_redstone_proxy_upd", <xnet:redstone_proxy_upd>, [<xnet:redstone_proxy>]);
recipes.addShapeless("it3_xnet_redstone_proxy", <xnet:redstone_proxy>, [<xnet:redstone_proxy_upd>]);

// Advanced Connector
var advanced_connector = <xnet:advanced_connector>;
recipes.remove(advanced_connector);
var RAM = <metaitem:plate.random_access_memory>;
assembler.recipeBuilder()
  .inputs(<xnet:connector>, RAM)
  .outputs(advanced_connector)
  .duration(90)
  .EUt(160)
  .buildAndRegister();

// Advanced Connector Kit
var connector_update_kit = <xnet:connector_upgrade>;
recipes.remove(connector_update_kit);
assembler.recipeBuilder()
  .inputs(<minecraft:paper>, RAM)
  .outputs(connector_update_kit)
  .duration(90)
  .EUt(160)
  .buildAndRegister();

// Router
var router = <xnet:router>;
recipes.remove(router);
assembler.recipeBuilder()
  .inputs(<rftools:machine_frame>, <minecraft:comparator>, <ore:wireFineIron>)
  .outputs(router)
  .duration(120)
  .EUt(120)
  .buildAndRegister();
  

// Wireless Router
var wireless_router = <xnet:wireless_router>;
recipes.remove(wireless_router);
assembler.recipeBuilder()
  .inputs(<rftools:machine_frame>, <minecraft:comparator>, <ore:wireFineElectrum>, <minecraft:ender_pearl>)
  .outputs(wireless_router)
  .duration(120)
  .EUt(160)
  .buildAndRegister();

// Antenna
recipes.remove(<xnet:antenna>);
recipes.addShaped("it3_xnet_antenna", <xnet:antenna>, [
  [<minecraft:iron_bars>, <ore:stickLongStainlessSteel>, <minecraft:iron_bars>], 
  [<minecraft:iron_bars>, <ore:stickLongStainlessSteel>, <minecraft:iron_bars>], 
  [null, <ore:stickLongStainlessSteel>, null]]);

// Antenna Base
recipes.remove(<xnet:antenna_base>);
recipes.addShaped("it3_xnet_antenna_base", <xnet:antenna_base>, [
  [null, <ore:stickLongStainlessSteel>, null], 
  [null, <ore:stickLongStainlessSteel>, null], 
  [craftingToolWrenchEmptyTag, <ore:plateStainlessSteel>, craftingToolHardHammerEmptyTag]]);

// Antenna Dish
recipes.remove(<xnet:antenna_dish>);
recipes.addShaped("it3_xnet_antenna_dish", <xnet:antenna_dish>, [
  [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>], 
  [<ore:plateStainlessSteel>, <minecraft:ender_pearl>, <ore:plateStainlessSteel>], 
  [null, <ore:stickLongStainlessSteel>, null]]);
