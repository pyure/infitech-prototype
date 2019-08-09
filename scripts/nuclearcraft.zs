import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.gregtech.recipe.RecipeMap;

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner") as RecipeMap;
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
val packer as RecipeMap = RecipeMap.getByName("packer");

// These are covered by GT meta tools
recipes.remove(<nuclearcraft:pickaxe_boron>);
recipes.remove(<nuclearcraft:pickaxe_tough>);
recipes.remove(<nuclearcraft:pickaxe_hard_carbon>);
recipes.remove(<nuclearcraft:pickaxe_boron_nitride>);

recipes.remove(<nuclearcraft:axe_boron>);
recipes.remove(<nuclearcraft:axe_tough>);
recipes.remove(<nuclearcraft:axe_hard_carbon>);
recipes.remove(<nuclearcraft:axe_boron_nitride>);

recipes.remove(<nuclearcraft:sword_boron>);
recipes.remove(<nuclearcraft:sword_tough>);
recipes.remove(<nuclearcraft:sword_hard_carbon>);
recipes.remove(<nuclearcraft:sword_boron_nitride>);

recipes.remove(<nuclearcraft:hoe_boron>);
recipes.remove(<nuclearcraft:hoe_tough>);
recipes.remove(<nuclearcraft:hoe_hard_carbon>);
recipes.remove(<nuclearcraft:hoe_boron_nitride>);

recipes.remove(<nuclearcraft:shovel_boron>);
recipes.remove(<nuclearcraft:shovel_tough>);
recipes.remove(<nuclearcraft:shovel_hard_carbon>);
recipes.remove(<nuclearcraft:shovel_boron_nitride>);

// Spaxelhoe removal
recipes.remove(<nuclearcraft:spaxelhoe_boron>);
recipes.remove(<nuclearcraft:spaxelhoe_tough>);
recipes.remove(<nuclearcraft:spaxelhoe_hard_carbon>);
recipes.remove(<nuclearcraft:spaxelhoe_boron_nitride>);

// GT Style block crafting
var blockUranium = <nuclearcraft:ingot_block:4>;
var blockBoron = <nuclearcraft:ingot_block:5>;
var blockZirconium = <nuclearcraft:ingot_block:10>;
var blockGraphite = <nuclearcraft:ingot_block:8>;
var blockBeryllium = <nuclearcraft:ingot_block:9>;
var blockCopper = <nuclearcraft:ingot_block>;
var blockTin = <nuclearcraft:ingot_block:1>;
var blockLead = <nuclearcraft:ingot_block:2>;
var blockThorium = <nuclearcraft:ingot_block:3>;
var blockLithium = <nuclearcraft:ingot_block:6>;
var blockMagnesium = <nuclearcraft:ingot_block:7>;

recipes.remove(blockUranium);
recipes.remove(blockBoron);
recipes.remove(blockZirconium);
recipes.remove(blockGraphite);
recipes.remove(blockBeryllium);
recipes.remove(blockCopper);
recipes.remove(blockTin);
recipes.remove(blockLead);
recipes.remove(blockThorium);
recipes.remove(blockLithium);
recipes.remove(blockMagnesium);
recipes.remove(<nuclearcraft:block_depleted_curium>);
recipes.remove(<nuclearcraft:block_depleted_americium>);
recipes.remove(<nuclearcraft:block_depleted_plutonium>);
recipes.remove(<nuclearcraft:block_depleted_neptunium>);
recipes.remove(<nuclearcraft:block_depleted_uranium>);
recipes.remove(<nuclearcraft:block_depleted_thorium>);
recipes.remove(<nuclearcraft:block_depleted_californium>);
recipes.remove(<nuclearcraft:block_depleted_berkelium>);

scripts.functions.disableItem(<nuclearcraft:manufactory_idle>);
scripts.functions.disableItem(<nuclearcraft:alloy_furnace_idle>);
scripts.functions.disableItem(<nuclearcraft:electrolyser_idle>);

