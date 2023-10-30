
var item = "%checkitem_getinfo:15_lorecontains:%";

function getCDR() {
    if (item == ""){
        return 0;
    }
    else return parseFloat(/(?<=Cooldown Reduction: §f)\d*\.?\d*/.exec(item)+"");
}

getCDR();