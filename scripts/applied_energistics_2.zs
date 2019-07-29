//Copied to IT2 from GTNH by Jason McRay
//Updated to 1.12 by Agrax

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;


val macerator as RecipeMap = RecipeMap.getByName("macerator");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");

// --- Variables ---
var craftingToolHardHammerEmptyTag = <ore:craftingToolHardHammerEmptyTag>;
var craftingToolScrewdriverEmptyTag = <ore:craftingToolScrewdriverEmptyTag>;
var craftingToolSoftHammerEmptyTag = <ore:craftingToolSoftHammerEmptyTag>;
var craftingToolWrenchEmptyTag = <ore:craftingToolWrenchEmptyTag>;
var craftingToolKnifeEmptyTag = <ore:craftingToolKnifeEmptyTag>;

var AdvAssembler = <meta_tile_entity:assembler.mv>;
var AdvCircuit = <ore:circuitAdvanced>;
var AdvElectrolyzer = <meta_tile_entity:electrolyzer.mv>;
var AlCable = <ore:cableGtOctalAluminium>;
var plateAluminum = <ore:plateAluminium>;
var stickAluminum = <ore:stickAluminium>;
var AnnihilationCore = <appliedenergistics2:material:44>;
var BasicCircuit = <metaitem:circuit.good.regular>;
var woodenGear = <appliedenergistics2:material:40>;

// The laser engraver doesn't seem to use oredict at all and is using the GT block no matter what we do.
// Hack: Specifically allow the PC block for these recipes.
// Mitigation: We automatically unify to these blocks anyway.  
var blockCompressedIron = <pneumaticcraft:compressed_iron_block> | <ore:blockCompressedIron>.firstItem; 
                          
var blockCompressedWroughtIron = <ore:blockCompressedWroughtIron>;
var blockIron = <minecraft:iron_block>;
var ChCertusQuartz = <appliedenergistics2:material:1>;
var ChCertusQuartzBlock = <appliedenergistics2:chiseled_quartz_block>;
var CertusPlate = <ore:plateCertusQuartz>;
var CertusQuartzBlock = <appliedenergistics2:quartz_block>;
var CertusQuartz = <ore:gemCertusQuartz> | <ore:crystalCertusQuartz>;
var CertusRod = <ore:stickCertusQuartz>;
var CertusScrew = <ore:boltCertusQuartz>;
var Charger = <appliedenergistics2:charger>;
var HardenedGlass = <ore:blockGlassHardened>;
var ClearPane = <ore:plateGlass>;
var CoCraftingUnit = <appliedenergistics2:crafting_accelerator>;
var CopperCable = <ore:cableGtSingleCopper>;
var craftingTable = <minecraft:crafting_table>;
var CraftingTerminal = <appliedenergistics2:part:360>;
var CraftingUnit = <appliedenergistics2:crafting_unit>;
var CrystalAccelerator = <appliedenergistics2:quartz_growth_accelerator>;
var DEnergyCell = <appliedenergistics2:dense_energy_cell>;
var EFlow = <ore:circuitMaster>;
var plateRAM = <metaitem:plate.random_access_memory>;
var EnderEyePlate = <ore:plateEnderEye>;
var EnderRod = <ore:stickEnderium>;
var EnderPearl = <minecraft:ender_pearl>;
var EnergyCell = <appliedenergistics2:energy_cell>;
var EVBatBuffer = <meta_tile_entity:battery_buffer.ev.1>;
var FluixBlock = <appliedenergistics2:fluix_block>;
var FluixCoveredC = <appliedenergistics2:part:36>;
var FluixCoveredCBlack = <appliedenergistics2:part:35>;
var FluixCoveredCBlue = <appliedenergistics2:part:31>;
var FluixCoveredCBrown = <appliedenergistics2:part:32>;
var FluixCoveredCCyan = <appliedenergistics2:part:29>;
var FluixCoveredCGray = <appliedenergistics2:part:27>;
var FluixCoveredCGreen = <appliedenergistics2:part:33>;
var FluixCoveredCLightBlue = <appliedenergistics2:part:23>;
var FluixCoveredCLightGray = <appliedenergistics2:part:28>;
var FluixCoveredCLime = <appliedenergistics2:part:25>;
var FluixCoveredCMagenta = <appliedenergistics2:part:22>;
var FluixCoveredCOrange = <appliedenergistics2:part:21>;
var FluixCoveredCPink = <appliedenergistics2:part:26>;
var FluixCoveredCPurple = <appliedenergistics2:part:30>;
var FluixCoveredCRed = <appliedenergistics2:part:34>;
var FluixCoveredCWhite = <appliedenergistics2:part:20>;
var FluixCoveredCYellow = <appliedenergistics2:part:24>;
var FluixCrystal = <appliedenergistics2:material:7>;
var FluixDenseCable = <appliedenergistics2:part:516>;
var FluixDenseCableBlack = <appliedenergistics2:part:515>;
var FluixDenseCableBlue = <appliedenergistics2:part:511>;
var FluixDenseCableBrown = <appliedenergistics2:part:512>;
var FluixDenseCableCyan = <appliedenergistics2:part:509>;
var FluixDenseCableGray = <appliedenergistics2:part:507>;
var FluixDenseCableGreen = <appliedenergistics2:part:513>;
var FluixDenseCableLightBlue = <appliedenergistics2:part:503>;
var FluixDenseCableLightGray = <appliedenergistics2:part:508>;
var FluixDenseCableLime = <appliedenergistics2:part:505>;
var FluixDenseCableMagenta = <appliedenergistics2:part:502>;
var FluixDenseCableOrange = <appliedenergistics2:part:501>;
var FluixDenseCablePink = <appliedenergistics2:part:506>;
var FluixDenseCablePurple = <appliedenergistics2:part:510>;
var FluixDenseCableRed = <appliedenergistics2:part:514>;
var FluixDenseCableWhite = <appliedenergistics2:part:500>;
var FluixDenseCableYellow = <appliedenergistics2:part:504>;
var FluixDust = <ore:dustFluix>;
var FluixGlassCable = <appliedenergistics2:part:16>;
var FluixGlassCableBlack = <appliedenergistics2:part:15>;
var FluixGlassCableBlue = <appliedenergistics2:part:11>;
var FluixGlassCableBrown = <appliedenergistics2:part:12>;
var FluixGlassCableCyan = <appliedenergistics2:part:9>;
var FluixGlassCableGray = <appliedenergistics2:part:7>;
var FluixGlassCableGreen = <appliedenergistics2:part:13>;
var FluixGlassCableLightBlue = <appliedenergistics2:part:3>;
var FluixGlassCableLightGray = <appliedenergistics2:part:8>;
var FluixGlassCableLime = <appliedenergistics2:part:5>;
var FluixGlassCableMagenta = <appliedenergistics2:part:2>;
var FluixGlassCableOrange = <appliedenergistics2:part:1>;
var FluixGlassCablePink = <appliedenergistics2:part:6>;
var FluixGlassCablePurple = <appliedenergistics2:part:10>;
var FluixGlassCableRed = <appliedenergistics2:part:14>;
var FluixGlassCableWhite = <appliedenergistics2:part>;
var FluixGlassCableYellow = <appliedenergistics2:part:4>;
var FluixPearl = <appliedenergistics2:material:9>;
var FluixSmartCable = <appliedenergistics2:part:56>;
var FluixSmartCableBlack = <appliedenergistics2:part:55>;
var FluixSmartCableBlue = <appliedenergistics2:part:51>;
var FluixSmartCableBrown = <appliedenergistics2:part:52>;
var FluixSmartCableCyan = <appliedenergistics2:part:49>;
var FluixSmartCableGray = <appliedenergistics2:part:47>;
var FluixSmartCableGreen = <appliedenergistics2:part:53>;
var FluixSmartCableLightBlue = <appliedenergistics2:part:43>;
var FluixSmartCableLightGray = <appliedenergistics2:part:48>;
var FluixSmartCableLime = <appliedenergistics2:part:45>;
var FluixSmartCableMagenta = <appliedenergistics2:part:42>;
var FluixSmartCableOrange = <appliedenergistics2:part:41>;
var FluixSmartCablePink = <appliedenergistics2:part:46>;
var FluixSmartCablePurple = <appliedenergistics2:part:50>;
var FluixSmartCableRed = <appliedenergistics2:part:54>;
var FluixSmartCableWhite = <appliedenergistics2:part:40>;
var FluixSmartCableYellow = <appliedenergistics2:part:44>;
var FormationCore = <appliedenergistics2:material:43>;