scripts.functions.disableItem(<nuclearcraft:ingot_former_idle>);
scripts.functions.disableItem(<nuclearcraft:pressurizer_idle>);
scripts.functions.disableItem(<nuclearcraft:chemical_reactor_idle>);
scripts.functions.disableItem(<nuclearcraft:extractor_idle>);
scripts.functions.disableItem(<nuclearcraft:helium_collector>);
scripts.functions.disableItem(<nuclearcraft:helium_collector_compact>);
scripts.functions.disableItem(<nuclearcraft:helium_collector_dense>);
scripts.functions.disableItem(<nuclearcraft:nitrogen_collector>);
scripts.functions.disableItem(<nuclearcraft:nitrogen_collector_compact>);
scripts.functions.disableItem(<nuclearcraft:nitrogen_collector_dense>);

//Remove recipes from disabled machines
mods.nuclearcraft.manufactory.removeAllRecipes();
mods.nuclearcraft.alloy_furnace.removeAllRecipes();
mods.nuclearcraft.electrolyser.removeAllRecipes();
mods.nuclearcraft.ingot_former.removeAllRecipes();
mods.nuclearcraft.pressurizer.removeAllRecipes();
mods.nuclearcraft.chemical_reactor.removeAllRecipes();
mods.nuclearcraft.extractor.removeAllRecipes();

compressor.recipeBuilder()
	.inputs(<ore:ingotUranium> * 9)
	.outputs(blockUranium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotBoron> * 9)
	.outputs(blockBoron)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotZirconium> * 9)
	.outputs(blockZirconium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotCurium246> * 9)
	.outputs(<nuclearcraft:block_depleted_curium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotAmericium243> * 9)
	.outputs(<nuclearcraft:block_depleted_americium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotPlutonium242> * 9)
	.outputs(<nuclearcraft:block_depleted_plutonium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotNeptunium237> * 9)
	.outputs(<nuclearcraft:block_depleted_neptunium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotUranium238> * 9)
	.outputs(<nuclearcraft:block_depleted_uranium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotThorium230> * 9)
	.outputs(<nuclearcraft:block_depleted_thorium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotCalifornium252> * 9)
	.outputs(<nuclearcraft:block_depleted_californium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotBerkelium247> * 9)
	.outputs(<nuclearcraft:block_depleted_berkelium>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotGraphite> * 9)
	.outputs(blockGraphite)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotBeryllium> * 9)
	.outputs(blockBeryllium)
	.duration(400).EUt(2)
	.buildAndRegister();
  
  




//Basic plating implosion compressor recipe
recipes.remove(<nuclearcraft:part>);
val icompressor as RecipeMap = RecipeMap.getByName("implosion_compressor");
icompressor.recipeBuilder()
	.inputs(<ore:ingotSteel> * 2, <ore:ingotCarbon> * 1)
	.property("explosives", 1)
	.outputs(<nuclearcraft:part> * 1)
	.duration(20)
	.EUt(32)
	.buildAndRegister();

// ISOTOPE SEPARATOR
mods.nuclearcraft.isotope_separator.removeRecipeWithInput([<ore:dustUranium>]); // Disable processing U238 in isotope seperator  
mods.nuclearcraft.isotope_separator.removeRecipeWithInput([<ore:dustUraniumOxide>]); // Disable processing U238-Ox in isotope seperator  

var itemDuct = <thermaldynamics:duct_32>;
recipes.remove(<nuclearcraft:bin>);
recipes.addShaped("infitech3_tile.nuclearcraft.bin", <nuclearcraft:bin>, [
  [<ore:plateSteel>, null, <ore:plateSteel>], 
  [<ore:cableGtSingleCopper>, <ore:blockObsidian>, itemDuct], 
  [<ore:plateSteel>, <ore:pipeSmallSteel>, <ore:plateSteel>]]);
  
