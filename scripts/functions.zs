import crafttweaker.item.IItemStack;

#priority 90


function disableItem(item as IItemStack){
  recipes.removeShapeless(item);
  recipes.removeShaped(item);
  item.addTooltip(format.darkRed("Disabled in Infitech."));
}

function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}
