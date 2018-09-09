
var flint = <minecraft:flint>;

var rodIron = <ore:stickIron>;
var rodBronze = <ore:stickBronze>;
var rodSteel = <ore:stickSteel>;
var rodAluminium = <ore:stickAluminium>;
var rodTitanium = <ore:stickTitanium>;
var petal = <botania:petal:*>;
var livingwood = <botania:livingwood>;
var terrasteel = <botania:manaresource:4>;
var manasteel = <botania:manaresource>;
var lapis = <ore:gemLapis>;
var ruby = <ore:gemRuby>;
var diamond = <ore:gemDiamond>;
var emerald = <ore:gemEmerald>;

recipes.removeShaped(<prospectors:prospector_lowest>);
recipes.addShaped("prospectors_prospector_lowest", <prospectors:prospector_lowest>, 
[[null, flint, petal], 
[null, rodIron, flint], 
[rodIron, null, null]]);

recipes.removeShaped(<prospectors:prospector_low>);
recipes.addShaped("prospectors_prospector_low", <prospectors:prospector_low>, 
[[null, lapis, livingwood], 
[null, rodBronze, lapis], 
[rodBronze, null, null]]);

recipes.removeShaped(<prospectors:prospector_med>);
recipes.addShaped("prospectors_prospector_med", <prospectors:prospector_med>, 
[[null, ruby, livingwood], 
[null, rodSteel, ruby], 
[rodSteel, null, null]]);

recipes.removeShaped(<prospectors:prospector_high>);
recipes.addShaped("prospectors_prospector_high", <prospectors:prospector_high>, 
[[null, diamond, manasteel], 
[null, rodAluminium, diamond], 
[rodAluminium, null, null]]);

recipes.removeShaped(<prospectors:prospector_best>);
recipes.addShaped("prospectors_prospector_best", <prospectors:prospector_best>, 
[[null, emerald, terrasteel], 
[null, rodTitanium, emerald], 
[rodTitanium, null, null]]);