var fuelLEU235 = <nuclearcraft:fuel_uranium:4>;
var fuelHEU235 = <nuclearcraft:fuel_uranium:6>;
recipes.addShapeless("it3_nc_leu235", fuelLEU235, [<ore:dustUranium235>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>]);
recipes.addShapeless("it3_nc_heu235", fuelHEU235, [<ore:dustUranium235>, <ore:dustUranium235>, <ore:dustUranium235>, <ore:dustUranium235>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>, <ore:dustUranium>]);

// Allow GT Borax Dust to count as Boron oredict
var ingotBoron = <nuclearcraft:ingot:5>;

// Add dustBoron for boron ingots instead of NC Boron Dust
furnace.remove(ingotBoron);
furnace.addRecipe(ingotBoron, <ore:dustBoron> | <ore:dustBorax>);

var fusionCore = <nuclearcraft:fusion_core>;
var machine_hull_luv = <gregtech:machine:506>;
recipes.remove(fusionCore);
recipes.addShaped("it3_tile.nuclearcraft.fusion_core", 
  <nuclearcraft:fusion_core>, [
    [<ore:plateElite>, <ore:solenoidMagnesiumDiboride>, <ore:plateElite>], 
    [machine_hull_luv, <ore:chassis>, machine_hull_luv], 
    [<ore:plateElite>, <ore:solenoidMagnesiumDiboride>, <ore:plateElite>]]);


// Solars
recipes.remove(<nuclearcraft:solar_panel_basic>);
var dustQuartz = <ore:dustQuartz> | <ore:dustCertusQuartz> | <ore:dustNetherQuartz>;
assembler.recipeBuilder()
  .inputs(<ore:dustGraphite> * 2, dustQuartz, <ore:plateSilver> * 8, <ore:solenoidCopper> * 2)
  .outputs(<nuclearcraft:solar_panel_basic>)
  .duration(940)
  .EUt(32)
  .buildAndRegister();
  
recipes.remove(<nuclearcraft:solar_panel_advanced>);
assembler.recipeBuilder()
  .inputs(<ore:dustGraphite> * 1, <nuclearcraft:solar_panel_basic> * 3, <ore:solenoidCopper> * 2, <ore:plateAdvanced> * 4)
  .outputs(<nuclearcraft:solar_panel_advanced>)
  .duration(940)
  .EUt(120)
  .buildAndRegister();
   
recipes.remove(<nuclearcraft:solar_panel_du>);
assembler.recipeBuilder()
  .inputs(<ore:dustGraphite> * 1, <nuclearcraft:solar_panel_advanced> * 3, <ore:solenoidMagnesiumDiboride> * 2, <ore:plateDU> * 4)
  .outputs(<nuclearcraft:solar_panel_du>)
  .duration(940)
  .EUt(512)
  .buildAndRegister();
  
recipes.remove(<nuclearcraft:solar_panel_elite>);
assembler.recipeBuilder()
  .inputs(<ore:gemBoronArsenide> * 1, <nuclearcraft:solar_panel_du> * 3, <ore:solenoidMagnesiumDiboride> * 2, <ore:plateElite> * 4)
  .outputs(<nuclearcraft:solar_panel_elite>)
  .duration(940)
  .EUt(2048)
  .buildAndRegister();

// Replace all usages of Bioplastic sheets with Polyethylene
var bioplastic_sheet = <nuclearcraft:part:6>;
var rubber_sheet = <ore:plateRubber>.firstItem;

recipes.replaceAllOccurences(bioplastic_sheet, rubber_sheet);

// Radaway Item
fluid_canner.recipeBuilder() 
    .fluidInputs(<liquid:radaway>)
    .inputs(<ore:platePlastic> * 2)
    .outputs(<nuclearcraft:radaway> * 1 )
    .duration(68)
    .EUt(8)
    .buildAndRegister();

// Nerf NC Reactor Casing recipes a bit (4 output -> 2)
recipes.removeByRecipeName("nuclearcraft:tile.nuclearcraft.fission_block.casing");    
recipes.addShaped("it3_nuclearcraft_tile.nuclearcraft.fission_block.casing", <nuclearcraft:fission_block> * 2, [
  [null, <ore:plateBasic>, null], 
  [<ore:plateBasic>, <ore:ingotTough>, <ore:plateBasic>], 
  [null, <ore:plateBasic>, null]]);