var DenseSmartCableWhite = <appliedenergistics2:part:60>;
var DenseSmartCableOrange = <appliedenergistics2:part:61>;
var DenseSmartCableMagenta = <appliedenergistics2:part:62>;
var DenseSmartCableLightBlue = <appliedenergistics2:part:63>;
var DenseSmartCableYellow = <appliedenergistics2:part:64>;
var DenseSmartCableLime = <appliedenergistics2:part:65>;
var DenseSmartCablePink = <appliedenergistics2:part:66>;
var DenseSmartCableGray = <appliedenergistics2:part:67>;
var DenseSmartCableLightGray = <appliedenergistics2:part:68>;
var DenseSmartCableCyan = <appliedenergistics2:part:69>;
var DenseSmartCablePurple = <appliedenergistics2:part:70>;
var DenseSmartCableBlue = <appliedenergistics2:part:71>;
var DenseSmartCableBrown = <appliedenergistics2:part:72>;
var DenseSmartCableGreen = <appliedenergistics2:part:73>;
var DenseSmartCableRed = <appliedenergistics2:part:74>;
var DenseSmartCableBlack = <appliedenergistics2:part:75>;
var DenseSmartCableFluix = <appliedenergistics2:part:76>;

// Make an oredict that contains all dense smart cables
<ore:smartCableDenseAny>.add(DenseSmartCableWhite);
<ore:smartCableDenseAny>.add(DenseSmartCableOrange);
<ore:smartCableDenseAny>.add(DenseSmartCableMagenta);
<ore:smartCableDenseAny>.add(DenseSmartCableLightBlue);
<ore:smartCableDenseAny>.add(DenseSmartCableYellow);
<ore:smartCableDenseAny>.add(DenseSmartCableLime);
<ore:smartCableDenseAny>.add(DenseSmartCablePink);
<ore:smartCableDenseAny>.add(DenseSmartCableGray);
<ore:smartCableDenseAny>.add(DenseSmartCableLightGray);
<ore:smartCableDenseAny>.add(DenseSmartCableCyan);
<ore:smartCableDenseAny>.add(DenseSmartCablePurple);
<ore:smartCableDenseAny>.add(DenseSmartCableBlue);
<ore:smartCableDenseAny>.add(DenseSmartCableBrown);
<ore:smartCableDenseAny>.add(DenseSmartCableGreen);
<ore:smartCableDenseAny>.add(DenseSmartCableRed);
<ore:smartCableDenseAny>.add(DenseSmartCableBlack);
<ore:smartCableDenseAny>.add(DenseSmartCableFluix);

// Recipes to color single cables (instead of 8 at a time)
recipes.addShapeless("it3_dense_smart_cable_white", DenseSmartCableWhite, [<ore:smartCableDenseAny>, <ore:dyeWhite>]);
recipes.addShapeless("it3_dense_smart_cable_orange", DenseSmartCableOrange, [<ore:smartCableDenseAny>, <ore:dyeOrange>]);
recipes.addShapeless("it3_dense_smart_cable_magenta", DenseSmartCableMagenta, [<ore:smartCableDenseAny>, <ore:dyeMagenta>]);
recipes.addShapeless("it3_dense_smart_cable_lightblue", DenseSmartCableLightBlue, [<ore:smartCableDenseAny>, <ore:dyeLightBlue>]);
recipes.addShapeless("it3_dense_smart_cable_yellow", DenseSmartCableYellow, [<ore:smartCableDenseAny>, <ore:dyeYellow>]);
recipes.addShapeless("it3_dense_smart_cable_lime", DenseSmartCableLime, [<ore:smartCableDenseAny>, <ore:dyeLime>]);
recipes.addShapeless("it3_dense_smart_cable_pink", DenseSmartCablePink, [<ore:smartCableDenseAny>, <ore:dyePink>]);
recipes.addShapeless("it3_dense_smart_cable_gray", DenseSmartCableGray, [<ore:smartCableDenseAny>, <ore:dyeGray>]);
recipes.addShapeless("it3_dense_smart_cable_lightgray", DenseSmartCableLightGray, [<ore:smartCableDenseAny>, <ore:dyeLightGray>]);
recipes.addShapeless("it3_dense_smart_cable_cyan", DenseSmartCableCyan, [<ore:smartCableDenseAny>, <ore:dyeCyan>]);
recipes.addShapeless("it3_dense_smart_cable_purple", DenseSmartCablePurple, [<ore:smartCableDenseAny>, <ore:dyePurple>]);
recipes.addShapeless("it3_dense_smart_cable_blue", DenseSmartCableBlue, [<ore:smartCableDenseAny>, <ore:dyeBlue>]);
recipes.addShapeless("it3_dense_smart_cable_brown", DenseSmartCableBrown, [<ore:smartCableDenseAny>, <ore:dyeBrown>]);
recipes.addShapeless("it3_dense_smart_cable_green", DenseSmartCableGreen, [<ore:smartCableDenseAny>, <ore:dyeGreen>]);
recipes.addShapeless("it3_dense_smart_cable_red", DenseSmartCableRed, [<ore:smartCableDenseAny>, <ore:dyeRed>]);
recipes.addShapeless("it3_dense_smart_cable_black", DenseSmartCableBlack, [<ore:smartCableDenseAny>, <ore:dyeBlack>]);
recipes.addShapeless("it3_dense_smart_cable_fluix", DenseSmartCableFluix, [<ore:smartCableDenseAny>, <ore:dyeFluix>]);


var GlassPlate = <ore:plateGlass>;
var GlowstoneDust = <ore:dustGlowstone>;
var GlowstoneGlass = <thaumcraft:amber_block>;
var GlowstonePlate = <ore:plateGlowstone>;
var GoodCircuit = <ore:circuitGood>;

var HVMachineHull = <meta_tile_entity:hull.hv>;
var Illuminated = <appliedenergistics2:part:180>;
var inscriber = <appliedenergistics2:inscriber>;
var Interface = <appliedenergistics2:part:440>;
var InterfaceTerminal = <appliedenergistics2:part:480>;
var IronRod = <ore:stickIron>;
/*var ITNT = <IC2:blockITNT>; -- to probably add later*/
var lensBlueTopaz = <ore:lensBlueTopaz>;
var lensDiamond = <ore:lensDiamond>;
var lensEmerald = <ore:lensEmerald>;
var lensGlass = <ore:lensGlass>;
var lensGreenSapphire = <ore:lensGreenSapphire>;
var lensOpal = <ore:lensOpal>;
var lensSapphire = <ore:lensSapphire>;
var lensYellowGarnet = <ore:lensYellowGarnet>;
var LightDetector = <appliedenergistics2:light_detector>;
var MEChest = <appliedenergistics2:chest>;
var MEController = <appliedenergistics2:controller>;
var MEDrive = <appliedenergistics2:drive>;
var MolecularAssembler = <appliedenergistics2:molecular_assembler>;
var moltenChlorine = <liquid:chlorine>;
var MSteelRod = <ore:stickSteelMagnetic>;
var NANDChip = <ore:circuitBasic>;
var NetherQuartzBlock = <minecraft:quartz_block>;
var NQuartzPlate = <ore:plateNetherQuartz>;
var NQuartzRod = <ore:stickNetherQuartz>;
var NQuartzScrew = <ore:boltNetherQuartz>;
var Pattern = <appliedenergistics2:material:52>;
var PatternTerminal = <appliedenergistics2:part:340>;
var pistonSticky = <minecraft:sticky_piston>;
var plateSteel = <ore:plateSteel>;
var PlatinumCable = <ore:cableGtQuadruplePlatinum>;

var PureCertusQCrystal = <ore:crystalPureCertusQuartz>;
var PureFluixCrystal = <appliedenergistics2:material:12>;
var PureNetherQCrystal = <ore:crystalPureNetherQuartz>;
var QuartzFixture = <appliedenergistics2:quartz_fixture>;
var QuartzGlass = <appliedenergistics2:quartz_glass>;
var Quartzite = <ore:gemQuartzite>;
var QuartzitePlate = <ore:plateQuartzite>;
var QuartziteRod = <ore:stickQuartzite>;
var QuartziteScrew = <ore:gemQuartzite>;// change to boltQuartzite, when it's added
var RubberPlate = <ore:plateRubber>;
var SiliconPlate = <ore:plateSilicon>;
var SiliconRod = <ore:stickSilicon>;
var StainlessPlate = <ore:plateStainlessSteel>;
var SteelPlate = <ore:plateSteel>;
var Storage16K = <appliedenergistics2:storage_cell_16k>;
var Storage1K = <appliedenergistics2:storage_cell_1k>;
var Storage4K = <appliedenergistics2:storage_cell_4k>;
var Storage64K = <appliedenergistics2:storage_cell_64k>;
var StorageComponent16K = <appliedenergistics2:material:37>;
var StorageComponent1K = <appliedenergistics2:material:35>;
var StorageComponent4K = <appliedenergistics2:material:36>;
var StorageComponent64K = <appliedenergistics2:material:38>;
var Terminal = <appliedenergistics2:part:380>;
var TinyTNT = <appliedenergistics2:tiny_tnt>;
var TitaniumPlate = <ore:plateTitanium>;
var UStorageHousing = <appliedenergistics2:material:39>;
var VibrantQGlass = <appliedenergistics2:quartz_vibrant_glass>;
var WirelessReceiver = <appliedenergistics2:material:41>;
var WirelessTerminal = <appliedenergistics2:wireless_terminal>;
var WirelessCraftingTerminal = <wct:wct>;
var Singularity = <appliedenergistics2:part:47>;
var meteoriteCompass = <appliedenergistics2:sky_compass>;
var blockMeteorite = <appliedenergistics2:sky_stone_block>;
var ClearGlass = <thermalfoundation:glass_alloy:1>;
var inverter = <projectred-integration:gate:1>;
var stickNeoMag = <ore:stickNeodymiumMagnetic>;
var FluStorage1K = <appliedenergistics2:fluid_storage_cell_1k>;
var FluStorage4K = <appliedenergistics2:fluid_storage_cell_4k>;
var FluStorage16K = <appliedenergistics2:fluid_storage_cell_16k>;
var FluStorage64K = <appliedenergistics2:fluid_storage_cell_64k>;
var FluStorageComponent1K = <appliedenergistics2:material:54>;
var FluStorageComponent4K = <appliedenergistics2:material:55>;
var FluStorageComponent16K = <appliedenergistics2:material:56>;
var FluStorageComponent64K = <appliedenergistics2:material:57>;
var ChQuartzRod = <ore:stickCertusQuartz>;
var pressCalculation = <appliedenergistics2:material:13>;
var pressEngineering = <appliedenergistics2:material:14>;
var pressLogic = <appliedenergistics2:material:15>;
var pressSilicon = <appliedenergistics2:material:19>;

