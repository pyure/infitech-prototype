#loader gregtech
import mods.gregtech.material.MaterialRegistry;

//IDs 700-750 Ingot/Dust Material and 751 - 799 Fluid Materials

//Ingot		createIngotMaterial(int metaItemSubId, String name, int color, String iconSet, int harvestLevel, @Optional MaterialStack[] materialComponents, @Optional float toolSpeed, @Optional int toolDurability, @Optional int blastFurnaceTemperature)

val materialCompressedWroughtIron = MaterialRegistry.createIngotMaterial(700, "compressed_wrought_iron", 0xC8B4B4, "dull", 2, [<material:iron> * 1, <material:carbon> * 25], 6.2, 510);
materialCompressedWroughtIron.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

val materialCompressedIron = MaterialRegistry.createIngotMaterial(701, "compressed_iron", 0xC8D4D4, "dull", 2, [<material:iron> * 1], 6.0, 435);
materialCompressedIron.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

val materialEnderium = MaterialRegistry.createIngotMaterial(702, "enderium", 0x2E574F, "shiny", 3, null, 8.0, 256, 3000);
materialEnderium.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

val materialSignalum = MaterialRegistry.createIngotMaterial(703, "signalum", 0xFFAA33, "shiny", 2, null, 5.0, 128, 1000);
materialSignalum.addFlags(["GENERATE_BOLT_SCREW", "GENERATE_GEAR"]);

val materialCobaltAluminate = MaterialRegistry.createDustMaterial(704, "cobalt_aluminate", 0x3c37bf, "dull", 0, [<material:cobalt> * 1, <material:aluminium> * 2, <material:oxygen> *4]);
materialCobaltAluminate.addFlags(["DISABLE_DECOMPOSITION"]);

val materialBlueAlloy = MaterialRegistry.createIngotMaterial(705, "blue_alloy", 0x427af4, "dull", 0, [<material:cobalt_aluminate> * 1, <material:silver> * 1]);
materialBlueAlloy.setCableProperties(512, 3, 1);
materialCobaltAluminate.addFlags(["DISABLE_DECOMPOSITION"]);

//Fluid		createFluidMaterial(int metaItemSubId, String name, int color, String iconSet, @Optional MaterialStack[] materialComponents)
val fluidUraniumHexafluoride = MaterialRegistry.createFluidMaterial(751, "uranium_hexafluoride", 0x20b23b, "fluid");
val fluidEnderiumBase = MaterialRegistry.createFluidMaterial(752, "enderium_base", 0x4D756E , "fluid" );



//dyes_water
val fluidWaterDyeBlack = MaterialRegistry.createFluidMaterial(768, "water_dye_black", 0x202020, "fluid", null);
val fluidWaterDyeRed = MaterialRegistry.createFluidMaterial(769, "water_dye_red", 0xff0000, "fluid", null);
val fluidWaterDyeGreen = MaterialRegistry.createFluidMaterial(770, "water_dye_green", 0x00ff00, "fluid", null);
val fluidWaterDyeBrown = MaterialRegistry.createFluidMaterial(771, "water_dye_brown", 0x604000, "fluid", null);
val fluidWaterDyeBlue = MaterialRegistry.createFluidMaterial(772, "water_dye_blue", 0x0000ff, "fluid", null);
val fluidWaterDyePurple = MaterialRegistry.createFluidMaterial(773, "water_dye_purple", 0x800080, "fluid", null);
val fluidWaterDyeCyan = MaterialRegistry.createFluidMaterial(774, "water_dye_cyan", 0x00ffff, "fluid", null);
val fluidWaterDyeLightGray = MaterialRegistry.createFluidMaterial(775, "water_dye_lightgray", 0xc0c0c0, "fluid", null);
val fluidWaterDyeGray = MaterialRegistry.createFluidMaterial(776, "water_dye_gray", 0x808080, "fluid", null);
val fluidWaterDyePink = MaterialRegistry.createFluidMaterial(777, "water_dye_pink", 0xffc0c0, "fluid", null);
val fluidWaterDyeLime = MaterialRegistry.createFluidMaterial(778, "water_dye_lime", 0x80ff80, "fluid", null);
val fluidWaterDyeYellow = MaterialRegistry.createFluidMaterial(779, "water_dye_yellow", 0xffff00, "fluid", null);
val fluidWaterDyeLightBlue = MaterialRegistry.createFluidMaterial(780, "water_dye_lightblue", 0x8080ff, "fluid", null);
val fluidWaterDyeMagenta = MaterialRegistry.createFluidMaterial(781, "water_dye_magenta", 0xff00ff, "fluid", null);
val fluidWaterDyeOrange = MaterialRegistry.createFluidMaterial(782, "water_dye_orange", 0xff8000, "fluid", null);
val fluidWaterDyeWhite = MaterialRegistry.createFluidMaterial(783, "water_dye_white", 0xffffff, "fluid", null);

