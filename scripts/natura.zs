var flour = <natura:materials:2>;
scripts.functions.disableItem(flour);

var barleyFlour = <natura:materials:1>;
scripts.functions.disableItem(barleyFlour);

var ae2Flour = <appliedenergistics2:material:4>;
var barley = <natura:materials>;
recipes.addShapeless(ae2Flour, [barley, <ore:craftingToolMortar>]);