var CalcCirc = <appliedenergistics2:material:16>;
var EngCirc = <appliedenergistics2:material:17>;
var LogiCirc = <appliedenergistics2:material:18>;
var SiliCirc = <appliedenergistics2:material:20>;
var CalcProc = <appliedenergistics2:material:23>;
var EngProc = <appliedenergistics2:material:24>;
var LogiProc = <appliedenergistics2:material:22>;
var reddosanudo = <minecraft:sand:1>;
var pureQuartz = <appliedenergistics2:material:10>;
var pureNQuartz = <appliedenergistics2:material:11>;
var pureFluix = <appliedenergistics2:material:12>;
var quartzFiber = <appliedenergistics2:part:140>;
var seedCrystal = <appliedenergistics2:crystal_seed:1200>;

val compressor as RecipeMap = RecipeMap.getByName("compressor");
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
val alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val wiremill as RecipeMap = RecipeMap.getByName("wiremill");
val laser_engraver as RecipeMap = RecipeMap.getByName("laser_engraver");
val forming_press as RecipeMap = RecipeMap.getByName("forming_press");
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val autoclave as RecipeMap = RecipeMap.getByName("autoclave");
val mixer as RecipeMap = RecipeMap.getByName("mixer");

// --- Removing Recipes ---

// --- Blocks ---

// --- Fluix Block
recipes.remove(FluixBlock);

// --- Certus Quartz Block
recipes.remove(CertusQuartzBlock);

// --- Chiseled Certus Quartz Block
recipes.remove(ChCertusQuartzBlock);

// --- ME Controller
recipes.remove(MEController);

// --- Energy Cell
recipes.remove(EnergyCell);

// --- Dense Energy Cell
recipes.remove(DEnergyCell);

// --- ME Chest
recipes.remove(MEChest);

// --- ME Drive
recipes.remove(MEDrive);

// --- Crafting Unit
recipes.remove(CraftingUnit);

// --- Crafting Co Processing Unit
recipes.remove(CoCraftingUnit);

// --- Molecular Assembler
recipes.remove(MolecularAssembler);

// --- ME Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);

// --- ME Quantum Link Chamber
recipes.remove(<appliedenergistics2:quantum_link>);

// --- Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);

// --- Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);

// --- ME Interface
recipes.remove(<appliedenergistics2:interface>);

// --- Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);

// --- ME IO Port
recipes.remove(<appliedenergistics2:io_port>);

// --- Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);

// --- Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);

// --- ME Security Terminal
recipes.remove(<appliedenergistics2:security_station>);

scripts.functions.disableItem(Charger);
scripts.functions.disableItem(CrystalAccelerator);
scripts.functions.disableItem(inscriber);

// --- Items ---

// --- Quartz Fiber
recipes.remove(quartzFiber);

// --- Fluix Glass Cable
recipes.remove(FluixGlassCable);

// --- Fluix Covered Cable
recipes.remove(FluixCoveredC);

// --- Fluix Crystal
recipes.remove(FluixCrystal);

// --- Pure Fluix Crystal
recipes.remove(PureFluixCrystal);

// --- Fluix Pearl
recipes.remove(FluixPearl);

// --- Annihilation Core
recipes.remove(AnnihilationCore);

// --- Formation Core
recipes.remove(FormationCore);

// --- Wireless Receiver
recipes.remove(WirelessReceiver);

// --- Illuminated Panel
recipes.remove(Illuminated);

// --- Terminal
recipes.remove(Terminal);

// --- Crafting Terminal
recipes.remove(CraftingTerminal);

// --- Interface Terminal
recipes.remove(InterfaceTerminal);

// --- Pattern Terminal
recipes.remove(PatternTerminal);

// --- Wireless Terminal
recipes.remove(WirelessTerminal);

// --- Wireless Crafting Terminal
recipes.remove(WirelessCraftingTerminal);

// --- Quartz Glass
recipes.remove(QuartzGlass);

// --- Vibrant Quartz Glass
recipes.remove(VibrantQGlass);

// --- Charged Quartz Fixture
recipes.remove(QuartzFixture);

// --- Light Detecting Fixture
recipes.remove(LightDetector);

// --- Tiny TNT
recipes.remove(TinyTNT);

// --- Advanced Card
recipes.remove(<appliedenergistics2:material:28>);

// --- Blank Pattern
recipes.remove(Pattern);

// --- Basic Card
var basic_card = <appliedenergistics2:material:25>;
recipes.remove(basic_card);

// --- Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);

// --- Capacity Card
var capacity_card = <appliedenergistics2:material:27>;
recipes.remove(capacity_card);

// --- Crafting Card
recipes.remove(<appliedenergistics2:material:53>);

// --- Redstone Card
recipes.remove(<appliedenergistics2:material:26>);

// --- Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);

// --- Inverter Card
recipes.remove(<appliedenergistics2:material:31>);

// --- Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);

// --- Magnet Card
recipes.remove(<wct:magnet_card>);

// --- Wireless Booster
recipes.remove(<appliedenergistics2:material:42>);

// --- ME Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);

// --- Cable Anchor
recipes.remove(<appliedenergistics2:part:120>);

// --- ME Export Bus
recipes.remove(<appliedenergistics2:part:260>);

// --- ME Formation Plane
recipes.remove(<appliedenergistics2:part:320>);

// --- ME Import Bus
recipes.remove(<appliedenergistics2:part:240>);

// --- P2P Tunnel - ME
recipes.remove(<appliedenergistics2:part:460>);

// --- Illuminated Panel
recipes.remove(<appliedenergistics2:part:180>);

// --- ME Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);

// --- Quartz Wrench
recipes.remove(<appliedenergistics2:certus_quartz_wrench>);

// --- Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);

// --- Memory Card
recipes.remove(<appliedenergistics2:memory_card>);

// --- Charged Stuff
recipes.remove(<appliedenergistics2:charged_staff>);

// --- Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);

// --- Color Applicator
recipes.remove(<appliedenergistics2:color_applicator>);

// --- Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);

// --- Certus Quartz Seed
recipes.remove(<appliedenergistics2:crystal_seed>);

// --- Nether Quartz Seed
recipes.remove(<appliedenergistics2:crystal_seed:600>);

// --- Fluix Seed
recipes.remove(<appliedenergistics2:crystal_seed:1200>);

// --- Nether Quartz Wrench
recipes.remove(<appliedenergistics2:nether_quartz_wrench>);

// --- ME Fluid Storage Bus
var fluid_storage_bus = <appliedenergistics2:part:221>;
recipes.remove(fluid_storage_bus);

// --- ME Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);

// --- ME Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);

// --- ME Fluid Level Emmiter
recipes.remove(<appliedenergistics2:part:281>);

// --- ME Fluid Annihilation Plane
recipes.remove(<appliedenergistics2:part:302>);

// --- ME Fluid Formation
recipes.remove(<appliedenergistics2:part:321>);

// --- ME Fluid   ace
recipes.remove(<appliedenergistics2:part:441>);

// --- ME Fluid P2P Channel - Fluid
recipes.remove(<appliedenergistics2:part:463>);

// --- ME Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);

// --- Presses
Inscriber.removeRecipe(pressCalculation);
Inscriber.removeRecipe(pressEngineering);
Inscriber.removeRecipe(pressLogic);
Inscriber.removeRecipe(pressSilicon);


// --- Cells ---


