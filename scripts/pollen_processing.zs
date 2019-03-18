import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
val mixer as RecipeMap = RecipeMap.getByName("mixer") as RecipeMap;
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor") as RecipeMap;

var pLead = <ore:pollenLead>;
var pEmerald  = <ore:pollenEmerald>;
var pAluminium = <ore:pollenAluminium>;
var pRedstone= <ore:pollenRedstone>;
var pTin = <ore:pollenTin>;
var pQuartz = <ore:pollenNetherQuartz>;
var pPlatinum = <ore:pollenPlatinum>;
var pCopper = <ore:pollenCopper>;
var pDiamond = <ore:pollenDiamond>;
var pGold = <ore:pollenGold>;
var pLapis = <ore:pollenLapis>;
var pNickel = <ore:pollenNickel>;
var pIron = <ore:pollenIron>;
var pIridium = <ore:pollenIridium>;

val pollenIn = 4;
val oreOut = 2;
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();


/*========== POLLINATED ORE ==========*/

//Lead
alloy_smelter.recipeBuilder().inputs([<ore:crushedLead> * 1, pLead * pollenIn]).outputs(<ore:pollinatedOreLead>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreLead> * 1).outputs(<ore:crushedPurifiedLead>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedLead>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreLead>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedGalena> * 1, pLead * pollenIn]).outputs(<ore:pollinatedOreGalena>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreGalena> * 1).outputs(<ore:crushedPurifiedGalena>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedGalena>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreGalena>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedSilver> * 1, pLead * pollenIn]).outputs(<ore:pollinatedOreSilver>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreSilver> * 1).outputs(<ore:crushedPurifiedSilver>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedSilver>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreSilver>]);


//Emerald
alloy_smelter.recipeBuilder().inputs([<ore:crushedBeryllium> * 1, pEmerald * pollenIn]).outputs(<ore:pollinatedOreBeryllium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreBeryllium> * 1).outputs(<ore:crushedPurifiedBeryllium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedBeryllium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreBeryllium>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedEmerald> * 1, pEmerald * pollenIn]).outputs(<ore:pollinatedOreEmerald>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreEmerald> * 1).outputs(<ore:crushedPurifiedEmerald>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedEmerald>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreEmerald>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedThorium> * 1, pEmerald * pollenIn]).outputs(<ore:pollinatedOreThorium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreThorium> * 1).outputs(<ore:crushedPurifiedThorium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedThorium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreThorium>]);


//Aluminium
alloy_smelter.recipeBuilder().inputs([<ore:crushedAluminium> * 1, pAluminium * pollenIn]).outputs(<ore:pollinatedOreAluminium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreAluminium> * 1).outputs(<ore:crushedPurifiedAluminium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedAluminium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreAluminium>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBauxite> * 1, pAluminium * pollenIn]).outputs(<ore:pollinatedOreBauxite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreBauxite> * 1).outputs(<ore:crushedPurifiedBauxite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedBauxite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreBauxite>]);


//Redstone
alloy_smelter.recipeBuilder().inputs([<ore:crushedCinnabar> * 1, pRedstone * pollenIn]).outputs(<ore:pollinatedOreCinnabar>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCinnabar> * 1).outputs(<ore:crushedPurifiedCinnabar>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCinnabar>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCinnabar>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedRedstone> * 1, pRedstone * pollenIn]).outputs(<ore:pollinatedOreRedstone>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreRedstone> * 1).outputs(<ore:crushedPurifiedRedstone>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedRedstone>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreRedstone>]);


//Tin
alloy_smelter.recipeBuilder().inputs([<ore:crushedTin> * 1, pTin * pollenIn]).outputs(<ore:pollinatedOreTin>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreTin> * 1).outputs(<ore:crushedPurifiedTin>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedTin>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreTin>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCassiterite> * 1, pTin * pollenIn]).outputs(<ore:pollinatedOreCassiterite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCassiterite> * 1).outputs(<ore:crushedPurifiedCassiterite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCassiterite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCassiterite>]);


