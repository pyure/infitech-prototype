import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;

val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
val mixer as RecipeMap = RecipeMap.getByName("mixer") as RecipeMap;
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor") as RecipeMap;
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");

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

val pollenIn = 7;
val oreOut = 3;
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;


/*========== POLLINATED ORE ==========*/

//Lead
alloy_smelter.recipeBuilder().inputs([<ore:crushedLead> * 1, pLead * pollenIn]).outputs(<ore:crushedPurifiedLead>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedLead> * 1).outputs(<ore:crushedPurifiedLead>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_28",<ore:crushedPurifiedLead>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedLead>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedGalena> * 1, pLead * pollenIn]).outputs(<ore:crushedPurifiedGalena>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedGalena> * 1).outputs(<ore:crushedPurifiedGalena>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_20",<ore:crushedPurifiedGalena>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedGalena>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedSilver> * 1, pLead * pollenIn]).outputs(<ore:crushedPurifiedSilver>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedSilver> * 1).outputs(<ore:crushedPurifiedSilver>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_40",<ore:crushedPurifiedSilver>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedSilver>]);


//Emerald
alloy_smelter.recipeBuilder().inputs([<ore:crushedBeryllium> * 1, pEmerald * pollenIn]).outputs(<ore:crushedPurifiedBeryllium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedBeryllium> * 1).outputs(<ore:crushedPurifiedBeryllium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_5",<ore:crushedPurifiedBeryllium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedBeryllium>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedEmerald> * 1, pEmerald * pollenIn]).outputs(<ore:crushedPurifiedEmerald>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedEmerald> * 1).outputs(<ore:crushedPurifiedEmerald>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_18",<ore:crushedPurifiedEmerald>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedEmerald>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedThorium> * 1, pEmerald * pollenIn]).outputs(<ore:crushedPurifiedThorium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedThorium> * 1).outputs(<ore:crushedPurifiedThorium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_46",<ore:crushedPurifiedThorium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedThorium>]);


//Aluminium
alloy_smelter.recipeBuilder().inputs([<ore:crushedAluminium> * 1, pAluminium * pollenIn]).outputs(<ore:crushedPurifiedAluminium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedAluminium> * 1).outputs(<ore:crushedPurifiedAluminium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_1",<ore:crushedPurifiedAluminium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedAluminium>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBauxite> * 1, pAluminium * pollenIn]).outputs(<ore:crushedPurifiedBauxite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedBauxite> * 1).outputs(<ore:crushedPurifiedBauxite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_4",<ore:crushedPurifiedBauxite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedBauxite>]);


//Redstone
alloy_smelter.recipeBuilder().inputs([<ore:crushedCinnabar> * 1, pRedstone * pollenIn]).outputs(<ore:crushedPurifiedCinnabar>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCinnabar> * 1).outputs(<ore:crushedPurifiedCinnabar>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_13",<ore:crushedPurifiedCinnabar>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCinnabar>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedRedstone> * 1, pRedstone * pollenIn]).outputs(<ore:crushedPurifiedRedstone>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedRedstone> * 1).outputs(<ore:crushedPurifiedRedstone>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_39",<ore:crushedPurifiedRedstone>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedRedstone>]);


//Tin
alloy_smelter.recipeBuilder().inputs([<ore:crushedTin> * 1, pTin * pollenIn]).outputs(<ore:crushedPurifiedTin>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedTin> * 1).outputs(<ore:crushedPurifiedTin>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_47",<ore:crushedPurifiedTin>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedTin>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCassiterite> * 1, pTin * pollenIn]).outputs(<ore:crushedPurifiedCassiterite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCassiterite> * 1).outputs(<ore:crushedPurifiedCassiterite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_9",<ore:crushedPurifiedCassiterite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCassiterite>]);


//Quartz
alloy_smelter.recipeBuilder().inputs([<ore:crushedQuartzite> * 1, pQuartz * pollenIn]).outputs(<ore:crushedPurifiedQuartzite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedQuartzite> * 1).outputs(<ore:crushedPurifiedQuartzite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_38",<ore:crushedPurifiedQuartzite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedQuartzite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedNetherQuartz> * 1, pQuartz * pollenIn]).outputs(<ore:crushedPurifiedNetherQuartz>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedNetherQuartz> * 1).outputs(<ore:crushedPurifiedNetherQuartz>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_31",<ore:crushedPurifiedNetherQuartz>.firstItem * 1, [<ore:craftingToolHardHammerNetherQuartz>, <ore:crushedPurified>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCertusQuartz> * 1, pQuartz * pollenIn]).outputs(<ore:crushedPurifiedCertusQuartz>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCertusQuartz> * 1).outputs(<ore:crushedPurifiedCertusQuartz>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_10",<ore:crushedPurifiedCertusQuartz>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCertusQuartz>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBarite> * 1, pQuartz * pollenIn]).outputs(<ore:crushedPurifiedBarite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedBarite> * 1).outputs(<ore:crushedPurifiedBarite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_3",<ore:crushedPurifiedBarite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedBarite>]);