// --- Storage Cell - 1K
recipes.remove(Storage1K);

// --- Storage Cell - 4K
recipes.remove(Storage4K);

// --- Storage Cell - 16K
recipes.remove(Storage16K);

// --- Storage Cell - 64K
recipes.remove(Storage64K);

// --- Universal Storage Housing
recipes.remove(UStorageHousing);

// --- Storage Cell Component - 1K
recipes.remove(StorageComponent1K);

// --- Storage Cell Component - 4K
recipes.remove(StorageComponent4K);

// --- Storage Cell Component - 16K
recipes.remove(StorageComponent16K);

// --- Storage Cell Component - 64K
recipes.remove(StorageComponent64K);

// --- 2 Spatial Storage Cell
recipes.remove(<appliedenergistics2:spatial_storage_cell_2_cubed>);

// --- 16 Spatial Storage Cell
recipes.remove(<appliedenergistics2:spatial_storage_cell_16_cubed>);

// --- 128 Spatial Storage Cell
recipes.remove(<appliedenergistics2:spatial_storage_cell_128_cubed>);

// --- View Cell
recipes.remove(<appliedenergistics2:view_cell>);

// --- 2 Spatial Component
recipes.remove(<appliedenergistics2:material:32>);

// --- 16 Spatial Component
recipes.remove(<appliedenergistics2:material:33>);

// --- 128 Spatial Component
recipes.remove(<appliedenergistics2:material:34>);

// --- Fluid Storage Cell - 1K
recipes.remove(FluStorage1K);

// --- Fluid Storage Cell - 4K
recipes.remove(FluStorage4K);

// --- Fluid Storage Cell - 16K
recipes.remove(FluStorage16K);

// --- Fluid Storage Cell - 64K
recipes.remove(FluStorage64K);

// --- Fluid Storage Cell Component - 1K
recipes.remove(FluStorageComponent1K);

// --- Fluid Storage Cell Component - 4K
recipes.remove(FluStorageComponent4K);

// --- Fluid Storage Cell Component - 16K
recipes.remove(FluStorageComponent16K);

// --- Fluid Storage Cell Component - 64K
recipes.remove(FluStorageComponent64K);


// --- Adding Back Recipes ---


// --- Blocks ---

// --- ME Controller
recipes.addShaped("it3_ae2_controller", MEController, [
[TitaniumPlate, AdvCircuit, TitaniumPlate],
[EngProc, FluixBlock, EngProc],
[TitaniumPlate, AdvCircuit, TitaniumPlate]]);

// --- Energy Cell
recipes.addShaped("it3_ae2_energy_cell", EnergyCell, [
[CertusRod, FluixDust, CertusRod],
[AdvCircuit, FluixBlock, AdvCircuit],
[CertusRod, AlCable, CertusRod]]);

// --- Dense Energy Cell
recipes.addShaped("it3_ae2_dense_energy_cell", DEnergyCell, [
[EnergyCell, EnergyCell, EnergyCell],
[EFlow, EngProc, EFlow],
[EnergyCell, EVBatBuffer, EnergyCell]]);

var bronzeChest = <gregtech:machine:802>;
// --- ME Chest
recipes.addShaped("it3_ae2_chest", MEChest, [
[StainlessPlate, GoodCircuit, StainlessPlate],
[FluixGlassCable, bronzeChest, FluixGlassCable],
[StainlessPlate, GoodCircuit, StainlessPlate]]);

// --- ME Drive
recipes.addShaped("it3_ae2_drive", MEDrive, [
  [TitaniumPlate, EngProc, TitaniumPlate], 
  [FluixGlassCable, MEChest, FluixGlassCable], 
  [TitaniumPlate, <ore:circuitAdvanced>, TitaniumPlate]]);

// --- CraftingUnit
recipes.addShaped("it3_ae2_crafting_unit", CraftingUnit, [
[plateAluminum, LogiProc, plateAluminum],
[BasicCircuit, EngProc, BasicCircuit],
[plateAluminum, CalcProc, plateAluminum]]);

// --- CoCraftingUnit
recipes.addShapeless("it3_ae2_cocrafting_unit", CoCraftingUnit, [CraftingUnit, CalcProc, LogiProc, EngProc]);

// --- Molecular Assembler
recipes.addShaped("it3_ae2_assembler", MolecularAssembler, [
[TitaniumPlate, ClearGlass, TitaniumPlate],
[AnnihilationCore, AdvAssembler, FormationCore],
[TitaniumPlate, ClearGlass, TitaniumPlate]]);

// --- ME Quantum Ring
recipes.addShaped("it3_ae2_q_ring", <appliedenergistics2:quantum_ring>, [
[TitaniumPlate, LogiProc, TitaniumPlate],
[EngProc, <appliedenergistics2:dense_energy_cell>, FluixGlassCable],
[TitaniumPlate, LogiProc, TitaniumPlate]]);

// --- ME Quantum Link Chamber
recipes.addShaped("it3_ae2_q_link", <appliedenergistics2:quantum_link>, [
[TitaniumPlate, FluixPearl, TitaniumPlate],
[FluixPearl, <ore:gemFluix>, FluixPearl],
[TitaniumPlate, FluixPearl, TitaniumPlate]]);
  
// --- Spatial Pylon
recipes.addShaped("it3_ae2_s_pylon", <appliedenergistics2:spatial_pylon>, [
[TitaniumPlate, FluixGlassCable, TitaniumPlate],
[FluixDust, FluixCrystal, FluixDust],
[TitaniumPlate, FluixGlassCable, TitaniumPlate]]);
  
// --- Spatial IO Port
recipes.addShaped("it3_ae2_s_io_port", <appliedenergistics2:spatial_io_port>, [
[TitaniumPlate, GlassPlate, TitaniumPlate],
[FluixGlassCable, <appliedenergistics2:io_port>, FluixGlassCable],
[TitaniumPlate, EngProc, TitaniumPlate]]);

// --- ME Interface
recipes.addShaped("it3_ae2_interface", <appliedenergistics2:interface>, [
[plateAluminum, GlassPlate, plateAluminum],
[FormationCore, <meta_tile_entity:machine_casing.medium_voltage>, AnnihilationCore],
[plateAluminum, GlassPlate, plateAluminum]]);
recipes.addShapeless("it3_ae2_interface_2", <appliedenergistics2:interface>, [Interface]);

// --- Cell Workbench
recipes.addShaped("it3_ae2_cell_workbench", <appliedenergistics2:cell_workbench>, [
[<minecraft:wool>, <rftools:screen>, <minecraft:wool>],
[plateAluminum, CalcProc  , plateAluminum],
[plateAluminum, plateAluminum, plateAluminum]]);

// --- ME IO Port
recipes.addShaped("it3_ae2_io_port", <appliedenergistics2:io_port>, [
[GlassPlate, GlassPlate, GlassPlate],
[MEDrive, FluixGlassCable, MEDrive],
[plateAluminum, LogiProc, plateAluminum]]);

// --- Fluid Interface
recipes.addShapeless("it3_ae2_fluid_interface_block", <appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);

// --- Matter Condenser
recipes.addShaped("it3_ae2_matter_condensor", <appliedenergistics2:condenser>, [
[plateAluminum, <metaitem:electric.piston.mv>, plateAluminum],
[<metaitem:electric.piston.mv>, <meta_tile_entity:hull.hv>, <metaitem:electric.piston.mv>],
[plateAluminum, <metaitem:electric.piston.mv>, plateAluminum]]);
  
// --- Enegery Acceptor
recipes.addShaped("it3_ae2_energy_acceptor", <appliedenergistics2:energy_acceptor>, [
[plateAluminum, GlassPlate, plateAluminum],
[GlassPlate, FluixCrystal, GlassPlate],
[plateAluminum, GlassPlate, plateAluminum]]);

// --- ME Security Terminal
recipes.addShaped("it3_ae2_security_station", <appliedenergistics2:security_station>, [
[plateAluminum, MEChest, plateAluminum],
[FluixGlassCable, StorageComponent16K, FluixGlassCable],
[plateAluminum, EngProc, plateAluminum]]);

// --- Items ---


// --- Fluix Glass Cable
recipes.addShaped("it3_ae2_fluix_glass_cable", FluixGlassCable * 3, [
[CertusRod, FluixDust, CertusRod],
[quartzFiber, quartzFiber, quartzFiber],
[CertusRod, FluixDust, CertusRod]]);

// --- Fluix Covered Cable
recipes.addShaped("it3_ae2_fluix_covered", FluixCoveredC * 3, [
[RubberPlate, RubberPlate, RubberPlate],
[FluixGlassCable, FluixGlassCable, FluixGlassCable],
[RubberPlate, RubberPlate, RubberPlate]]);

// --- Annihilation Core
recipes.addShaped("it3_ae2_annihil_core", AnnihilationCore, [
[NQuartzRod, LogiProc, NQuartzRod],
[LogiProc, PureFluixCrystal, LogiProc],
[NQuartzRod, LogiProc, NQuartzRod]]);