//Quartz
alloy_smelter.recipeBuilder().inputs([<ore:crushedQuartzite> * 1, pQuartz * pollenIn]).outputs(<ore:pollinatedOreQuartzite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreQuartzite> * 1).outputs(<ore:crushedPurifiedQuartzite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedQuartzite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreQuartzite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedNetherQuartz> * 1, pQuartz * pollenIn]).outputs(<ore:pollinatedOreNetherQuartz>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreNetherQuartz> * 1).outputs(<ore:crushedPurifiedNetherQuartz>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedNetherQuartz>.firstItem * 1, [<ore:craftingToolHardHammerNetherQuartz>, <ore:pollinatedOre>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCertusQuartz> * 1, pQuartz * pollenIn]).outputs(<ore:pollinatedOreCertusQuartz>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCertusQuartz> * 1).outputs(<ore:crushedPurifiedCertusQuartz>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCertusQuartz>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCertusQuartz>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBarite> * 1, pQuartz * pollenIn]).outputs(<ore:pollinatedOreBarite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreBarite> * 1).outputs(<ore:crushedPurifiedBarite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedBarite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreBarite>]);


//Platinum
alloy_smelter.recipeBuilder().inputs([<ore:crushedPlatinum> * 1, pPlatinum * pollenIn]).outputs(<ore:pollinatedOrePlatinum>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOrePlatinum> * 1).outputs(<ore:crushedPurifiedPlatinum>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedPlatinum>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOrePlatinum>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPalladium> * 1, pPlatinum * pollenIn]).outputs(<ore:pollinatedOrePalladium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOrePalladium> * 1).outputs(<ore:crushedPurifiedPalladium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedPalladium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOrePalladium>]);


//Copper
alloy_smelter.recipeBuilder().inputs([<ore:crushedCopper> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreCopper>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCopper> * 1).outputs(<ore:crushedPurifiedCopper>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCopper>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCopper>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedStibnite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreStibnite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreStibnite> * 1).outputs(<ore:crushedPurifiedStibnite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedStibnite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreStibnite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedChalcopyrite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreChalcopyrite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreChalcopyrite> * 1).outputs(<ore:crushedPurifiedChalcopyrite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedChalcopyrite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreChalcopyrite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedMalachite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreMalachite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreMalachite> * 1).outputs(<ore:crushedPurifiedMalachite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedMalachite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreMalachite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedTetrahedrite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreTetrahedrite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreTetrahedrite> * 1).outputs(<ore:crushedPurifiedTetrahedrite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedTetrahedrite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreTetrahedrite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedTenorite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreTenorite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreTenorite> * 1).outputs(<ore:crushedPurifiedTenorite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedTenorite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreTenorite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBornite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreBornite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreBornite> * 1).outputs(<ore:crushedPurifiedBornite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedBornite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreBornite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCuprite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreCuprite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCuprite> * 1).outputs(<ore:crushedPurifiedCuprite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCuprite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCuprite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedChalcocite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreChalcocite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreChalcocite> * 1).outputs(<ore:crushedPurifiedChalcocite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedChalcocite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreChalcocite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedEnargite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreEnargite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreEnargite> * 1).outputs(<ore:crushedPurifiedEnargite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedEnargite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreEnargite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedTennantite> * 1, pCopper * pollenIn]).outputs(<ore:pollinatedOreTennantite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreTennantite> * 1).outputs(<ore:crushedPurifiedTennantite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedTennantite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreTennantite>]);


//Diamond
alloy_smelter.recipeBuilder().inputs([<ore:crushedDiamond> * 1, pDiamond * pollenIn]).outputs(<ore:pollinatedOreDiamond>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreDiamond> * 1).outputs(<ore:crushedPurifiedDiamond>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedDiamond>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreDiamond>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedGraphite> * 1, pDiamond * pollenIn]).outputs(<ore:pollinatedOreGraphite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreGraphite> * 1).outputs(<ore:crushedPurifiedGraphite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedGraphite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreGraphite>]);


//Gold
alloy_smelter.recipeBuilder().inputs([<ore:crushedGold> * 1, pGold * pollenIn]).outputs(<ore:pollinatedOreGold>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreGold> * 1).outputs(<ore:crushedPurifiedGold>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedGold>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreGold>]);


//Lapis
alloy_smelter.recipeBuilder().inputs([<ore:crushedLapis> * 1, pLapis * pollenIn]).outputs(<ore:pollinatedOreLapis>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreLapis> * 1).outputs(<ore:crushedPurifiedLapis>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedLapis>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreLapis>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCalcite> * 1, pLapis * pollenIn]).outputs(<ore:pollinatedOreCalcite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCalcite> * 1).outputs(<ore:crushedPurifiedCalcite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCalcite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCalcite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedSodalite> * 1, pLapis * pollenIn]).outputs(<ore:pollinatedOreSodalite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreSodalite> * 1).outputs(<ore:crushedPurifiedSodalite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedSodalite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreSodalite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedLazurite> * 1, pLapis * pollenIn]).outputs(<ore:pollinatedOreLazurite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreLazurite> * 1).outputs(<ore:crushedPurifiedLazurite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedLazurite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreLazurite>]);