//Platinum
alloy_smelter.recipeBuilder().inputs([<ore:crushedPlatinum> * 1, pPlatinum * pollenIn]).outputs(<ore:crushedPurifiedPlatinum>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedPlatinum> * 1).outputs(<ore:crushedPurifiedPlatinum>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_35",<ore:crushedPurifiedPlatinum>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedPlatinum>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPalladium> * 1, pPlatinum * pollenIn]).outputs(<ore:crushedPurifiedPalladium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedPalladium> * 1).outputs(<ore:crushedPurifiedPalladium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_33",<ore:crushedPurifiedPalladium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedPalladium>]);


//Copper
alloy_smelter.recipeBuilder().inputs([<ore:crushedCopper> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedCopper>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCopper> * 1).outputs(<ore:crushedPurifiedCopper>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_15",<ore:crushedPurifiedCopper>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCopper>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedStibnite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedStibnite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedStibnite> * 1).outputs(<ore:crushedPurifiedStibnite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_42",<ore:crushedPurifiedStibnite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedStibnite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedChalcopyrite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedChalcopyrite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedChalcopyrite> * 1).outputs(<ore:crushedPurifiedChalcopyrite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_12",<ore:crushedPurifiedChalcopyrite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedChalcopyrite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedMalachite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedMalachite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedMalachite> * 1).outputs(<ore:crushedPurifiedMalachite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_30",<ore:crushedPurifiedMalachite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedMalachite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedTetrahedrite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedTetrahedrite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedTetrahedrite> * 1).outputs(<ore:crushedPurifiedTetrahedrite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_45",<ore:crushedPurifiedTetrahedrite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedTetrahedrite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedTenorite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedTenorite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedTenorite> * 1).outputs(<ore:crushedPurifiedTenorite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_44",<ore:crushedPurifiedTenorite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedTenorite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBornite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedBornite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedBornite> * 1).outputs(<ore:crushedPurifiedBornite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_6",<ore:crushedPurifiedBornite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedBornite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCuprite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedCuprite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCuprite> * 1).outputs(<ore:crushedPurifiedCuprite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_16",<ore:crushedPurifiedCuprite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCuprite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedChalcocite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedChalcocite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedChalcocite> * 1).outputs(<ore:crushedPurifiedChalcocite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_11",<ore:crushedPurifiedChalcocite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedChalcocite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedEnargite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedEnargite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedEnargite> * 1).outputs(<ore:crushedPurifiedEnargite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_19",<ore:crushedPurifiedEnargite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedEnargite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedTennantite> * 1, pCopper * pollenIn]).outputs(<ore:crushedPurifiedTennantite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedTennantite> * 1).outputs(<ore:crushedPurifiedTennantite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_43",<ore:crushedPurifiedTennantite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedTennantite>]);


//Diamond
alloy_smelter.recipeBuilder().inputs([<ore:crushedDiamond> * 1, pDiamond * pollenIn]).outputs(<ore:crushedPurifiedDiamond>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedDiamond> * 1).outputs(<ore:crushedPurifiedDiamond>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_17",<ore:crushedPurifiedDiamond>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedDiamond>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedGraphite> * 1, pDiamond * pollenIn]).outputs(<ore:crushedPurifiedGraphite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedGraphite> * 1).outputs(<ore:crushedPurifiedGraphite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_23",<ore:crushedPurifiedGraphite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedGraphite>]);


//Gold
alloy_smelter.recipeBuilder().inputs([<ore:crushedGold> * 1, pGold * pollenIn]).outputs(<ore:crushedPurifiedGold>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedGold> * 1).outputs(<ore:crushedPurifiedGold>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_22",<ore:crushedPurifiedGold>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedGold>]);


//Lapis
alloy_smelter.recipeBuilder().inputs([<ore:crushedLapis> * 1, pLapis * pollenIn]).outputs(<ore:crushedPurifiedLapis>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedLapis> * 1).outputs(<ore:crushedPurifiedLapis>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_26",<ore:crushedPurifiedLapis>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedLapis>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCalcite> * 1, pLapis * pollenIn]).outputs(<ore:crushedPurifiedCalcite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCalcite> * 1).outputs(<ore:crushedPurifiedCalcite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_8",<ore:crushedPurifiedCalcite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCalcite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedSodalite> * 1, pLapis * pollenIn]).outputs(<ore:crushedPurifiedSodalite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedSodalite> * 1).outputs(<ore:crushedPurifiedSodalite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_41",<ore:crushedPurifiedSodalite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedSodalite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedLazurite> * 1, pLapis * pollenIn]).outputs(<ore:crushedPurifiedLazurite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedLazurite> * 1).outputs(<ore:crushedPurifiedLazurite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_27",<ore:crushedPurifiedLazurite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedLazurite>]);


