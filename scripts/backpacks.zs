
var upgradeWood = <improvedbackpacks:upgrade>;
var upgradeStone = <improvedbackpacks:upgrade:1>;
var upgradeIron = <improvedbackpacks:upgrade:2>;
var upgradeGold = <improvedbackpacks:upgrade:3>;
var upgradeDiamond = <improvedbackpacks:upgrade:4>;

recipes.remove(upgradeWood);
recipes.remove(upgradeStone);
recipes.remove(upgradeIron);
recipes.remove(upgradeGold);
recipes.remove(upgradeDiamond);

var tannedLeather = <improvedbackpacks:tanned_leather>;
var upgradeBlank = <improvedbackpacks:blank_upgrade>;

recipes.addShaped(upgradeWood * 1, [
[null,tannedLeather,null],
[<ore:plateIron>,upgradeBlank,<ore:plateIron>],
[null,<ore:plateIron>,null]]);

recipes.addShaped(upgradeStone * 1, [
[null,tannedLeather,null],
[<ore:plateSteel>,upgradeWood,<ore:plateSteel>],
[null,<ore:plateSteel>,null]]);

recipes.addShaped(upgradeIron * 1, [
[null,tannedLeather,null],
[<ore:plateAluminium>,upgradeStone,<ore:plateAluminium>],
[null,<ore:plateAluminium>,null]]);

recipes.addShaped(upgradeGold * 1, [
[null,tannedLeather,null],
[<ore:plateStainlessSteel>,upgradeIron,<ore:plateStainlessSteel>],
[null,<ore:plateStainlessSteel>,null]]);

recipes.addShaped(upgradeDiamond * 1, [
[null,tannedLeather,null],
[<ore:plateTitanium>,upgradeGold,<ore:plateTitanium>],
[null,<ore:plateTitanium>,null]]);