
var craftingToolHammer = <ore:craftingToolHardHammer>.firstItem.withEmptyTag();


recipes.remove(<chesttransporter:chesttransporter>);
recipes.addShaped("it3_chesttransporter_wooden_transporter", <chesttransporter:chesttransporter>.withTag({}), [
  [<ore:stickLongWood>, craftingToolHammer, <ore:stickLongWood>], 
  [<ore:stickLongWood>, <ore:stickLongWood>, <ore:stickLongWood>], 
  [null, <ore:stickLongWood>, null]]);

recipes.remove(<chesttransporter:chesttransporter_iron>);
recipes.addShaped("it3_chesttransporter_iron_transporter", <chesttransporter:chesttransporter_iron>.withTag({}), [
  [<ore:stickIron>, craftingToolHammer, <ore:stickIron>], 
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], 
  [null, <ore:stickIron>, null]]);

recipes.remove(<chesttransporter:chesttransporter_gold>);
recipes.addShaped("it3_chesttransporter_gold_transporter", <chesttransporter:chesttransporter_gold>.withTag({}), [
  [<ore:stickGold>, craftingToolHammer, <ore:stickGold>], 
  [<ore:stickGold>, <ore:stickGold>, <ore:stickGold>], 
  [null, <ore:stickGold>, null]]);  

recipes.remove(<chesttransporter:chesttransporter_diamond>);
recipes.addShaped("it3_chesttransporter_diamond_transporter", <chesttransporter:chesttransporter_diamond>.withTag({}), [
  [<ore:stickIron>, craftingToolHammer, <ore:stickIron>], 
  [<ore:stickIron>, <ore:stickDiamond>, <ore:stickIron>], 
  [null, <ore:stickDiamond>, null]]);    
  
recipes.remove(<chesttransporter:chesttransporter_copper>);
recipes.addShaped("it3_chesttransporter_copper_transporter", <chesttransporter:chesttransporter_copper>.withTag({}), [
  [<ore:stickCopper>, craftingToolHammer, <ore:stickCopper>], 
  [<ore:stickCopper>, <ore:stickCopper>, <ore:stickCopper>], 
  [null, <ore:stickCopper>, null]]);      

recipes.remove(<chesttransporter:chesttransporter_silver>);  
recipes.addShaped("it3_chesttransporter_silver_transporter", <chesttransporter:chesttransporter_silver>.withTag({}), [
  [<ore:stickSilver>, craftingToolHammer, <ore:stickSilver>], 
  [<ore:stickSilver>, <ore:stickSilver>, <ore:stickSilver>], 
  [null, <ore:stickSilver>, null]]);        

recipes.remove(<chesttransporter:chesttransporter_tin>);  
recipes.addShaped("it3_chesttransporter_tin_transporter", <chesttransporter:chesttransporter_tin>.withTag({}), [
  [<ore:stickTin>, craftingToolHammer, <ore:stickTin>], 
  [<ore:stickTin>, <ore:stickTin>, <ore:stickTin>], 
  [null, <ore:stickTin>, null]]);        

recipes.remove(<chesttransporter:chesttransporter_obsidian>);  
recipes.addShaped("it3_chesttransporter_obsidian_transporter", <chesttransporter:chesttransporter_obsidian>.withTag({}), [
  [<ore:stickIron>, craftingToolHammer, <ore:stickIron>], 
  [<ore:stickIron>, <ore:stickObsidian>, <ore:stickIron>], 
  [null, <ore:stickObsidian>, null]]);        
  
  