recipes.removeByRecipeName("nuclearcraft:tile.nuclearcraft.reactor_casing_transparent");  
recipes.addShaped("it3_nuclearcraft_tile.nuclearcraft.reactor_casing_transparent", <nuclearcraft:reactor_casing_transparent> * 2, [
  [<ore:blockGlass>, <ore:plateBasic>, <ore:blockGlass>], 
  [<ore:plateBasic>, <ore:ingotTough>, <ore:plateBasic>], 
  [<ore:blockGlass>, <ore:plateBasic>, <ore:blockGlass>]]);

  
// THORIUM FUEL PROCESSING
/*
Finely ground monazite sand is carefully treated with a concentrated NaOH solution at 138 °C (280 °F) to produce a solid thorium hydroxide product. 
===> Crushed Monazite + NaOH 2 + Distilled Water (1000) -> Chemical Reactor -> Thorium Hydroxide Dust + NC Thorium Dust (4%) + Rare Earths (4%) + Sodium (2)
===> Thorium Hydroxide Dust -> Electrolyzer -> Thorium Dust + Oxygen + Hydrogen

Treatment with hydrochloric acid yields a solution of thorium and rare earth chlorides.
===> Thorium Hydroxide Dust + Hydrochloric Acid -> Chemical Reactor -> Crude Thorium Precipitate (Gem?) + NC Thorium Dust (6%) + Rare Earths (6%)
===> Crude Thorium Precipitate -> Electrolyzer -> Thorium Dust + Oxygen + Hydrogen + Chlorine

The crude thorium hydroxide precipitate is then dissolved in nitric acid for final purification by solvent extraction... Thermal concentration of the purified thorium nitrate solution yields a product suitable...
===> Crude Thorium Precipitate + Nitric Acid -> Chemical Reactor -> Thorium Dioxide + NC Thorium Dust (12%) + Rare Earths (12%)
===> Thorium Dioxide -> Electrolyzer -> Thorium + Oxygen (2000)

ThO2 + Hydrogen (2000) + Fluorine (100) -> Chemical Reactor -> NC Thorium Dust + Oxygen (1000) + Water (3000)
*/

chemical_reactor.recipeBuilder()
	.inputs(<ore:dustSodiumHydroxide> * 1)
	.fluidInputs(<liquid:water> * 1000)
	.fluidOutputs(<liquid:sodium_hydroxide_solution> * 1000)  
	.duration(200)
	.EUt(14)
	.buildAndRegister();

chemical_bath.recipeBuilder()
	.inputs(<ore:crushedPurifiedMonazite> * 10)
	.fluidInputs(<liquid:sodium_hydroxide_solution> * 100)
	.outputs([<ore:dustThoriumHydroxide>.firstItem * 1, <ore:dustSodium>.firstItem * 2, <ore:nuggetThorium232>.firstItem * 2])
	.duration(70)
	.EUt(110)
	.buildAndRegister();
 
chemical_bath.recipeBuilder()
	.inputs(<ore:dustThoriumHydroxide> * 1)
	.fluidInputs(<liquid:hydrochloric_acid> * 100)
	.outputs([<ore:dustCrudeThoriumPrecipitate>.firstItem * 1, <ore:nuggetThorium232>.firstItem * 2])
  .chancedOutput(<ore:nuggetThorium232>.firstItem * 1, 900, 400)  
	.duration(50)
	.EUt(220)
	.buildAndRegister();  
  
chemical_bath.recipeBuilder()
	.inputs(<ore:dustCrudeThoriumPrecipitate> * 1)
	.fluidInputs(<liquid:nitric_acid> * 100)
	.outputs([<ore:dustThoriumDioxide>.firstItem * 1, <ore:nuggetThorium232>.firstItem * 3])
  .chancedOutput(<ore:nuggetThorium232>.firstItem * 1, 1200, 400)  
	.duration(50)
	.EUt(510)
	.buildAndRegister();    
  