//Nickel
alloy_smelter.recipeBuilder().inputs([<ore:crushedNickel> * 1, pNickel * pollenIn]).outputs(<ore:pollinatedOreNickel>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreNickel> * 1).outputs(<ore:crushedPurifiedNickel>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedNickel>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreNickel>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedGarnierite> * 1, pNickel * pollenIn]).outputs(<ore:pollinatedOreGarnierite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreGarnierite> * 1).outputs(<ore:crushedPurifiedGarnierite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedGarnierite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreGarnierite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPentlandite> * 1, pNickel * pollenIn]).outputs(<ore:pollinatedOrePentlandite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOrePentlandite> * 1).outputs(<ore:crushedPurifiedPentlandite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedPentlandite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOrePentlandite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCobaltite> * 1, pNickel * pollenIn]).outputs(<ore:pollinatedOreCobaltite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreCobaltite> * 1).outputs(<ore:crushedPurifiedCobaltite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedCobaltite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreCobaltite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedWulfenite> * 1, pNickel * pollenIn]).outputs(<ore:pollinatedOreWulfenite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreWulfenite> * 1).outputs(<ore:crushedPurifiedWulfenite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedWulfenite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreWulfenite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPowellite> * 1, pNickel * pollenIn]).outputs(<ore:pollinatedOrePowellite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOrePowellite> * 1).outputs(<ore:crushedPurifiedPowellite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedPowellite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOrePowellite>]);


//Iron
alloy_smelter.recipeBuilder().inputs([<ore:crushedIron> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOreIron>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreIron> * 1).outputs(<ore:crushedPurifiedIron>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedIron>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreIron>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPyrite> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOrePyrite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOrePyrite> * 1).outputs(<ore:crushedPurifiedPyrite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedPyrite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOrePyrite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBandedIron> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOreBandedIron>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreBandedIron> * 1).outputs(<ore:crushedPurifiedBandedIron>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedBandedIron>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreBandedIron>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedMagnetite> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOreMagnetite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreMagnetite> * 1).outputs(<ore:crushedPurifiedMagnetite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedMagnetite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreMagnetite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedVanadiumMagnetite> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOreVanadiumMagnetite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreVanadiumMagnetite> * 1).outputs(<ore:crushedPurifiedVanadiumMagnetite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedVanadiumMagnetite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreVanadiumMagnetite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBrownLimonite> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOreBrownLimonite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreBrownLimonite> * 1).outputs(<ore:crushedPurifiedBrownLimonite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedBrownLimonite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreBrownLimonite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedYellowLimonite> * 1, pIron * pollenIn]).outputs(<ore:pollinatedOreYellowLimonite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreYellowLimonite> * 1).outputs(<ore:crushedPurifiedYellowLimonite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedYellowLimonite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreYellowLimonite>]);


//Iridium
alloy_smelter.recipeBuilder().inputs([<ore:crushedIridium> * 1, pIridium * pollenIn]).outputs(<ore:pollinatedOreIridium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:pollinatedOreIridium> * 1).outputs(<ore:crushedPurifiedIridium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless(<ore:crushedPurifiedIridium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:pollinatedOreIridium>]);


/*========== LIQUID POLLEN ==========*/

var liquid_pollen = [<liquid:liquid_pollen_lead>,<liquid:liquid_pollen_emerald>,<liquid:liquid_pollen_aluminium>,<liquid:liquid_pollen_redstone>,<liquid:liquid_pollen_tin>,<liquid:liquid_pollen_nether_quartz>,<liquid:liquid_pollen_platinum>,
<liquid:liquid_pollen_copper>,<liquid:liquid_pollen_diamond>,<liquid:liquid_pollen_gold>,<liquid:liquid_pollen_lapis>,<liquid:liquid_pollen_nickel>,<liquid:liquid_pollen_iron>,<liquid:liquid_pollen_iridium>] as ILiquidStack[];

var pollen = [<ore:pollenLead>,<ore:pollenEmerald>,<ore:pollenAluminium>,<ore:pollenRedstone>,<ore:pollenTin>,<ore:pollenNetherQuartz>,<ore:pollenPlatinum>,<ore:pollenCopper>,<ore:pollenDiamond>,<ore:pollenGold>,
<ore:pollenLapis>,<ore:pollenNickel>,<ore:pollenIron>,<ore:pollenIridium>] as IIngredient[];