// --- Formation Core
recipes.addShaped("it3_ae2_form_core", FormationCore, [
[CertusRod, LogiProc, CertusRod],
[LogiProc, PureFluixCrystal, LogiProc],
[CertusRod, LogiProc, CertusRod]]);

// --- Fluix Pearl
recipes.addShaped("it3_ae2_fluix_pearl", FluixPearl, [
[PureFluixCrystal, EnderEyePlate, PureFluixCrystal],
[EnderEyePlate, EnderPearl, EnderEyePlate],
[PureFluixCrystal, EnderEyePlate, PureFluixCrystal]]);
// - 
recipes.addShaped("it3_ae2_fluix_pearl_2", FluixPearl, [
[FluixCrystal, EnderEyePlate, FluixCrystal],
[EnderEyePlate, EnderPearl, EnderEyePlate],
[FluixCrystal, EnderEyePlate, FluixCrystal]]);

// --- Wireless Receiver
recipes.addShaped("it3_ae2_wireless_receiver", WirelessReceiver, [
[quartzFiber, FluixPearl, quartzFiber],
[null, EnderRod, null],
[CertusPlate, AdvCircuit, CertusPlate]]);

// --- Terminal
recipes.addShaped("it3_ae2_terminal", Terminal, [
[NQuartzRod, QuartziteScrew, NQuartzRod],
[Illuminated, GoodCircuit, CertusPlate],
[NQuartzRod, craftingToolScrewdriverEmptyTag, NQuartzRod]]);
// - 
recipes.addShaped("it3_ae2_terminal_2", Terminal, [
[NQuartzRod, craftingToolScrewdriverEmptyTag, NQuartzRod],
[Illuminated, GoodCircuit, CertusPlate],
[NQuartzRod, QuartziteScrew, NQuartzRod]]);

// --- Crafting Terminal
recipes.addShaped("it3_ae2_craft_terminal", CraftingTerminal, [
[craftingToolScrewdriverEmptyTag, Terminal, craftingToolSoftHammerEmptyTag],
[CertusScrew, craftingTable, CertusScrew],
[NQuartzPlate, EngProc, NQuartzPlate]]);

// --- Interface Terminal
recipes.addShaped("it3_ae2_interface_terminal", InterfaceTerminal, [
[craftingToolScrewdriverEmptyTag, Terminal, craftingToolSoftHammerEmptyTag],
[CertusScrew, Interface, CertusScrew],
[NQuartzPlate, EngProc, NQuartzPlate]]);

// --- Pattern Terminal
recipes.addShaped("it3_ae2_pattern_terminal", PatternTerminal, [
[craftingToolScrewdriverEmptyTag, Terminal, craftingToolSoftHammerEmptyTag],
[CertusScrew, Pattern, CertusScrew],
[NQuartzPlate, EngProc, NQuartzPlate]]);

// --- Wireless Terminal
recipes.addShaped("it3_ae2_wireless_terminal", WirelessTerminal, [
[WirelessReceiver, Terminal, WirelessReceiver],
[NQuartzPlate, EngProc, NQuartzPlate],
[NQuartzPlate, DEnergyCell, NQuartzPlate]]);

// --- Wireless Crafting Terminal
recipes.addShaped("it3_ae2_wireless_craft_terminal", WirelessCraftingTerminal, [
[WirelessReceiver, CraftingTerminal, WirelessReceiver],
[NQuartzPlate, Singularity, NQuartzPlate],
[NQuartzPlate, DEnergyCell, NQuartzPlate]]);

// --- Vibrant Quartz Glass
recipes.addShaped("it3_ae2_vib_q_glass", VibrantQGlass, [
[GlowstoneDust, GlowstonePlate, GlowstoneDust],
[GlowstonePlate, QuartzGlass, GlowstonePlate],
[GlowstoneDust, GlowstonePlate, GlowstoneDust]]);
// -
recipes.addShaped("it3_ae2_vib_q_glass_2", VibrantQGlass, [
[CertusRod, FluixDust, CertusRod],
[FluixDust, GlowstoneGlass, FluixDust],
[CertusRod, FluixDust, CertusRod]]);

// --- Charged Quartz Fixture
recipes.addShapeless("it3_ae2_quartz_fixture", QuartzFixture, [CertusQuartz, stickAluminum]);

// --- Light Detecting Fixture
recipes.addShapeless("it3_ae2_lightdetector", LightDetector, [ChCertusQuartz, IronRod]);

// --- Advanced Card
recipes.addShaped("it3_ae2_advanced_card", <appliedenergistics2:material:28>, [
[<ore:platePlatinum>, plateAluminum, null],
[<ore:plateRedAlloy>, CalcProc, plateAluminum],
[<ore:platePlatinum>, plateAluminum, null]]);

// --- Basic Card
recipes.addShaped("it3_ae2_basic_card", basic_card, [
[<ore:plateGold>, plateAluminum, null],
[<ore:plateRedAlloy>, CalcProc, plateAluminum],
[<ore:plateGold>, plateAluminum, null]]);

// --- Blank Pattern
recipes.addShaped("it3_ae2_pattern", Pattern, [
[<appliedenergistics2:quartz_glass>, <ore:plateGlowstone>, <appliedenergistics2:quartz_glass>],
[<ore:plateGlowstone>, CertusQuartz, <ore:plateGlowstone>],
[plateAluminum, plateAluminum, plateAluminum]]);


// --- Capacity Card
recipes.addShapeless("it3_ae2_capac_card", capacity_card, [basic_card, StorageComponent1K, StorageComponent1K, ChCertusQuartz]);

// --- Crafting Card
recipes.addShapeless("it3_ae2_craft_card", <appliedenergistics2:material:53>, [basic_card, StorageComponent1K, StorageComponent1K, <ore:craftingWorkBench>]);

// --- Redstone Card
recipes.addShapeless("it3_ae2_redstone_card", <appliedenergistics2:material:26>, [basic_card, <ore:craftingRedstoneTorch>, <ore:craftingRedstoneTorch>, CalcProc]);

// --- Fuzzy Card
recipes.addShapeless("it3_ae2_fuzzy_card", <appliedenergistics2:material:29>, [<appliedenergistics2:material:28>, EngProc, LogiProc, CalcProc]);

// --- Inverter Card
recipes.addShapeless("it3_ae2_inverter_card", <appliedenergistics2:material:31>, [<appliedenergistics2:material:28>, inverter, inverter, CalcProc]);

// --- Acceleration Card
recipes.addShapeless("it3_ae2_accell_card", <appliedenergistics2:material:30>, [<appliedenergistics2:material:28>, EngProc, LogiProc, FluixCrystal]);

// --- Magnet Card
recipes.addShapeless("it3_ae2_magnet_card", <wct:magnet_card>, [<appliedenergistics2:material:28>, EngProc, LogiProc, <botania:lens:10>]);

// --- Wireless Booster
recipes.addShaped("it3_ae2_wireless_booster", <appliedenergistics2:material:42>, [
[FluixDust, CertusQuartz, <ore:plateEnderPearl>],
[plateAluminum, plateAluminum, plateAluminum],
[null, null, null]]);

// --- ME Annihilation Plane
recipes.addShaped("it3_ae2_annih_plane", <appliedenergistics2:part:300>, [
[FluixDust, FluixDust, FluixDust],
[plateAluminum, <appliedenergistics2:material:44>, plateAluminum],
[null, null, null]]);

// --- Cable Anchor
recipes.addShapeless("it3_ae2_anchor_0", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotIron>]);
// -
recipes.addShapeless("it3_ae2_anchor_1", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotCopper>]);
// -
recipes.addShapeless("it3_ae2_anchor_2", <appliedenergistics2:part:120> * 3, [craftingToolKnifeEmptyTag, <ore:ingotBronze>]);
// -
recipes.addShapeless("it3_ae2_anchor_3", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotTin>]);
// -
recipes.addShapeless("it3_ae2_anchor_4", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotIron>]);
// -
recipes.addShapeless("it3_ae2_anchor_5", <appliedenergistics2:part:120> * 4, [craftingToolKnifeEmptyTag, <ore:ingotSteel>]);
// -
recipes.addShapeless("it3_ae2_anchor_6", <appliedenergistics2:part:120> * 4, [craftingToolKnifeEmptyTag, <ore:ingotAluminium>]);
// -
recipes.addShapeless("it3_ae2_anchor_7", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotLead>]);
// -
recipes.addShapeless("it3_ae2_anchor_8", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotNickel>]);
// -
recipes.addShapeless("it3_ae2_anchor_9", <appliedenergistics2:part:120> * 2, [craftingToolKnifeEmptyTag, <ore:ingotSilver>]);
// -
recipes.addShapeless("it3_ae2_anchor_10", <appliedenergistics2:part:120> * 3, [craftingToolKnifeEmptyTag, <ore:ingotBrass>]);
// -
recipes.addShapeless("it3_ae2_anchor_11", <appliedenergistics2:part:120> * 3, [craftingToolKnifeEmptyTag, <ore:ingotInvar>]);