//Nickel
alloy_smelter.recipeBuilder().inputs([<ore:crushedNickel> * 1, pNickel * pollenIn]).outputs(<ore:crushedPurifiedNickel>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedNickel> * 1).outputs(<ore:crushedPurifiedNickel>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_32",<ore:crushedPurifiedNickel>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedNickel>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedGarnierite> * 1, pNickel * pollenIn]).outputs(<ore:crushedPurifiedGarnierite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedGarnierite> * 1).outputs(<ore:crushedPurifiedGarnierite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_21",<ore:crushedPurifiedGarnierite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedGarnierite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPentlandite> * 1, pNickel * pollenIn]).outputs(<ore:crushedPurifiedPentlandite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedPentlandite> * 1).outputs(<ore:crushedPurifiedPentlandite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_34",<ore:crushedPurifiedPentlandite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedPentlandite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedCobaltite> * 1, pNickel * pollenIn]).outputs(<ore:crushedPurifiedCobaltite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedCobaltite> * 1).outputs(<ore:crushedPurifiedCobaltite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_14",<ore:crushedPurifiedCobaltite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedCobaltite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedWulfenite> * 1, pNickel * pollenIn]).outputs(<ore:crushedPurifiedWulfenite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedWulfenite> * 1).outputs(<ore:crushedPurifiedWulfenite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_49",<ore:crushedPurifiedWulfenite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedWulfenite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPowellite> * 1, pNickel * pollenIn]).outputs(<ore:crushedPurifiedPowellite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedPowellite> * 1).outputs(<ore:crushedPurifiedPowellite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_36",<ore:crushedPurifiedPowellite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedPowellite>]);


//Iron
alloy_smelter.recipeBuilder().inputs([<ore:crushedIron> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedIron>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedIron> * 1).outputs(<ore:crushedPurifiedIron>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_25",<ore:crushedPurifiedIron>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedIron>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedPyrite> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedPyrite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedPyrite> * 1).outputs(<ore:crushedPurifiedPyrite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_37",<ore:crushedPurifiedPyrite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedPyrite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBandedIron> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedBandedIron>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedBandedIron> * 1).outputs(<ore:crushedPurifiedBandedIron>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_2",<ore:crushedPurifiedBandedIron>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedBandedIron>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedMagnetite> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedMagnetite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedMagnetite> * 1).outputs(<ore:crushedPurifiedMagnetite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_29",<ore:crushedPurifiedMagnetite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedMagnetite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedVanadiumMagnetite> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedVanadiumMagnetite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedVanadiumMagnetite> * 1).outputs(<ore:crushedPurifiedVanadiumMagnetite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_48",<ore:crushedPurifiedVanadiumMagnetite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedVanadiumMagnetite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedBrownLimonite> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedBrownLimonite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedBrownLimonite> * 1).outputs(<ore:crushedPurifiedBrownLimonite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_7",<ore:crushedPurifiedBrownLimonite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedBrownLimonite>]);

alloy_smelter.recipeBuilder().inputs([<ore:crushedYellowLimonite> * 1, pIron * pollenIn]).outputs(<ore:crushedPurifiedYellowLimonite>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedYellowLimonite> * 1).outputs(<ore:crushedPurifiedYellowLimonite>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_50",<ore:crushedPurifiedYellowLimonite>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedYellowLimonite>]);


//Iridium
alloy_smelter.recipeBuilder().inputs([<ore:crushedIridium> * 1, pIridium * pollenIn]).outputs(<ore:crushedPurifiedIridium>.firstItem * oreOut).duration(60).EUt(30).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<ore:crushedPurifiedIridium> * 1).outputs(<ore:crushedPurifiedIridium>.firstItem * 1).duration(20).EUt(8).buildAndRegister();
recipes.addShapeless("it3_combs_purified_24",<ore:crushedPurifiedIridium>.firstItem * 1, [craftingToolHardHammerEmptyTag, <ore:crushedPurifiedIridium>]);


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


// Heliopis
centrifuge.recipeBuilder().inputs([<ore:pollenHelium> * 1]).fluidOutputs([<liquid:helium> * 10]).duration(40).EUt(12).buildAndRegister();