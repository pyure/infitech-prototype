var mitts = <hotornot:mitts>;
var hardenedLeather = <harvestcraft:hardenedleatheritem>;

recipes.remove(mitts);

recipes.addShaped(mitts, [
[<ore:blockWool>,null,<ore:blockWool>],
[hardenedLeather,null,hardenedLeather],
[null,null,null]]);