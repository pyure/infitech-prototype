#loader gregtech
import mods.gregtech.material.MaterialRegistry;

//materialId, materialName, color, iconSet, harvest level, components (optional)
val materialSignalum = MaterialRegistry.createIngotMaterial(700, "signalum", 0xFFAA33, "dull", 2);
materialSignalum.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

val materialCompressedWroughtIron = MaterialRegistry.createIngotMaterial(701, "compressed_wrought_iron", 0xC8B4B4, "dull", 2, null, 6.2, 510);
materialCompressedWroughtIron.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

val materialCompressedIron = MaterialRegistry.createIngotMaterial(702, "compressed_iron", 0xC8D4D4, "dull", 2, null, 6.0, 435);
materialCompressedIron.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

//Fluids
val fluidFishOil = MaterialRegistry.createFluidMaterial(703, "fish_oil", 0xffc400, "fluid", null);
val fluidUraniumHexafluoride = MaterialRegistry.createFluidMaterial(704, "uranium_hexafluoride", 0x20b23b, "fluid", null);
val fluidFermentedBiomass = MaterialRegistry.createFluidMaterial(705, "fermented_biomass", 0x607c47, "fluid", null);

//dyes_water
val fluidWaterDyeBlack = MaterialRegistry.createFluidMaterial(706, "water_dye_black", 0x202020, "fluid", null);
val fluidWaterDyeRed = MaterialRegistry.createFluidMaterial(707, "water_dye_red", 0xff0000, "fluid", null);
val fluidWaterDyeGreen = MaterialRegistry.createFluidMaterial(708, "water_dye_green", 0x00ff00, "fluid", null);
val fluidWaterDyeBrown = MaterialRegistry.createFluidMaterial(709, "water_dye_brown", 0x604000, "fluid", null);
val fluidWaterDyeBlue = MaterialRegistry.createFluidMaterial(710, "water_dye_blue", 0x0000ff, "fluid", null);
val fluidWaterDyePurple = MaterialRegistry.createFluidMaterial(711, "water_dye_purple", 0x800080, "fluid", null);
val fluidWaterDyeCyan = MaterialRegistry.createFluidMaterial(712, "water_dye_cyan", 0x00ffff, "fluid", null);
val fluidWaterDyeLightGray = MaterialRegistry.createFluidMaterial(713, "water_dye_lightgray", 0xc0c0c0, "fluid", null);
val fluidWaterDyeGray = MaterialRegistry.createFluidMaterial(714, "water_dye_gray", 0x808080, "fluid", null);
val fluidWaterDyePink = MaterialRegistry.createFluidMaterial(715, "water_dye_pink", 0xffc0c0, "fluid", null);
val fluidWaterDyeLime = MaterialRegistry.createFluidMaterial(716, "water_dye_lime", 0x80ff80, "fluid", null);
val fluidWaterDyeYellow = MaterialRegistry.createFluidMaterial(717, "water_dye_yellow", 0xffff00, "fluid", null);
val fluidWaterDyeLightBlue = MaterialRegistry.createFluidMaterial(718, "water_dye_lightblue", 0x8080ff, "fluid", null);
val fluidWaterDyeMagenta = MaterialRegistry.createFluidMaterial(719, "water_dye_magenta", 0xff00ff, "fluid", null);
val fluidWaterDyeOrange = MaterialRegistry.createFluidMaterial(720, "water_dye_orange", 0xff8000, "fluid", null);
val fluidWaterDyeWhite = MaterialRegistry.createFluidMaterial(721, "water_dye_white", 0xffffff, "fluid", null);

//dyes_chemical
val fluidChemiDyeBlack = MaterialRegistry.createFluidMaterial(722, "chemi_dye_black", 0x111111, "fluid", null);
val fluidChemiDyeRed = MaterialRegistry.createFluidMaterial(723, "chemi_dye_red", 0xA30000, "fluid", null);
val fluidChemiDyeGreen = MaterialRegistry.createFluidMaterial(724, "chemi_dye_green", 0x00CC00, "fluid", null);
val fluidChemiDyeBrown = MaterialRegistry.createFluidMaterial(725, "chemi_dye_brown", 0x4D3300, "fluid", null);
val fluidChemiDyeBlue = MaterialRegistry.createFluidMaterial(726, "chemi_dye_blue", 0x0000CC, "fluid", null);
val fluidChemiDyePurple = MaterialRegistry.createFluidMaterial(727, "chemi_dye_purple", 0x660066, "fluid", null);
val fluidChemiDyeCyan = MaterialRegistry.createFluidMaterial(728, "chemi_dye_cyan", 0x00CCCC, "fluid", null);
val fluidChemiDyeLightGray = MaterialRegistry.createFluidMaterial(729, "chemi_dye_lightgray", 0x9A9A9A, "fluid", null);
val fluidChemiDyeGray = MaterialRegistry.createFluidMaterial(730, "chemi_dye_gray", 0x666666, "fluid", null);
val fluidChemiDyePink = MaterialRegistry.createFluidMaterial(731, "chemi_dye_pink", 0xCC9A9A, "fluid", null);
val fluidChemiDyeLime = MaterialRegistry.createFluidMaterial(732, "chemi_dye_lime", 0x66CC66, "fluid", null);
val fluidChemiDyeYellow = MaterialRegistry.createFluidMaterial(733, "chemi_dye_yellow", 0xA3A300, "fluid", null);
val fluidChemiDyeLightBlue = MaterialRegistry.createFluidMaterial(734, "chemi_dye_lightblue", 0x6666CC, "fluid", null);
val fluidChemiDyeMagenta = MaterialRegistry.createFluidMaterial(735, "chemi_dye_magenta", 0xCC00CC, "fluid", null);
val fluidChemiDyeOrange = MaterialRegistry.createFluidMaterial(736, "chemi_dye_orange", 0xCC6600, "fluid", null);
val fluidChemiDyeWhite = MaterialRegistry.createFluidMaterial(737, "chemi_dye_white", 0xffffff, "fluid", null);
