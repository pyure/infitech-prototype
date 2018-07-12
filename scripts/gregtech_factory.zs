#loader gregtech
import mods.gregtech.material.MaterialRegistry;

//materialId, materialName, color, iconSet, harvest level, components (optional)
val dustMaterial = MaterialRegistry.createIngotMaterial(700, "signalum", 0xFFAA33, "dull", 2);
dustMaterial.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);
