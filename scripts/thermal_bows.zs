import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;

// NOTE: This uses *aluminium*, so any mod that uses *aluminum* will *not* work!
var materials = [<ore:stickCopper>, <ore:stickTin>, <ore:stickSilver>, <ore:stickLead>, <ore:stickAluminium>, <ore:stickNickel>,
    <ore:stickPlatinum>, <ore:stickSteel>, <ore:stickElectrum>, <ore:stickInvar>, <ore:stickBronze>, <ore:stickCupronickel>,
    <ore:stickIron>, <ore:stickDiamond>, <ore:stickGold>] as IIngredient[];

var bows = [<thermalfoundation:tool.bow_copper>, <thermalfoundation:tool.bow_tin>, <thermalfoundation:tool.bow_silver>,
    <thermalfoundation:tool.bow_lead>, <thermalfoundation:tool.bow_aluminum>, <thermalfoundation:tool.bow_nickel>,
    <thermalfoundation:tool.bow_platinum>, <thermalfoundation:tool.bow_steel>, <thermalfoundation:tool.bow_electrum>, 
    <thermalfoundation:tool.bow_invar>, <thermalfoundation:tool.bow_bronze>, <thermalfoundation:tool.bow_constantan>, 
    <thermalfoundation:tool.bow_iron>, <thermalfoundation:tool.bow_diamond>, <thermalfoundation:tool.bow_gold>] as IItemStack[];

for i, b in bows {
    var def = b.definition as IItemDefinition;
    var bow = def.makeStack(0);
    recipes.remove(bow);
    recipes.addShaped(bow, [ [null, materials[i], <ore:string>], [<ore:stickWood>, null, <ore:string>], [null, materials[i], <ore:string>]]);
}
