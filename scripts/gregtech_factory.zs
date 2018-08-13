#loader gregtech
import mods.gregtech.material.MaterialRegistry;

//materialId, materialName, color, iconSet, harvest level, components (optional)
val materialSignalum = MaterialRegistry.createIngotMaterial(700, "signalum", 0xFFAA33, "dull", 2);
materialSignalum.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);

val materialCompressedWroughtIron = MaterialRegistry.createIngotMaterial(701, "compressed_wrought_iron", 0xC8B4B4, "dull", 2, null, 6.2, 510);


materialCompressedWroughtIron.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_BOLT_SCREW"]);
