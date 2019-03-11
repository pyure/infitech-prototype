import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");

var mv_machine_casing = <gregtech:machine_casing:2>;
var hv_machine_casing = <gregtech:machine_casing:3>;
var ev_machine_casing = <gregtech:machine_casing:4>;

// Gas Turbine Controller
recipes.remove(<advgenerators:turbine_controller>);
recipes.addShaped("it3_gas_turbine_controller", <advgenerators:turbine_controller>, [
  [<advgenerators:iron_frame:*>, <ore:circuitGood>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_wiring:*>, mv_machine_casing, <advgenerators:iron_wiring:*>], 
  [<advgenerators:iron_frame:*>, <ore:circuitGood>, <advgenerators:iron_frame:*>]]);

// Heat Exchanger Controller
recipes.remove(<advgenerators:exchanger_controller>);
recipes.addShaped("it3_heat_exchanger_controller", <advgenerators:exchanger_controller>, [
  [<advgenerators:iron_frame:*>, <ore:circuitGood>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_tubing:*>, mv_machine_casing, <advgenerators:iron_tubing:*>], 
  [<advgenerators:iron_frame:*>, <ore:circuitGood>, <advgenerators:iron_frame:*>]]);
  
// Steam turbine Controller
recipes.remove(<advgenerators:steam_turbine_controller>);
recipes.addShaped("it3_steam_turbine_controller", <advgenerators:steam_turbine_controller>, [
  [<advgenerators:iron_frame:*>, <ore:circuitGood>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_tubing:*>, mv_machine_casing, <advgenerators:iron_tubing:*>], 
    [<advgenerators:iron_frame:*>, <advgenerators:iron_wiring:*>, <advgenerators:iron_frame:*>]]);

// Syngas Controller
recipes.remove(<advgenerators:syngas_controller>);
recipes.addShaped("it3_syngas_controller", <advgenerators:syngas_controller>, [
  [<advgenerators:iron_frame:*>, <advgenerators:pressure_valve:*>, <advgenerators:iron_frame:*>], 
  [<ore:circuitGood>, mv_machine_casing, <ore:circuitGood>], 
  [<advgenerators:iron_frame:*>, <advgenerators:iron_wiring:*>, <advgenerators:iron_frame:*>]]);

// Fuel/Air Mixer
recipes.remove(<advgenerators:efficiency_upgrade_tier1>);
recipes.addShaped("it3_fuel_air_mixer", <advgenerators:efficiency_upgrade_tier1>, [
  [<advgenerators:iron_frame:*>, <minecraft:piston:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:pressure_valve:*>, mv_machine_casing, <ore:circuitAdvanced>], 
  [<advgenerators:iron_frame:*>, <minecraft:piston:*>, <advgenerators:iron_frame:*>]]);

// Gas Mix Compressor
recipes.remove(<advgenerators:efficiency_upgrade_tier2>);
recipes.addShaped("it3_fuel_gas_mix_compressor", <advgenerators:efficiency_upgrade_tier2>, [
  [<advgenerators:iron_frame:*>, <minecraft:piston:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:advanced_pressure_valve:*>, mv_machine_casing, <advgenerators:advanced_pressure_valve:*>], 
  [<advgenerators:iron_frame:*>, <ore:circuitAdvanced>, <advgenerators:iron_frame:*>]]);

// Enderium Turbine
recipes.remove(<advgenerators:turbine_enderium>);
recipes.addShaped("it3_enderium_turbine", <advgenerators:turbine_enderium>, [
  [<advgenerators:iron_frame:*>, <advgenerators:iron_tubing:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_wiring:*>, <advgenerators:turbine_rotor_enderium:*>, <advgenerators:iron_wiring:*>], 
  [<advgenerators:iron_frame:*>, ev_machine_casing, <advgenerators:iron_frame:*>]]);

// Steel Turbine
recipes.remove(<advgenerators:turbine_steel>);
recipes.addShaped("it3_steel_turbine", <advgenerators:turbine_steel>, [
  [<advgenerators:iron_frame:*>, <advgenerators:iron_tubing:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_wiring:*>, <advgenerators:turbine_rotor_steel:*>, <advgenerators:iron_wiring:*>], 
  [<advgenerators:iron_frame:*>, hv_machine_casing, <advgenerators:iron_frame:*>]]);

// Gold Turbine
recipes.remove(<advgenerators:turbine_gold>);
recipes.addShaped("it3_gold_turbine", <advgenerators:turbine_gold>, [
  [<advgenerators:iron_frame:*>, <advgenerators:iron_tubing:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_wiring:*>, <advgenerators:turbine_rotor_steel:*>, <advgenerators:iron_wiring:*>], 
  [<advgenerators:iron_frame:*>, hv_machine_casing, <advgenerators:iron_frame:*>]]);
  
// Bronze Turbine
recipes.remove(<advgenerators:turbine_bronze>);
recipes.addShaped("it3_bronze_turbine", <advgenerators:turbine_bronze>, [
  [<advgenerators:iron_frame:*>, <advgenerators:iron_tubing:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_wiring:*>, <advgenerators:turbine_rotor_bronze:*>, <advgenerators:iron_wiring:*>], 
  [<advgenerators:iron_frame:*>, mv_machine_casing, <advgenerators:iron_frame:*>]]);
  
// Iron Turbine
recipes.remove(<advgenerators:turbine_iron>);
recipes.addShaped("it3_iron_turbine", <advgenerators:turbine_iron>, [
  [<advgenerators:iron_frame:*>, <advgenerators:iron_tubing:*>, <advgenerators:iron_frame:*>], 
  [<advgenerators:iron_wiring:*>, <advgenerators:turbine_rotor_iron:*>, <advgenerators:iron_wiring:*>], 
  [<advgenerators:iron_frame:*>, mv_machine_casing, <advgenerators:iron_frame:*>]]);
  
// Iron Tubing
recipes.remove(<advgenerators:iron_tubing>);
recipes.addShaped("it3_iron_tubing", <advgenerators:iron_tubing> * 4, [
  [<ore:wireFineIron>, null, null], 
  [null, <ore:stickIron>, null], 
  [null, null, <ore:wireFineIron>]]);

// Iron Frame: Hand
recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped("it3_iron_frame", <advgenerators:iron_frame> * 1, [
  [<ore:craftingToolScrewdriver>, <ore:plateIron>, null], 
  [<ore:plateIron>, <ore:boltIron>, <ore:plateIron>], 
  [<ore:boltIron>, <ore:plateIron>, <ore:boltIron>]]);
  
// Iron Frame: Assembling Machine
assembler.recipeBuilder()
  .inputs(<ore:plateIron> * 4, <ore:boltIron> * 1)
  .outputs(<advgenerators:iron_frame>  * 1)
  .duration(160)
  .EUt(240)
  .buildAndRegister();

// Pressure Valve
recipes.remove(<advgenerators:pressure_valve>);
assembler.recipeBuilder()
  .inputs(<ore:plateIron> * 2, <advgenerators:iron_tubing> * 3)
  .outputs(<advgenerators:pressure_valve>  * 1)
  .duration(32)
  .EUt(220)
  .buildAndRegister();

// Advanced Pressure Valve
recipes.remove(<advgenerators:advanced_pressure_valve>);
assembler.recipeBuilder()
  .inputs(<ore:circuitAdvanced> * 1, <advgenerators:pressure_valve> * 2)
  .outputs(<advgenerators:pressure_valve>  * 1)
  .duration(420)
  .EUt(640)
  .buildAndRegister();
  