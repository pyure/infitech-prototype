#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.PartDataPiece;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.Color;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.MaterialPartColorSupplier;
import mods.contenttweaker.MaterialPartLocalizedNameSupplier;

/*
var craftingToolPartType = MaterialSystem.createPartType("crafting_tool", function(materialPart) {
    var materialName = materialPart.getMaterial().getUnlocalizedName();
    var partName = materialPart.getPart().getUnlocalizedName();

    var tool = VanillaFactory.createItem(materialName ~ "_" ~ partName);
    tool.maxStackSize = 1;
    tool.maxDamage = materialPart.getData().getIntValue("maxDamage", 256);

    tool.itemGetContainerItem = function(item) {
      return (item.damage + 1 < item.maxDamage) ? item.withDamage(item.damage + 1) : null;
    };
    tool.itemColorSupplier = function(stack, tint) {
      return materialPart.getCTColor();
    };
    print (materialPart.getTextureLocation());
    
    tool.textureLocation = ResourceLocation.create(materialPart.getTextureLocation());

    tool.register();
});

var maxDamageDataPiece = MaterialSystem.createPartDataPiece("maxDamage", false);
craftingToolPartType.setData([maxDamageDataPiece] as PartDataPiece[]);

var saw = MaterialSystem.getPartBuilder().setName("supersaw").setPartType(craftingToolPartType).build();

var cobalt = MaterialSystem.getMaterialBuilder().setName("Super Cobalt").setColor(18347).build();
var tin = MaterialSystem.getMaterialBuilder().setName("Super Tin").setColor(10275286).build();

cobalt.registerPart(saw);
tin.registerPart(saw);

*/



var craftingToolPartType = MaterialSystem.createPartType("crafting_tool", function(materialPart) {
    var materialName = materialPart.getMaterial().getUnlocalizedName();
    var partName = materialPart.getPart().getShortUnlocalizedName();
    var itemName = materialName ~ "_" ~ partName;

    var tool = VanillaFactory.createItem(itemName);
    tool.maxStackSize = 1;
    tool.maxDamage = materialPart.getData().getIntValue("maxDamage", 256);
    tool.creativeTab = <creativetab:misc>;

    tool.itemGetContainerItem = function(item) {
        return (item.damage + 1 < item.maxDamage) ? item.withDamage(item.damage + 1) : null;
    };

    tool.itemColorSupplier = MaterialPartColorSupplier.create(materialPart);
    var locationName = "contenttweaker:items/" ~ materialPart.getPart().getShortUnlocalizedName();
    print(locationName);
    tool.textureLocation = ResourceLocation.create(locationName);
    tool.localizedNameSupplier = MaterialPartLocalizedNameSupplier.create(materialPart);
    tool.register();
});

var maxDamageDataPiece = MaterialSystem.createPartDataPiece("maxDamage", false);
craftingToolPartType.setData([maxDamageDataPiece] as PartDataPiece[]);

var mortar = MaterialSystem.getPartBuilder().setName("mortar").setPartType(craftingToolPartType).setHasOverlay(true).build();

var cobalt = MaterialSystem.getMaterialBuilder().setName("Pyure Cobalt").setColor(18347).build();
var tin = MaterialSystem.getMaterialBuilder().setName("Pyure Tin").setColor(10275286).build();

cobalt.registerPart(mortar);
tin.registerPart(mortar);