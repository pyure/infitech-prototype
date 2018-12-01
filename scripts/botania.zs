import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

var blockDragonstone = <botania:storage:4>;
var blockManadiamond = <botania:storage:3>;
var blockElementium = <botania:storage:2>;
var blockTerrasteel = <botania:storage:1>;
var blockManasteel = <botania:storage>;

// GT Style block crafting
val compressor as RecipeMap = RecipeMap.getByName("compressor");

recipes.remove(blockDragonstone);
recipes.remove(blockManadiamond);
recipes.remove(blockElementium);
recipes.remove(blockTerrasteel);
recipes.remove(blockManasteel);
recipes.remove(<botania:quartztypedark>);
recipes.remove(<botania:quartztypemana>);
recipes.remove(<botania:quartztypeblaze>);
recipes.remove(<botania:quartztypelavender>);
recipes.remove(<botania:quartztypered>);
recipes.remove(<botania:quartztypeelf>);
recipes.remove(<botania:quartztypesunny>);

compressor.recipeBuilder()
	.inputs(<ore:elvenDragonstone> * 9)
	.outputs(blockDragonstone)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:manaDiamond> * 9)
	.outputs(blockManadiamond)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotElvenElementium> * 9)
	.outputs(blockElementium)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotTerrasteel> * 9)
	.outputs(blockTerrasteel)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:ingotManasteel> * 9)
	.outputs(blockManasteel)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzDark> * 4)
	.outputs(<botania:quartztypedark>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzMana> * 4)
	.outputs(<botania:quartztypemana>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzBlaze> * 4)
	.outputs(<botania:quartztypeblaze>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzLavender> * 4)
	.outputs(<botania:quartztypelavender>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzRed> * 4)
	.outputs(<botania:quartztypered>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzElven> * 4)
	.outputs(<botania:quartztypeelf>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:quartzSunny> * 4)
	.outputs(<botania:quartztypesunny>)
	.duration(400).EUt(2)
	.buildAndRegister();
  
