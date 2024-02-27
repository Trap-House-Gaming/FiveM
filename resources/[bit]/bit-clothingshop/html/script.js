var langaccessory = null
var langbadge = null
var langbag = null
var langkevlar = null
var langpants = null
var langmask = null
var langshoes = null
var langtorso = null
var langtorso2 = null
var langundershirt = null
var langhat = null
var langglasses = null
var langearrings = null
var langwatch = null
var langbracelet = null
var debugMode = false

const copyToClipboard = str => {
    const el = document.createElement('textarea');
    el.value = str;
    document.body.appendChild(el);
    el.select();
    document.execCommand('copy');
    document.body.removeChild(el);
 };

$(function () {
    function display(bool) {
        if (bool) {
            document.getElementById("body").style.display="block";
        } else {
            document.getElementById("body").style.display="none";
        }
    }

    display(false)

    function hideAll(){
        $(".bitclothingshop-mainshop").hide()
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-mainpayment").hide()
        $(".bitclothingshop-maincloset").hide()
        $(".bitclothingshop-mainsave").hide()
        $(".bitclothingshop-mainmode").hide()
        $(".loading-loading").hide()
    }

    function hideMenuItems(){
        $(".bitclothingshop-accessory").hide()
        $(".bitclothingshop-badge").hide()
        $(".bitclothingshop-bag").hide()
        $(".bitclothingshop-leg").hide()
        $(".bitclothingshop-mask").hide()
        $(".bitclothingshop-shoes").hide()
        $(".bitclothingshop-torso").hide()
        $(".bitclothingshop-torso2").hide()
        $(".bitclothingshop-undershirt").hide()
        $(".bitclothingshop-hat").hide()
        $(".bitclothingshop-glasses").hide()
        $(".bitclothingshop-earrings").hide()
        $(".bitclothingshop-watch").hide()
        $(".bitclothingshop-bracelet").hide()
    }

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                if (item.debug === true) {
                    debugMode = true
                }
                display(true)
                hideAll()
                $(".bitclothingshop-mainmode").show()
                langaccessory = item.langaccessory
                langbadge = item.langbadge
                langbag = item.langbag
                langkevlar = item.langkevlar
                langpants = item.langpants
                langmask = item.langmask
                langshoes = item.langshoes
                langtorso = item.langtorso
                langtorso2 = item.langtorso2
                langundershirt = item.langundershirt
                langhat = item.langhat
                langglasses = item.langglasses
                langearrings = item.langearrings
                langwatch = item.langwatch
                langbracelet = item.langbracelet
                $(".bitclothingshop-text24").text("0")
                hideMenuItems()
                for (element of item.items) {
                    if (element === "accessory") {
                        $(".bitclothingshop-accessory").show()
                    } else if (element === "badge") {
                        $(".bitclothingshop-badge").show()
                    } else if (element === "bag") {
                        $(".bitclothingshop-bag").show()
                    } else if (element === "pants") {
                        $(".bitclothingshop-leg").show()
                    } else if (element === "mask") {
                        $(".bitclothingshop-mask").show()
                    } else if (element === "shoes") {
                        $(".bitclothingshop-shoes").show()
                    } else if (element === "arms") {
                        $(".bitclothingshop-torso").show()
                    } else if (element === "jacket") {
                        $(".bitclothingshop-torso2").show()
                    } else if (element === "undershirt") {
                        $(".bitclothingshop-undershirt").show()
                    } else if (element === "hat") {
                        $(".bitclothingshop-hat").show()
                    } else if (element === "glasses") {
                        $(".bitclothingshop-glasses").show()
                    } else if (element === "earrings") {
                        $(".bitclothingshop-earrings").show()
                    } else if (element === "watch") {
                        $(".bitclothingshop-watch").show()
                    } else if (element === "bracelet") {
                        $(".bitclothingshop-bracelet").show()
                    }
                }
            } else {
                display(false)
            }
        }
        if (item.type === "updateamount") {
            $(".bitclothingshop-text24").text(item.amounttopay)
        }
        if (item.type === "saveoutfit") {
            hideAll()
            $(".bitclothingshop-mainsave").show()
        }
        if (item.type === "paymentmethod") {
            hideAll()
            $(".bitclothingshop-mainpayment").show()
        }
        if (item.type === "showcloset") {
            $(".bitclothingshop-outfitslist").html(item.outfitlist)
            $(".bitclothingshop-maincloset").show()
        }
        if (item.type === "updateimages") {
            document.getElementById("body").style.display="block";
            hideAll()
            $(".loading-loading").show()
            $(".loading-text2").text(item.itemtype)
            $(".loading-text4").text(item.actualdrawable)
            $(".loading-text6").text(item.totaldrawables)
        }
        if (item.type === "showitems"){
            $(".bitclothingshop-itemslist").html(item.clothesitems)
        }
    })
    
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://bit-clothingshop/exit', JSON.stringify({}));
            return
        }
    };

    //HEADING
    $(document).on("click", ".move-left", function(){
        $.post('https://bit-clothingshop/move', JSON.stringify({value:true}));
    });

    $(document).on("click", ".move-right", function(){
        $.post('https://bit-clothingshop/move', JSON.stringify({value:false}));
    });

    // CHANGE CAMERA
    $(document).on("click", ".camera-head", function(){
        $.post('https://bit-clothingshop/changecamera', JSON.stringify({value:'head'}));
    });

    $(document).on("click", ".camera-shirt", function(){
        $.post('https://bit-clothingshop/changecamera', JSON.stringify({value:'shirt'}));
    });

    $(document).on("click", ".camera-pants", function(){
        $.post('https://bit-clothingshop/changecamera', JSON.stringify({value:'pants'}));
    });

    $(document).on("click", ".camera-makishoe", function(){
        $.post('https://bit-clothingshop/changecamera', JSON.stringify({value:'shoes'}));
    });

    //OUTFIT
    $(document).on("click", ".bitclothingshop-outfititem", function(){
        var value = $(this).attr("data-value")
        $.post('https://bit-clothingshop/useoutfit', JSON.stringify({value:value}));
    });

    //DRESS UP
    $(document).on("click", ".bitclothingshop-buttondressup", function(){
        $.post('https://bit-clothingshop/dressup', JSON.stringify({}));
    });
    

    // MAIN 
    $(document).on("click", ".bitclothingshop-closet", function(){
        hideAll()
        $.post('https://bit-clothingshop/closet', JSON.stringify({}));
    });

    $(document).on("click", ".bitclothingshop-shop", function(){
        hideAll()
        $(".bitclothingshop-mainshop").show()
        $.post('https://bit-clothingshop/shopcamera', JSON.stringify({}));
    }); 

    // MENU 
    $(document).on("click", ".bitclothingshop-accessory", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"accessory"}));
        $(".bitclothingshop-text18").text(langaccessory)
    }); 

    $(document).on("click", ".bitclothingshop-badge", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"badge"}));
        $(".bitclothingshop-text18").text(langbadge)
    }); 

    $(document).on("click", ".bitclothingshop-bag", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"bag"}));
        $(".bitclothingshop-text18").text(langbag)
    }); 

    $(document).on("click", ".bitclothingshop-kevlar", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"kevlar"}));
        $(".bitclothingshop-text18").text(langkevlar)
    }); 

    $(document).on("click", ".bitclothingshop-leg", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"leg"}));
        $(".bitclothingshop-text18").text(langpants)
    }); 

    $(document).on("click", ".bitclothingshop-mask", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"mask"}));
        $(".bitclothingshop-text18").text(langmask)
    }); 

    $(document).on("click", ".bitclothingshop-shoes", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"shoes"}));
        $(".bitclothingshop-text18").text(langshoes)
    }); 
        
    $(document).on("click", ".bitclothingshop-torso", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"torso"}));
        $(".bitclothingshop-text18").text(langtorso)
    }); 

    $(document).on("click", ".bitclothingshop-torso2", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"torso2"}));
        $(".bitclothingshop-text18").text(langtorso2)
    }); 

    $(document).on("click", ".bitclothingshop-undershirt", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"undershirt"}));
        $(".bitclothingshop-text18").text(langundershirt)
    }); 

    $(document).on("click", ".bitclothingshop-hat", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"hat"}));
        $(".bitclothingshop-text18").text(langhat)
    }); 

    $(document).on("click", ".bitclothingshop-glasses", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"glasses"}));
        $(".bitclothingshop-text18").text(langglasses)
    }); 

    $(document).on("click", ".bitclothingshop-earrings", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"earrings"}));
        $(".bitclothingshop-text18").text(langearrings)
    });

    $(document).on("click", ".bitclothingshop-watch", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"watch"}));
        $(".bitclothingshop-text18").text(langwatch)
    });

    $(document).on("click", ".bitclothingshop-bracelet", function(){
        $(".bitclothingshop-selector").hide()
        $(".bitclothingshop-selector").delay(0).fadeIn()
        $.post('https://bit-clothingshop/menuselection', JSON.stringify({selected:"bracelet"}));
        $(".bitclothingshop-text18").text(langbracelet)
    });

    //ITEM SELECTED
    $(document).on("click", ".bitclothingshop-itemselection", function(){
        var value = $(this).attr('data-value')
        if (debugMode === true) {
            copyToClipboard(value);
        }
        $.post('https://bit-clothingshop/selected', JSON.stringify({value:value}));
    }); 

    $(document).on("click", ".bitclothingshop-itemselectionempty", function(){
        var value = $(this).attr('data-value')
        $.post('https://bit-clothingshop/selected', JSON.stringify({value:value}));
    }); 

    //RESTORE
    $(document).on("click", ".bitclothingshop-restore", function(){
        $.post('https://bit-clothingshop/restore', JSON.stringify({}));
    }); 

    //BUY
    $(document).on("click", ".bitclothingshop-buy", function(){
        $.post('https://bit-clothingshop/buy', JSON.stringify({}));
    }); 
    
    //REMOVE OUTFIT
    $(document).on("click", ".trash", function(){
        var value = $(this).attr("data-value")
        $(".bitclothingshop-outfitslist").find('[data-value="'+value+'"]').hide()
        $.post('https://bit-clothingshop/removeoutfit', JSON.stringify({value:value}));
    }); 

    //SAVE OUTFIT 
    $(document).on("click", ".bitclothingshop-buttonsave", function(){
        var value = $(".bitclothingshop-input").val()
        $.post('https://bit-clothingshop/saveoutfit', JSON.stringify({value:value}));
    }); 

    //BANK BUTTON
    $(document).on("click", ".bitclothingshop-bank", function(){
        $.post('https://bit-clothingshop/payment', JSON.stringify({method:"bank"}));
        $.post('https://bit-clothingshop/exitbuy', JSON.stringify({}));
    }); 

    //CASH BUTTON
    $(document).on("click", ".bitclothingshop-cash", function(){
        $.post('https://bit-clothingshop/payment', JSON.stringify({method:"cash"}));
        $.post('https://bit-clothingshop/exitbuy', JSON.stringify({}));
    }); 

})