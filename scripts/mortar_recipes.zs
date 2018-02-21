import mods.factorytech.ChopSaw;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.item.IItemStack;

var dustIron = <thermalfoundation:material:0>;
var dustGold = <thermalfoundation:material:1>;
var dustCopper = <thermalfoundation:material:64>;
var dustTin = <thermalfoundation:material:65>;
var dustSilver = <thermalfoundation:material:66>;
var dustLead = <thermalfoundation:material:67>;
var dustAluminum = <thermalfoundation:material:68>;
var dustNickel = <thermalfoundation:material:69>;
var dustPlatinum = <thermalfoundation:material:70>;
var dustIridium = <thermalfoundation:material:71>;
var dustCoal = <thermalfoundation:material:768>;
var dustCharCoal = <thermalfoundation:material:769>;
var dustObsidian = <thermalfoundation:material:770>;


// MORTAR + INGOT = DUST
recipes.addShapeless(dustIron , [<ore:mortars>, <ore:ingotIron >]);
recipes.addShapeless(dustGold , [<ore:mortars>, <ore:ingotGold >]);
recipes.addShapeless(dustCopper , [<ore:mortars>, <ore:ingotCopper >]);
recipes.addShapeless(dustTin , [<ore:mortars>, <ore:ingotTin >]);
recipes.addShapeless(dustSilver , [<ore:mortars>, <ore:ingotSilver >]);
recipes.addShapeless(dustLead , [<ore:mortars>, <ore:ingotLead >]);
recipes.addShapeless(dustAluminum , [<ore:mortars>, <ore:ingotAluminum >]);
recipes.addShapeless(dustNickel , [<ore:mortars>, <ore:ingotNickel >]);
recipes.addShapeless(dustPlatinum , [<ore:mortars>, <ore:ingotPlatinum >]);
recipes.addShapeless(dustIridium , [<ore:mortars>, <ore:ingotIridium >]);
recipes.addShapeless(dustCoal , [<ore:mortars>, <ore:coal>]);
recipes.addShapeless(dustCharCoal , [<ore:mortars>, <ore:charcoal >]);
recipes.addShapeless(dustObsidian , [<ore:mortars>, <ore:obsidian>]);

// MORTAR + CRUSHED_ORE = DUST
recipes.addShapeless(dustIron , [<ore:mortars>, <ore:crushedOreIron>]);
recipes.addShapeless(dustGold , [<ore:mortars>, <ore:crushedOreGold>]);
recipes.addShapeless(dustCopper , [<ore:mortars>, <ore:crushedOreCopper>]);
recipes.addShapeless(dustTin , [<ore:mortars>, <ore:crushedOreTin>]);
recipes.addShapeless(dustSilver , [<ore:mortars>, <ore:crushedOreSilver>]);
recipes.addShapeless(dustLead , [<ore:mortars>, <ore:crushedOreLead>]);
recipes.addShapeless(dustAluminum , [<ore:mortars>, <ore:crushedOreAluminum>]);
recipes.addShapeless(dustNickel , [<ore:mortars>, <ore:crushedOreNickel>]);
recipes.addShapeless(dustPlatinum , [<ore:mortars>, <ore:crushedOrePlatinum>]);
recipes.addShapeless(dustIridium , [<ore:mortars>, <ore:crushedOreIridium>]);
recipes.addShapeless(dustCoal , [<ore:mortars>, <ore:crushedOreCoal>]);
recipes.addShapeless(dustCharCoal , [<ore:mortars>, <ore:crushedOreCharCoal>]);
recipes.addShapeless(dustObsidian , [<ore:mortars>, <ore:crushedOreObsidian>]);

// MORTAR + GRAVEL = FLINT
recipes.addShapeless(<minecraft:flint> , [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>, <ore:mortars> ]);


// HAMMER + INGOTS = PLATE // PYURE: MOVE TO HAMMERS_RECIPES.ZS
recipes.addShapedMirrored(<ore:plateIron>.items[0], [[<ore:hammers>], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShapedMirrored(<ore:plateGold>.items[0], [[<ore:hammers>], [<ore:ingotGold>], [<ore:ingotGold>]]);
recipes.addShapedMirrored(<ore:plateCopper>.items[0], [[<ore:hammers>], [<ore:ingotCopper>], [<ore:ingotCopper>]]);
recipes.addShapedMirrored(<ore:plateTin>.items[0], [[<ore:hammers>], [<ore:ingotTin>], [<ore:ingotTin>]]);
recipes.addShapedMirrored(<ore:plateSilver>.items[0], [[<ore:hammers>], [<ore:ingotSilver>], [<ore:ingotSilver>]]);
recipes.addShapedMirrored(<ore:plateLead>.items[0], [[<ore:hammers>], [<ore:ingotLead>], [<ore:ingotLead>]]);
recipes.addShapedMirrored(<ore:plateAluminum>.items[0], [[<ore:hammers>], [<ore:ingotAluminum>], [<ore:ingotAluminum>]]);
recipes.addShapedMirrored(<ore:plateNickel>.items[0], [[<ore:hammers>], [<ore:ingotNickel>], [<ore:ingotNickel>]]);
recipes.addShapedMirrored(<ore:platePlatinum>.items[0], [[<ore:hammers>], [<ore:ingotPlatinum>], [<ore:ingotPlatinum>]]);
recipes.addShapedMirrored(<ore:plateIridium>.items[0], [[<ore:hammers>], [<ore:ingotIridium>], [<ore:ingotIridium>]]);