for j, b in pollen {
    mixer.recipeBuilder() // Water + dye = Water mixed dye
        .fluidInputs([<liquid:water> as ILiquidStack * 1000])
        .inputs([b * 4])
        .fluidOutputs([liquid_pollen[j] * 1000])
        .duration(100)
        .EUt(8)
        .buildAndRegister();
	}


/*========== COMBS + POLLEN ==========*/

val pureOut = 6;

var combLapis = <ore:combLapis>;
var combEmerald = <ore:combEmerald>;
var combIron = <ore:combIron>;
var combIridium = <ore:combIridium>;
var combLead = <ore:combLead>;
var combDiamond = <ore:combDiamond>;
var combGold = <ore:combGold>;
var combCertus = <ore:combCertusQuartz>;
var combTin = <ore:combTin>;
var combNickel = <ore:combNickel>;
var combRedstone = <ore:combRedstone>;
var combPlatinum = <ore:combPlatinum>;
var combCopper = <ore:combCopper>;
var combAluminium = <ore:combAluminium>;

//chemical_reactor.recipeBuilder().inputs([<ore:crushed> * 1, comb * 4]).fluidInputs([<liquid:liquid_pollen_> * 1000]).outputs(<ore:crushedPurified>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Lead
chemical_reactor.recipeBuilder().inputs([<ore:crushedLead> * 1, combLead * 4]).fluidInputs([<liquid:liquid_pollen_lead> * 1000]).outputs(<ore:crushedPurifiedLead>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedGalena> * 1, combLead * 4]).fluidInputs([<liquid:liquid_pollen_lead> * 1000]).outputs(<ore:crushedPurifiedGalena>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedSilver> * 1, combLead * 4]).fluidInputs([<liquid:liquid_pollen_lead> * 1000]).outputs(<ore:crushedPurifiedSilver>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Emerald
chemical_reactor.recipeBuilder().inputs([<ore:crushedBeryllium> * 1, combEmerald * 4]).fluidInputs([<liquid:liquid_pollen_emerald> * 1000]).outputs(<ore:crushedPurifiedBeryllium>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedBeryllium> * 1, combEmerald * 4]).fluidInputs([<liquid:liquid_pollen_emerald> * 1000]).outputs(<ore:crushedPurifiedBeryllium>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedThorium> * 1, combEmerald * 4]).fluidInputs([<liquid:liquid_pollen_emerald> * 1000]).outputs(<ore:crushedPurifiedThorium>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Aluminium
chemical_reactor.recipeBuilder().inputs([<ore:crushedAluminium> * 1, combAluminium * 4]).fluidInputs([<liquid:liquid_pollen_aluminium> * 1000]).outputs(<ore:crushedPurifiedAluminium>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedBauxite> * 1, combAluminium * 4]).fluidInputs([<liquid:liquid_pollen_aluminium> * 1000]).outputs(<ore:crushedPurifiedBauxite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Redstone
chemical_reactor.recipeBuilder().inputs([<ore:crushedCinnabar> * 1, combRedstone * 4]).fluidInputs([<liquid:liquid_pollen_redstone> * 1000]).outputs(<ore:crushedPurifiedCinnabar>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedRedstone> * 1, combRedstone * 4]).fluidInputs([<liquid:liquid_pollen_redstone> * 1000]).outputs(<ore:crushedPurifiedRedstone>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Tin
chemical_reactor.recipeBuilder().inputs([<ore:crushedTin> * 1, combTin * 4]).fluidInputs([<liquid:liquid_pollen_tin> * 1000]).outputs(<ore:crushedPurifiedTin>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedCassiterite> * 1, combTin * 4]).fluidInputs([<liquid:liquid_pollen_tin> * 1000]).outputs(<ore:crushedPurifiedCassiterite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Quartz
chemical_reactor.recipeBuilder().inputs([<ore:crushedQuartzite> * 1, combCertus * 4]).fluidInputs([<liquid:liquid_pollen_nether_quartz> * 1000]).outputs(<ore:crushedPurifiedQuartzite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedNetherQuartz> * 1, combCertus * 4]).fluidInputs([<liquid:liquid_pollen_nether_quartz> * 1000]).outputs(<ore:crushedPurifiedNetherQuartz>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedCertusQuartz> * 1, combCertus * 4]).fluidInputs([<liquid:liquid_pollen_nether_quartz> * 1000]).outputs(<ore:crushedPurifiedCertusQuartz>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedBarite> * 1, combCertus * 4]).fluidInputs([<liquid:liquid_pollen_nether_quartz> * 1000]).outputs(<ore:crushedPurifiedBarite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Platinum
chemical_reactor.recipeBuilder().inputs([<ore:crushedPlatinum> * 1, combPlatinum * 4]).fluidInputs([<liquid:liquid_pollen_platinum> * 1000]).outputs(<ore:crushedPurifiedPlatinum>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedPalladium> * 1, combPlatinum * 4]).fluidInputs([<liquid:liquid_pollen_platinum> * 1000]).outputs(<ore:crushedPurifiedPalladium>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Copper
chemical_reactor.recipeBuilder().inputs([<ore:crushedCopper> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedCopper>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedStibnite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedStibnite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedChalcopyrite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedChalcopyrite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedMalachite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedMalachite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedTetrahedrite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedTetrahedrite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedTenorite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedTenorite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedBornite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedBornite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedCuprite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedCuprite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedChalcocite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedChalcocite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedEnargite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedEnargite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedTennantite> * 1, combCopper * 4]).fluidInputs([<liquid:liquid_pollen_copper> * 1000]).outputs(<ore:crushedPurifiedTennantite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Diamond
chemical_reactor.recipeBuilder().inputs([<ore:crushedDiamond> * 1, combDiamond * 4]).fluidInputs([<liquid:liquid_pollen_diamond> * 1000]).outputs(<ore:crushedPurifiedDiamond>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedGraphite> * 1, combDiamond * 4]).fluidInputs([<liquid:liquid_pollen_diamond> * 1000]).outputs(<ore:crushedPurifiedGraphite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Gold
chemical_reactor.recipeBuilder().inputs([<ore:crushedGold> * 1, combGold * 4]).fluidInputs([<liquid:liquid_pollen_gold> * 1000]).outputs(<ore:crushedPurifiedGold>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Lapis
chemical_reactor.recipeBuilder().inputs([<ore:crushedLapis> * 1, combLapis * 4]).fluidInputs([<liquid:liquid_pollen_lapis> * 1000]).outputs(<ore:crushedPurifiedLapis>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedCalcite> * 1, combLapis * 4]).fluidInputs([<liquid:liquid_pollen_lapis> * 1000]).outputs(<ore:crushedPurifiedCalcite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedSodalite> * 1, combLapis * 4]).fluidInputs([<liquid:liquid_pollen_lapis> * 1000]).outputs(<ore:crushedPurifiedSodalite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedLazurite> * 1, combLapis * 4]).fluidInputs([<liquid:liquid_pollen_lapis> * 1000]).outputs(<ore:crushedPurifiedLazurite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Nickel
chemical_reactor.recipeBuilder().inputs([<ore:crushedNickel> * 1, combNickel * 4]).fluidInputs([<liquid:liquid_pollen_nickel> * 1000]).outputs(<ore:crushedPurifiedNickel>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedGarnierite> * 1, combNickel * 4]).fluidInputs([<liquid:liquid_pollen_nickel> * 1000]).outputs(<ore:crushedPurifiedGarnierite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedPentlandite> * 1, combNickel * 4]).fluidInputs([<liquid:liquid_pollen_nickel> * 1000]).outputs(<ore:crushedPurifiedPentlandite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedCobaltite> * 1, combNickel * 4]).fluidInputs([<liquid:liquid_pollen_nickel> * 1000]).outputs(<ore:crushedPurifiedCobaltite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedWulfenite> * 1, combNickel * 4]).fluidInputs([<liquid:liquid_pollen_nickel> * 1000]).outputs(<ore:crushedPurifiedWulfenite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedPowellite> * 1, combNickel * 4]).fluidInputs([<liquid:liquid_pollen_nickel> * 1000]).outputs(<ore:crushedPurifiedPowellite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Iron
chemical_reactor.recipeBuilder().inputs([<ore:crushedIron> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedIron>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedPyrite> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedPyrite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedBandedIron> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedBandedIron>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedMagnetite> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedMagnetite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedVanadiumMagnetite> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedVanadiumMagnetite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedBrownLimonite> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedBrownLimonite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs([<ore:crushedYellowLimonite> * 1, combIron * 4]).fluidInputs([<liquid:liquid_pollen_iron> * 1000]).outputs(<ore:crushedPurifiedYellowLimonite>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();

//Iridium
chemical_reactor.recipeBuilder().inputs([<ore:crushedIridium> * 1, combIridium * 4]).fluidInputs([<liquid:liquid_pollen_iridium> * 1000]).outputs(<ore:crushedPurifiedIridium>.firstItem * pureOut).duration(120).EUt(30).buildAndRegister();