chemical_reactor.recipeBuilder()
	.inputs(<ore:dustThoriumDioxide> * 1)
	.fluidInputs(<liquid:hydrogen> * 2000)
	.outputs([<ore:ingotThorium232>.firstItem * 1])
  .fluidOutputs(<liquid:oxygen> * 1000, <liquid:water> * 3000)  
	.duration(25)
	.EUt(1040)
	.buildAndRegister();   
  
  
mods.nuclearcraft.isotope_separator.removeRecipeWithInput([<ore:dustThorium>]);  
mods.nuclearcraft.isotope_separator.addRecipe([<ore:dustThorium>, <ore:nuggetThorium232>.firstItem, <ore:nuggetThorium230>.firstItem]);
mods.nuclearcraft.isotope_separator.addRecipe([<ore:ingotThorium>, <ore:nuggetThorium232>.firstItem, <ore:nuggetThorium230>.firstItem]);


// Packager recipes for tiny clumps
packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetThorium230> * 9).outputs(<ore:ingotThorium230>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetThorium232> * 9).outputs(<ore:ingotThorium232>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetUranium233> * 9).outputs(<ore:ingotUranium233>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetUranium235> * 9).outputs(<ore:ingotUranium235>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetUranium238> * 9).outputs(<ore:ingotUranium238>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetNeptunium236> * 9).outputs(<ore:ingotNeptunium236>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetNeptunium237> * 9).outputs(<ore:ingotNeptunium237>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium238> * 9).outputs(<ore:ingotPlutonium238>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium239> * 9).outputs(<ore:ingotPlutonium239>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium241> * 9).outputs(<ore:ingotPlutonium241>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium242> * 9).outputs(<ore:ingotPlutonium242>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetAmericium241> * 9).outputs(<ore:ingotAmericium241>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetAmericium242> * 9).outputs(<ore:ingotAmericium242>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetAmericium243> * 9).outputs(<ore:ingotAmericium243>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium243> * 9).outputs(<ore:ingotCurium243>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium245> * 9).outputs(<ore:ingotCurium245>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium246> * 9).outputs(<ore:ingotCurium246>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium247> * 9).outputs(<ore:ingotCurium247>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetBerkelium247> * 9).outputs(<ore:ingotBerkelium247>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetBerkelium248> * 9).outputs(<ore:ingotBerkelium248>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium249> * 9).outputs(<ore:ingotCalifornium249>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium250> * 9).outputs(<ore:ingotCalifornium250>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium251> * 9).outputs(<ore:ingotCalifornium251>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium252> * 9).outputs(<ore:ingotCalifornium252>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetBoron10> * 9).outputs(<ore:ingotBoron10>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetBoron11> * 9).outputs(<ore:ingotBoron11>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetLithium6> * 9).outputs(<ore:ingotLithium6>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetLithium7> * 9).outputs(<ore:ingotLithium7>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetThorium230Oxide> * 9).outputs(<ore:ingotThorium230Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetThorium232Oxide> * 9).outputs(<ore:ingotThorium232Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetUranium233Oxide> * 9).outputs(<ore:ingotUranium233Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetUranium235Oxide> * 9).outputs(<ore:ingotUranium235Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetUranium238Oxide> * 9).outputs(<ore:ingotUranium238Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetNeptunium236Oxide> * 9).outputs(<ore:ingotNeptunium236Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetNeptunium237Oxide> * 9).outputs(<ore:ingotNeptunium237Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium238Oxide> * 9).outputs(<ore:ingotPlutonium238Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium239Oxide> * 9).outputs(<ore:ingotPlutonium239Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium241Oxide> * 9).outputs(<ore:ingotPlutonium241Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetPlutonium242Oxide> * 9).outputs(<ore:ingotPlutonium242Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetAmericium241Oxide> * 9).outputs(<ore:ingotAmericium241Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetAmericium242Oxide> * 9).outputs(<ore:ingotAmericium242Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetAmericium243Oxide> * 9).outputs(<ore:ingotAmericium243Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium243Oxide> * 9).outputs(<ore:ingotCurium243Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium245Oxide> * 9).outputs(<ore:ingotCurium245Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium246Oxide> * 9).outputs(<ore:ingotCurium246Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCurium247Oxide> * 9).outputs(<ore:ingotCurium247Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetBerkelium247Oxide> * 9).outputs(<ore:ingotBerkelium247Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetBerkelium248Oxide> * 9).outputs(<ore:ingotBerkelium248Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium249Oxide> * 9).outputs(<ore:ingotCalifornium249Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium250Oxide> * 9).outputs(<ore:ingotCalifornium250Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium251Oxide> * 9).outputs(<ore:ingotCalifornium251Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();

packer.recipeBuilder().notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: 1})).inputs(<ore:nuggetCalifornium252Oxide> * 9).outputs(<ore:ingotCalifornium252Oxide>.firstItem).duration(10).EUt(12).buildAndRegister();