// --- ME Export Bus
recipes.addShaped("it3_ae2_export_bus", <appliedenergistics2:part:260>, [
[plateAluminum, FormationCore, plateAluminum],
[null, <minecraft:piston>, null],
[null, null, null]]);

// --- ME Formation Plane
recipes.addShaped("it3_ae2_form_plane", <appliedenergistics2:part:320>, [
[FluixDust, FluixDust, FluixDust],
[plateAluminum, FormationCore, plateAluminum],
[null, null, null]]);

// --- ME Import Bus
recipes.addShaped("it3_ae2_import_bus", <appliedenergistics2:part:240>, [
[null, <appliedenergistics2:material:44>, null],
[plateAluminum, <minecraft:sticky_piston>, plateAluminum],
[null, null, null]]);

// --- P2P Tunnel - ME
recipes.addShaped("it3_ae2_p2p_me", <appliedenergistics2:part:460>, [
[null, plateAluminum, null],
[plateAluminum, EngProc, plateAluminum],
[FluixCrystal, FluixCrystal, FluixCrystal]]);

// --- Illuminated Panel
recipes.addShaped("it3_ae2_illum_panel", <appliedenergistics2:part:180>, [
[null, <ore:plateGlowstone>, null],
[plateAluminum, <ore:plateRedAlloy>, <rftools:screen>],
[null, <ore:plateGlowstone>, null]]);
// -
recipes.addShapeless("it3_ae2_illum_panel_2", <appliedenergistics2:part:180>, [<appliedenergistics2:part:200>]);

// --- ME Toggle Bus
recipes.addShaped("it3_ae2_toggle_bus", <appliedenergistics2:part:80>, [
[null, <ore:plateRedAlloy>, null],
[FluixGlassCable, <minecraft:lever>, FluixGlassCable],
[null, <ore:plateRedAlloy>, null]]);
// -
recipes.addShapeless("it3_ae2_inverted_toggle", <appliedenergistics2:part:100>, [<appliedenergistics2:part:80>]);

// --- ME Inverted Toggle Bus
recipes.addShapeless("it3_ae2_inverted_toggle2", <appliedenergistics2:part:80>, [<appliedenergistics2:part:100>]);
// PYURE: REMINDER, ONE OF THESE TOGGLE BUS RECIPES LOOKS KINDA WRONG

// --- Quartz Wrench
recipes.addShaped("it3_ae2_quartz_wrench", <appliedenergistics2:certus_quartz_wrench>, [
[CertusQuartz, <ore:craftingToolWrenchEmptyTag>, CertusQuartz],
[CertusQuartz, CertusQuartz, CertusQuartz],
[null, CertusQuartz, null]]);

// --- Nether Quartz Wrench
recipes.addShaped("it3_ae2_neth_quartz_wrench", <appliedenergistics2:nether_quartz_wrench>, [
[<ore:gemQuartz>, <ore:craftingToolWrenchEmptyTag>, <ore:gemQuartz>],
[<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>],
[null, <ore:gemQuartz>, null]]);

// --- Matter Cannon
recipes.addShaped("it3_ae2_amtter_cannon", <appliedenergistics2:matter_cannon>, [
[plateAluminum, plateAluminum, FormationCore],
[StorageComponent64K, <appliedenergistics2:dense_energy_cell>, null],
[plateAluminum, null, null]]);

// --- Memory Card
recipes.addShaped("it3_ae2_mem_card", <appliedenergistics2:memory_card>, [
[CalcProc, plateAluminum, plateAluminum],
[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],
[null, null, null]]);

// --- Charged Staff
recipes.addShaped("it3_ae2_charged_staff", <appliedenergistics2:charged_staff>, [
[ChCertusQuartz, ChCertusQuartz, null],
[ChCertusQuartz, stickNeoMag, null],
[null, null, <ore:stickThaumium>]]);

// --- Entropy Manipulator
recipes.addShaped("it3_ae2_entropy_manip", <appliedenergistics2:entropy_manipulator>, [
[FluixCrystal, LogiProc, null],
[EngProc, <appliedenergistics2:energy_cell>, null],
[null, null, <ore:stickThaumium>]]);

// --- Color Applicator
recipes.addShaped("it3_ae2_color_applic", <appliedenergistics2:color_applicator>, [
[<ore:wireGtSingleAluminium>, FormationCore, <ore:wireGtSingleAluminium>],
[StorageComponent4K, <appliedenergistics2:energy_cell>, StorageComponent4K],
[null, <ore:stickSteel>, null]]);

// --- Biometric Card
recipes.addShaped("it3_ae2_biometric_card", <appliedenergistics2:biometric_card>, [
[EngProc, plateAluminum, plateAluminum],
[<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>],[null, null, null]]);

// --- ME Fluid Storage Bus
recipes.addShapeless("it3_ae2_fluid_storage_bus", fluid_storage_bus, [<appliedenergistics2:part:220>, <minecraft:water_bucket>]);

// --- ME Fluid Import Bus
recipes.addShapeless("it3_ae2_fluid_import_bus", <appliedenergistics2:part:241>, [<appliedenergistics2:part:240>, <minecraft:water_bucket>]);

// --- ME Fluid Export Bus
recipes.addShapeless("it3_ae2_fluid_export_bus", <appliedenergistics2:part:261>, [<appliedenergistics2:part:260>, <minecraft:water_bucket>]);

// --- ME Fluid Level Emmiter
recipes.addShapeless("it3_ae2_fluid_level_emitter", <appliedenergistics2:part:281>, [<appliedenergistics2:part:280>, <minecraft:water_bucket>]);

// --- ME Fluid Annihilation Plane
recipes.addShapeless("it3_ae2_fluid_annih_plane", <appliedenergistics2:part:302>, [<appliedenergistics2:part:300>, <minecraft:water_bucket>]);

// --- ME Fluid Formation
recipes.addShapeless("it3_ae2_fluid_form_plane", <appliedenergistics2:part:321>, [<appliedenergistics2:part:320>, <minecraft:water_bucket>]);

// --- ME Fluid Fluid Interface
recipes.addShapeless("it3_ae2_fluid_interface_flat", <appliedenergistics2:part:441>, [<appliedenergistics2:fluid_interface>]);

// --- ME Fluid P2P Channel - Fluid
recipes.addShapeless("it3_ae2_fluid_p2p", <appliedenergistics2:part:463>, [<appliedenergistics2:part:460>, <minecraft:water_bucket>]);

// --- ME Fluid Terminal
recipes.addShaped("it3_ae2_fluid_terminal", <appliedenergistics2:part:520>, [
[ChQuartzRod, QuartziteScrew, ChQuartzRod],
[Illuminated, GoodCircuit, NQuartzPlate],
[ChQuartzRod, craftingToolScrewdriverEmptyTag, ChQuartzRod]]);
// - 
recipes.addShaped("it3_ae2_fluid_terminal_2", <appliedenergistics2:part:520>, [
[ChQuartzRod, craftingToolScrewdriverEmptyTag, ChQuartzRod],
[Illuminated, GoodCircuit, NQuartzPlate],
[ChQuartzRod, QuartziteScrew, ChQuartzRod]]);

// --- Cells ---

// --- View Cell
recipes.addShapeless("it3_ae2_view_cell", <appliedenergistics2:view_cell>, [UStorageHousing, CertusQuartz]);

// --- 1K ME Storage Cell
recipes.addShapeless("it3_ae2_1k_me_cell", Storage1K, 
[UStorageHousing, StorageComponent1K]);

// --- 4K ME Storage Cell
recipes.addShapeless("it3_ae2_4k_me_cell", Storage4K, 
[UStorageHousing, StorageComponent4K]);
 
// --- 16K ME Storage Cell 
recipes.addShapeless("it3_ae2_16k_me_cell", Storage16K, 
[UStorageHousing, StorageComponent16K]);

// --- 64K ME Storage Cell
recipes.addShapeless("it3_ae2_64k_me_cell", Storage64K, 
[UStorageHousing, StorageComponent64K]);

// --- 1K ME Fluid Storage Cell
recipes.addShapeless("it3_ae2_1k_fluid_cell", FluStorage1K, 
[UStorageHousing, FluStorageComponent1K]);

// --- 4K ME Fluid Storage Cell
recipes.addShapeless("it3_ae2_4k_fluid_cell", FluStorage4K, 
[UStorageHousing, FluStorageComponent4K]);

// --- 16K ME Fluid Storage Cell
recipes.addShapeless("it3_ae2_16k_fluid_cell", FluStorage16K, 
[UStorageHousing, FluStorageComponent16K]);

