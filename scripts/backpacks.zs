
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

recipes.addShaped("it3_backpacks_woodupgrade", upgradeWood * 1, [
[null,tannedLeather,null],
[<ore:plateWood>,upgradeBlank,<ore:plateWood>],
[null,<ore:plateIron>,null]]);

recipes.addShaped("it3_backpacks_stoneupgrade", upgradeStone * 1, [
[null,tannedLeather,null],
[<ore:plateStone>,upgradeWood,<ore:plateStone>],
[null,<ore:plateSteel>,null]]);

recipes.addShaped("it3_backpacks_ironupgrade", upgradeIron * 1, [
[null,tannedLeather,null],
[<ore:plateIron>,upgradeStone,<ore:plateIron>],
[null,<ore:plateAluminium>,null]]);

recipes.addShaped("it3_backpacks_goldupgrade", upgradeGold * 1, [
[null,tannedLeather,null],
[<ore:plateGold>,upgradeIron,<ore:plateGold>],
[null,<ore:plateStainlessSteel>,null]]);

recipes.addShaped("it3_backpacks_diamondupgrade", upgradeDiamond * 1, [
[null,tannedLeather,null],
[<ore:plateDiamond>,upgradeGold,<ore:plateDiamond>],
[null,<ore:plateTitanium>,null]]);