// Helium Cooler
var helium_cooler = <nuclearcraft:cooler:8>;
fluid_canner.recipeBuilder() 
    .fluidInputs(<liquid:helium>)
    .inputs(<nuclearcraft:cooler>)
    .outputs(helium_cooler * 1 )
    .duration(50)
    .EUt(42)
    .buildAndRegister();

    
// NC/GT Compat Steel: Disable it.  All of it.
alloy_smelter.findRecipe(16, [<minecraft:iron_ingot> * 1, <ore:ingotGraphite>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<ore:dustIron>.firstItem * 1, <ore:ingotGraphite>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<minecraft:iron_ingot> * 1, <ore:dustGraphite>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<ore:dustIron>.firstItem * 1, <ore:dustGraphite>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<minecraft:coal> * 2, <minecraft:iron_ingot> * 1], null).remove();
alloy_smelter.findRecipe(16, [<minecraft:coal> * 2, <ore:dustIron>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<ore:dustCoal>.firstItem * 2, <minecraft:iron_ingot> * 1], null).remove();
alloy_smelter.findRecipe(16, [<ore:dustCoal>.firstItem * 2, <ore:dustIron>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<minecraft:iron_ingot> * 2, <ore:dustCoke>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<ore:dustIron>.firstItem * 2, <ore:dustCoke>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<minecraft:iron_ingot> * 2, <ore:gemCoke>.firstItem * 1], null).remove();
alloy_smelter.findRecipe(16, [<ore:dustIron>.firstItem * 2, <ore:gemCoke>.firstItem * 1], null).remove();

// Disable Melter recipes that bypass GT gates (e.g. easy blast-furnace ingots) or bypass our in-house fuel processing (thorium, uranium)
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreUranium235>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreAluminium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustAluminium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustChrome>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustIridium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustNeodymium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustOsmium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustPalladium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreThorium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustThorium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreTitanium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustTungsten>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustVanadium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustYttrium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustKanthal>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustNichrome>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustUltimet>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustOsmiridium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustHssg>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustHsse>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustHsss>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreNaquadah>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustNaquadah>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustYtterbium>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:oreAluminum>);
mods.nuclearcraft.melter.removeRecipeWithInput(<ore:dustAluminum>);
mods.nuclearcraft.centrifuge.removeRecipeWithInput(<liquid:thorium_fluoride> * 144);
mods.nuclearcraft.centrifuge.removeRecipeWithInput(<liquid:uranium_fluoride> * 144);
mods.nuclearcraft.centrifuge.removeRecipeWithInput(<liquid:uranium_fluoride_flibe> * 144);
mods.nuclearcraft.centrifuge.removeRecipeWithInput(<liquid:thorium_fluoride_flibe> * 144);
mods.nuclearcraft.centrifuge.removeRecipeWithInput(<liquid:thorium> * 144);
mods.nuclearcraft.centrifuge.removeRecipeWithInput(<liquid:uranium> * 144);