// --- 64K ME Fluid Storage Cell
recipes.addShapeless("it3_ae2_64k_fluid_cell", FluStorage64K, 
[UStorageHousing, FluStorageComponent64K]);

// --- 2 Spatial Storage Cell
recipes.addShapeless("it3_ae2_2_spatial_cell", <appliedenergistics2:spatial_storage_cell_2_cubed>, 
[UStorageHousing, <appliedenergistics2:material:32>]);

// --- 16 Spatial Storage Cell
recipes.addShapeless("it3_ae2_16_spatial_cell", <appliedenergistics2:spatial_storage_cell_16_cubed>, 
[UStorageHousing, <appliedenergistics2:material:33>]);

// --- 128 Spatial Storage Cell
recipes.addShapeless("it3_ae2_128_spatial_cell", <appliedenergistics2:spatial_storage_cell_128_cubed>, 
[UStorageHousing, <appliedenergistics2:material:34>]);

// --- Universal Storage Housing
recipes.addShaped("it3_ae2_univ_storage_housing", UStorageHousing, [
[craftingToolHardHammerEmptyTag, CertusPlate, QuartziteScrew],
[StainlessPlate, ClearPane, StainlessPlate],
[QuartziteScrew, plateAluminum, craftingToolScrewdriverEmptyTag]]);
// -
recipes.addShaped("it3_ae2_univ_storage_housing_2", UStorageHousing, [
[craftingToolScrewdriverEmptyTag, CertusPlate, QuartziteScrew],
[StainlessPlate, ClearPane, StainlessPlate],
[QuartziteScrew, plateAluminum, craftingToolHardHammerEmptyTag]]);

// --- Storage Cell Component - 1K
recipes.addShaped("it3_ae2_1k_cell_component", StorageComponent1K, [
  [<ore:circuitBasic>, FluixDust, <ore:circuitBasic>],
  [FluixDust, LogiProc, FluixDust],
  [<ore:circuitBasic>, FluixDust, <ore:circuitBasic>]]);

// --- Storage Cell Component - 4K
recipes.addShaped("it3_ae2_4k_cell_component", StorageComponent4K, [
  [plateRAM, StorageComponent1K, plateRAM],
  [<ore:circuitGood>, LogiProc, <ore:circuitGood>],
  [plateRAM, StorageComponent1K, plateRAM]]);

// --- Storage Cell Component - 16K
recipes.addShaped("it3_ae2_16k_cell_component", StorageComponent16K, [
  [plateRAM, StorageComponent4K, plateRAM],
  [<ore:circuitAdvanced>, CalcProc, <ore:circuitAdvanced>],
  [plateRAM, StorageComponent4K, plateRAM]]);

// --- Storage Cell Component - 64K
recipes.addShaped("it3_ae2_64k_cell_component", StorageComponent64K, [
  [plateRAM, StorageComponent16K, plateRAM],
  [<ore:circuitExtreme>, CalcProc, <ore:circuitExtreme>],
  [plateRAM, StorageComponent16K, plateRAM]]);

  
// --- Fluid Storage Cell Component - 1K
recipes.addShaped("it3_ae2_1k_fluid_component", FluStorageComponent1K, [
  [<ore:circuitBasic>, <metaitem:fluid_cell>, <ore:circuitBasic>],
  [<metaitem:fluid_cell>, LogiProc, <metaitem:fluid_cell>],
  [<ore:circuitBasic>, <metaitem:fluid_cell>, <ore:circuitBasic>]]);
  
// --- Fluid Storage Cell Component - 4K
recipes.addShaped("it3_ae2_4k_fluid_component", FluStorageComponent4K, [
  [plateRAM, FluStorageComponent1K, plateRAM],
  [<ore:circuitGood>, LogiProc, <ore:circuitGood>],
  [plateRAM, FluStorageComponent1K, plateRAM]]);  

// --- Fluid Storage Cell Component - 16K
recipes.addShaped("it3_ae2_16k_fluid_component", FluStorageComponent16K, [
  [plateRAM, FluStorageComponent4K, plateRAM],
  [<ore:circuitAdvanced>, LogiProc, <ore:circuitAdvanced>],
  [plateRAM, FluStorageComponent4K, plateRAM]]);    

// --- Fluid Storage Cell Component - 64K
recipes.addShaped("it3_ae2_64k_fluid_component", FluStorageComponent64K, [
  [plateRAM, FluStorageComponent16K, plateRAM],
  [<ore:circuitExtreme>, CalcProc, <ore:circuitExtreme>],
  [plateRAM, FluStorageComponent16K, plateRAM]]);
  
// --- 2 Spatial Component
recipes.addShaped("it3_ae2_2_spatial_component", <appliedenergistics2:material:32>, [
[<ore:plateGlowstone>, FluixPearl, <ore:plateGlowstone>],
[FluixPearl, EngProc, FluixPearl],
[<ore:plateGlowstone>, FluixPearl, <ore:plateGlowstone>]]);

// --- 16 Spatial Component
recipes.addShaped("it3_ae2_16_spatial_component", <appliedenergistics2:material:33>, [
[<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>],
[<appliedenergistics2:material:32>, EngProc, <appliedenergistics2:material:32>],
[<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>]]);

// --- 128 Spatial Component
recipes.addShaped("it3_ae2_128_spatial_component", <appliedenergistics2:material:34>, [
[<ore:plateEnderEye>, <appliedenergistics2:material:33>, <ore:plateEnderEye>],
[<appliedenergistics2:material:33>, EngProc, <appliedenergistics2:material:33>],
[<ore:plateEnderEye>, <appliedenergistics2:material:33>, <ore:plateEnderEye>]]);


//Cable decolorization
var coloredFluixGlassCable = [FluixGlassCableWhite, FluixGlassCableOrange, FluixGlassCableMagenta, FluixGlassCableLightBlue, FluixGlassCableYellow, FluixGlassCableLime, FluixGlassCablePink, FluixGlassCableGray, FluixGlassCableLightGray, FluixGlassCableCyan, FluixGlassCablePurple, FluixGlassCableBrown, FluixGlassCableGreen, FluixGlassCableRed, FluixGlassCableBlack] as IItemStack[];

var coloredFluixCoveredC = [FluixCoveredCWhite, FluixCoveredCOrange, FluixCoveredCMagenta, FluixCoveredCLightBlue, FluixCoveredCYellow, FluixCoveredCLime, FluixCoveredCPink, FluixCoveredCGray, FluixCoveredCLightGray, FluixCoveredCCyan, FluixCoveredCPurple, FluixCoveredCBrown, FluixCoveredCGreen, FluixCoveredCRed, FluixCoveredCBlack] as IItemStack[];

var coloredFluixDenseCable = [FluixDenseCableWhite, FluixDenseCableOrange, FluixDenseCableMagenta, FluixDenseCableLightBlue, FluixDenseCableYellow, FluixDenseCableLime, FluixDenseCablePink, FluixDenseCableGray, FluixDenseCableLightGray, FluixDenseCableCyan, FluixDenseCablePurple, FluixDenseCableBrown, FluixDenseCableGreen, FluixDenseCableRed, FluixDenseCableBlack] as IItemStack[];

var coloredFluixSmartCable = [FluixSmartCableWhite, FluixSmartCableOrange, FluixSmartCableMagenta, FluixSmartCableLightBlue, FluixSmartCableYellow, FluixSmartCableLime, FluixSmartCablePink, FluixSmartCableGray, FluixSmartCableLightGray, FluixSmartCableCyan, FluixSmartCablePurple, FluixSmartCableBrown, FluixSmartCableGreen, FluixSmartCableRed, FluixSmartCableBlack] as IItemStack[];

for i in 0 to 15 {
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixGlassCable[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixGlassCable)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixCoveredC[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixCoveredC)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixDenseCable[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixDenseCable)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(coloredFluixSmartCable[i])
    .fluidInputs(moltenChlorine * 50)
    .outputs(FluixSmartCable)
    .duration(400)
    .EUt(2)
    .buildAndRegister();
}

// --- Alloy Smelter Recipes ---


// --- Quartz Glass
alloy_smelter.recipeBuilder()
    .inputs(<minecraft:glass> * 4, <ore:dustCertusQuartz> *4)
    .outputs(QuartzGlass * 4)
    .duration(400)
    .EUt(16)
    .buildAndRegister();

// --- Chemical Reactor Recipes ---

// --- Seeds
// - 
chemical_reactor.recipeBuilder().inputs(<ore:dustCertusQuartz> * 1, <minecraft:sand> * 1).fluidInputs(<liquid:water> * 100).outputs(pureQuartz * 4).duration(100).EUt(16).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:dustCertusQuartz> * 1, reddosanudo * 1).fluidInputs(<liquid:water> * 100).outputs(pureQuartz * 4).duration(100).EUt(16).buildAndRegister();