//dyes_chemical
val fluidChemiDyeBlack = MaterialRegistry.createFluidMaterial(784, "chemi_dye_black", 0x111111, "fluid", null);
val fluidChemiDyeRed = MaterialRegistry.createFluidMaterial(785, "chemi_dye_red", 0xA30000, "fluid", null);
val fluidChemiDyeGreen = MaterialRegistry.createFluidMaterial(786, "chemi_dye_green", 0x00CC00, "fluid", null);
val fluidChemiDyeBrown = MaterialRegistry.createFluidMaterial(787, "chemi_dye_brown", 0x4D3300, "fluid", null);
val fluidChemiDyeBlue = MaterialRegistry.createFluidMaterial(788, "chemi_dye_blue", 0x0000CC, "fluid", null);
val fluidChemiDyePurple = MaterialRegistry.createFluidMaterial(789, "chemi_dye_purple", 0x660066, "fluid", null);
val fluidChemiDyeCyan = MaterialRegistry.createFluidMaterial(790, "chemi_dye_cyan", 0x00CCCC, "fluid", null);
val fluidChemiDyeLightGray = MaterialRegistry.createFluidMaterial(791, "chemi_dye_lightgray", 0x9A9A9A, "fluid", null);
val fluidChemiDyeGray = MaterialRegistry.createFluidMaterial(792, "chemi_dye_gray", 0x666666, "fluid", null);
val fluidChemiDyePink = MaterialRegistry.createFluidMaterial(793, "chemi_dye_pink", 0xCC9A9A, "fluid", null);
val fluidChemiDyeLime = MaterialRegistry.createFluidMaterial(794, "chemi_dye_lime", 0x66CC66, "fluid", null);
val fluidChemiDyeYellow = MaterialRegistry.createFluidMaterial(795, "chemi_dye_yellow", 0xA3A300, "fluid", null);
val fluidChemiDyeLightBlue = MaterialRegistry.createFluidMaterial(796, "chemi_dye_lightblue", 0x6666CC, "fluid", null);
val fluidChemiDyeMagenta = MaterialRegistry.createFluidMaterial(797, "chemi_dye_magenta", 0xCC00CC, "fluid", null);
val fluidChemiDyeOrange = MaterialRegistry.createFluidMaterial(798, "chemi_dye_orange", 0xCC6600, "fluid", null);
val fluidChemiDyeWhite = MaterialRegistry.createFluidMaterial(799, "chemi_dye_white", 0xffffff, "fluid", null);
val fluidLiquidCompost = MaterialRegistry.createFluidMaterial(800, "liquid_compost", 0x405c47 , "fluid" );
val fluidMouldyCompost = MaterialRegistry.createFluidMaterial(801, "mouldy_compost", 0x807c47 , "fluid" );

//Tweaks to existing Materials
<material:borax>.addFlags(["GENERATE_ORE"]);