// - 
chemical_reactor.recipeBuilder().inputs(<ore:dustNetherQuartz> * 1, <minecraft:sand> * 1).fluidInputs(<liquid:water> * 100).outputs(pureNQuartz * 4).duration(100).EUt(16).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:dustNetherQuartz> * 1, reddosanudo * 1).fluidInputs(<liquid:water> * 100).outputs(pureNQuartz * 4).duration(100).EUt(16).buildAndRegister();

// - 
chemical_reactor.recipeBuilder().inputs(<ore:dustFluix> * 1, <minecraft:sand> * 1).fluidInputs(<liquid:water> * 100).outputs(seedCrystal * 2).duration(100).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:dustFluix> * 1, reddosanudo * 1).fluidInputs(<liquid:water> * 100).outputs(seedCrystal * 2).duration(100).EUt(30).buildAndRegister();

// --- Autoclave recipes ---

// Pure fluix crystals
autoclave.recipeBuilder().inputs(seedCrystal * 1).fluidInputs(<liquid:water> * 1000).chancedOutput(PureFluixCrystal * 1, 6000, 500).duration(2000).EUt(24).buildAndRegister();
autoclave.recipeBuilder().inputs(seedCrystal * 1).fluidInputs(<liquid:distilled_water> * 1000).chancedOutput(PureFluixCrystal * 1, 7000, 700).duration(1000).EUt(24).buildAndRegister();

// Fluix crystals from Dust
autoclave.recipeBuilder().inputs(<ore:dustFluix> * 1).fluidInputs(<liquid:water> * 1000).chancedOutput(FluixCrystal * 1, 7000, 500).duration(2000).EUt(24).buildAndRegister();
autoclave.recipeBuilder().inputs(<ore:dustFluix> * 1).fluidInputs(<liquid:distilled_water> * 1000).chancedOutput(FluixCrystal * 1, 7500, 500).duration(1000).EUt(24).buildAndRegister();

// Fluix crystal recipes
mixer.recipeBuilder().inputs(<minecraft:quartz> * 1, <minecraft:redstone> * 4, ChCertusQuartz * 1).outputs(FluixCrystal * 1).duration(20).EUt(16).buildAndRegister();
mixer.recipeBuilder().inputs(<minecraft:quartz> * 1, <ore:gemExquisiteRuby> * 1, ChCertusQuartz * 1).outputs(FluixCrystal * 4).duration(20).EUt(16).buildAndRegister();
mixer.recipeBuilder().inputs(<ore:gemExquisiteNetherQuartz> * 1, <minecraft:redstone> * 4, ChCertusQuartz * 1).outputs(FluixCrystal * 4).duration(20).EUt(16).buildAndRegister();
mixer.recipeBuilder().inputs(<ore:gemExquisiteNetherQuartz> * 1, <ore:gemExquisiteRuby> * 1, ChCertusQuartz * 1).outputs(FluixCrystal * 12).duration(20).EUt(16).buildAndRegister();




// --- Wiremill Recipes ---

//Quartz Fiber
wiremill.recipeBuilder().inputs(ChQuartzRod * 1).outputs(quartzFiber * 8).duration(200).EUt(120).buildAndRegister();
// -
wiremill.recipeBuilder().inputs(NQuartzRod * 1).outputs(quartzFiber * 4).duration(200).EUt(120).buildAndRegister();
// -
wiremill.recipeBuilder().inputs(QuartziteRod * 1).outputs(quartzFiber * 2).duration(200).EUt(120).buildAndRegister();

// --- AE2 Presses ---

// Silicon Press
laser_engraver.recipeBuilder().inputs(blockCompressedIron * 1).notConsumable(<ore:craftingLensWhite> * 1).outputs(pressSilicon * 1).duration(12000).EUt(120).buildAndRegister();
laser_engraver.recipeBuilder().inputs(blockCompressedWroughtIron * 1).notConsumable(<ore:craftingLensWhite> * 1).outputs(pressSilicon * 1).duration(8000).EUt(120).buildAndRegister();
// Logic Press
laser_engraver.recipeBuilder().inputs(blockCompressedIron * 1).notConsumable(<ore:craftingLensLime> * 1).outputs(pressLogic * 1).duration(12000).EUt(120).buildAndRegister();
laser_engraver.recipeBuilder().inputs(blockCompressedWroughtIron * 1).notConsumable(<ore:craftingLensGreen> * 1).outputs(pressLogic * 1).duration(8000).EUt(120).buildAndRegister();
// Engineering Press
laser_engraver.recipeBuilder().inputs(blockCompressedIron * 1).notConsumable(<ore:craftingLensYellow> * 1).outputs(pressEngineering * 1).duration(12000).EUt(120).buildAndRegister();
laser_engraver.recipeBuilder().inputs(blockCompressedWroughtIron * 1).notConsumable(<ore:craftingLensYellow> * 1).outputs(pressEngineering * 1).duration(8000).EUt(120).buildAndRegister();
// Calculation Press
laser_engraver.recipeBuilder().inputs(blockCompressedIron * 1).notConsumable(<ore:craftingLensBlue> * 1).outputs(pressCalculation * 1).duration(12000).EUt(120).buildAndRegister();
laser_engraver.recipeBuilder().inputs(blockCompressedWroughtIron * 1).notConsumable(<ore:craftingLensBlue> * 1).outputs(pressCalculation * 1).duration(8000).EUt(120).buildAndRegister();

//Forming press recipes
forming_press.recipeBuilder().inputs(<ore:plateCertusQuartz> * 1).notConsumable(pressCalculation * 1).outputs(CalcCirc * 1).duration(200).EUt(16).buildAndRegister();
forming_press.recipeBuilder().inputs(pureQuartz * 1).notConsumable(pressCalculation * 1).outputs(CalcCirc * 1).duration(200).EUt(16).buildAndRegister();
forming_press.recipeBuilder().inputs(<ore:plateDiamond> * 1).notConsumable(pressEngineering * 1).outputs(EngCirc * 1).duration(200).EUt(16).buildAndRegister();
forming_press.recipeBuilder().inputs(<ore:plateGold> * 1).notConsumable(pressLogic * 1).outputs(LogiCirc * 1).duration(200).EUt(16).buildAndRegister();
forming_press.recipeBuilder().inputs(<ore:plateSilicon> * 1).notConsumable(pressSilicon * 1).outputs(SiliCirc * 1).duration(200).EUt(16).buildAndRegister();

//Assembling machine 
assembler.recipeBuilder().inputs(CalcCirc * 1, SiliCirc * 1).fluidInputs(<liquid:redstone> * 144).outputs(CalcProc * 1).duration(60).EUt(32).buildAndRegister();
assembler.recipeBuilder().inputs(EngCirc * 1, SiliCirc * 1).fluidInputs(<liquid:redstone> * 144).outputs(EngProc * 1).duration(60).EUt(32).buildAndRegister();
assembler.recipeBuilder().inputs(LogiCirc * 1, SiliCirc * 1).fluidInputs(<liquid:redstone> * 144).outputs(LogiProc * 1).duration(60).EUt(32).buildAndRegister();

//Wooden gear
recipes.removeShaped(woodenGear, [
	[null, <ore:stickWood>, null],
	[<ore:stickWood>, null, <ore:stickWood>],
	[null, <ore:stickWood>, null]]);

recipes.remove(<appliedenergistics2:fluix_block>);
recipes.remove(<appliedenergistics2:quartz_block>);

compressor.recipeBuilder()
	.inputs(<ore:crystalFluix> * 4)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:crystalPureFluix> * 8)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz> * 4)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400).EUt(2)
	.buildAndRegister();
compressor.recipeBuilder()
	.inputs(<appliedenergistics2:material:10> * 16) // Prevents infinite certus exploit
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400).EUt(2)
	.buildAndRegister();

// Compass
recipes.remove(meteoriteCompass);
recipes.addShaped("it3_ae2_meteor_compass", meteoriteCompass, [[null, <ore:ingotSteel>, null], [<ore:ingotSteel>, blockMeteorite, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);
recipes.addShaped("it3_ae2_meteor_compass_2", meteoriteCompass, [[null, <ore:ingotCompressedWroughtIron>, null], [<ore:ingotCompressedWroughtIron>, blockMeteorite, <ore:ingotCompressedWroughtIron>], [null, <ore:ingotCompressedWroughtIron>, null]]);

// Macerator recipe for fluix crystal -> dust
var fluix_dust = <appliedenergistics2:material:8>;

macerator.recipeBuilder()
	.inputs([<ore:crystalFluix> * 1])
	.outputs(fluix_dust * 1)
	.duration(65)
	.EUt(14)
	.buildAndRegister();
  
// Charged Certus Quartz
var charged_certus_quartz = <appliedenergistics2:material:1>;
electrolyzer.recipeBuilder()
	.inputs(CertusQuartz | <ore:crystalCertusQuartz>)
	.outputs(charged_certus_quartz)
	.duration(520)
  .EUt(82)
	.buildAndRegister();  

