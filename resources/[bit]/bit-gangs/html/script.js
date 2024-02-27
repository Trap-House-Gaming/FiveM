var Lang = null
var updatedMap = null

$(function () {
    function hideAll() {
        $(".bitgangs-mapzones").hide()
        $(".bitgangs-admin").hide()
        $(".bitgangs-creategang").hide()
        $(".bitgangs-usermanagemembers").hide()
        $(".bitgangs-managestores").hide()
        $(".bitgangs-events").hide()
        $(".bitgangs-main").hide()
        $(".bitgangs-balanceop").hide()
        $(".bitgangs-createinvitelist").hide()
        $(".bitgangs-ranklist").hide()
        $(".bitgangs-managegang").hide()
        $(".bitgangs-options").hide()
        $(".bitgangs-bag").hide()
        $(".bitgangs-creategangnameinput").val('')
        $(".bitgangs-text042").val('')
        $(".bitgangs-text046").val('')
        $(".bitgangs-text050").val('')
        $("#gangcolor").attr('data-current-color','#ffffff')
        $(".bitgangs-creatememberslist").html("")
        $(".bitgangs-createrankslist1").html("")
        $(".bitgangs-creatememberslist1").html("")
    }
    function language() {
        $(".bitgangs-text140").text(Lang.Deposit)
        $(".bitgangs-text142").text(Lang.Withdraw)
        $(".bitgangs-text109").text(Lang.LevelInfo)
        $(".bitgangs-text115").text(Lang.Progress)
        $(".bitgangs-text117").text(Lang.ProgressDesc)
        $(".bitgangs-text122").text(Lang.ProgressNextLevel)
        $(".bitgangs-text128").text(Lang.TotalMembers)
        $(".bitgangs-text124").text(Lang.Leader)
        $(".bitgangs-text148").text(Lang.Territories)
        $(".bitgangs-text150").text(Lang.TerritoriesDesc)
        $(".bitgangs-text144").text(Lang.Rating)
        $(".bitgangs-text132").text(Lang.Balance)
        $(".bitgangs-text138").text(Lang.BalanceDesc)
        $(".bitgangs-text152").text(Lang.ActiveEvent)
        $(".bitgangs-text008").text(Lang.CreateGang)
        $(".bitgangs-text006").text(Lang.CreateGangDesc)
        $(".bitgangs-text012").text(Lang.ManageGang)
        $(".bitgangs-text010").text(Lang.ManageGangDesc)
        $(".bitgangs-text004").text(Lang.ManageStores)
        $(".bitgangs-text002").text(Lang.ManageStoresDesc)
        $(".bitgangs-text016").text(Lang.Events)
        $(".bitgangs-text014").text(Lang.EventsDesc)
    }
    function display(bool) {
        if (bool) {
            document.getElementById("body").style.display="block";  
            $(".bitgangs-container").show()          
        } else {
            document.getElementById("body").style.display="none";
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        Lang = item.lang
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
                language()
                hideAll()
                $(".bitgangs-main").show()
                $(".bitgangs-text097").text(item.gangdbdata.name)
                $(".bitgangs-text107").text(item.levels[item.gangdbdata.level])
                $(".bitgangs-text136").text(item.gangdbdata.balance+"$")
                $(".bitgangs-text111").text(item.gangdbdata.level)
                $(".bitgangs-text126").text(item.leadername)
                $(".bitgangs-text130").text(item.membersamount)
                if (item.gangdbdata.tonext < 0 ) {
                    $(".bitgangs-text120").text("0")
                } else {
                    $(".bitgangs-text120").text(item.gangdbdata.tonext)
                }
                if (item.gangdbdata.per >= 100) {
                    $(".bitgangs-frame4").css("width","100%")
                } else {
                    $(".bitgangs-frame4").css("width",item.gangdbdata.per+"%")
                }
                if (item.gangdbdata.position === undefined) {
                    $(".bitgangs-text146").text("NO RANK")
                } else {
                    $(".bitgangs-text146").text("TOP "+item.gangdbdata.position)
                }
                if (typeof item.event === "undefined") {
                    $(".bitgangs-text154").text(Lang.noEvent)
                    $(".bitgangs-text156").text("")
                    $(".bitgangs-maze-bank-arena1").attr("src","#")
                } else {
                    $(".bitgangs-text154").text(item.event.name)
                    $(".bitgangs-text156").text(item.event.description)
                    $(".bitgangs-maze-bank-arena1").attr("src",item.event.image)
                }
            } else {
                display(false)
            }
        }
        if (item.type === "gangoptions") {
            if (item.status == true) {
                display(true)
                hideAll()
                $(".bitgangs-container").hide()
                $(".bitgangs-options").show()
            } else {
                display(false)
            }
        }
        if (item.type === "admin") {
            if (item.status == true) {
                display(true)
                language()
                hideAll()
                $(".bitgangs-admin").show()
            } else {
                display(false)
            }
        }
        if (item.type === "stashlocation") {
            $(".bitgangs-text042").val(item.coord)
        }
        if (item.type === "lockerlocation") {
            $(".bitgangs-text046").val(item.coord)
        }
        if (item.type === "garagelocation") {
            $(".bitgangs-text050").val(item.coord)
        }
        if (item.type === "addmember") {
            $(".bitgangs-creatememberslist").html("")
            for (let key in item.data) {
                $(".bitgangs-creatememberslist").append('<div id="'+key+'" class="bitgangs-memberitem"><div class="memberleader-memberleader"><div class="memberleader-claritycrownsolid"><div class="memberleader-clarity-crown-solid0"><img src="public/external/vector396-eye.svg" alt="Vector396" class="memberleader-vector2"/></div></div></div><span class="bitgangs-text026">'+item.data[key]+'</span><div id="'+key+'" class="bitgangs-deleterank"><img src="public/external/bitrashfill2230-g60q.svg" alt="bitrashfill2230" class="bitgangs-bitrashfill"/></div></div>')
            }
        }
        if (item.type === "addrank") {
            $(".bitgangs-createrankslist1").html("")
            for (let key in item.data) {
                $(".bitgangs-createrankslist1").append('<div class="bitgangs-rankitem"><span class="bitgangs-text028">'+item.data[key]+'</span><div id="'+key+'" class="bitgangs-deleterank1"><img src="public/external/bitrashfill2229-5hjh.svg" alt="bitrashfill2229" class="bitgangs-bitrashfill1"/></div></div>')
            }
        }
        if (item.type === "updatemap") {
            updatedMap = item.data
        }
        if (item.type === "managegangslist") {
            $(".bitgangs-managegang").show()
            $(".bitgangs-managegangslist1").html(item.ganglist)
        }
        if (item.type === "gangtomanagedata") {
            $(".bitgangs-managegang").hide()
            $(".bitgangs-creategang").show()
            $(".bitgangs-creategangsend").hide()
            $(".bitgangs-text018").text(Lang.ManageGang)
            $(".bitgangs-creategangnameinput").val(item.data.name)
            $(".bitgangs-text042").val(item.data.stash)
            $(".bitgangs-text046").val(item.data.locker)
            $(".bitgangs-text050").val(item.data.garage)
            $("#gangcolor").attr("data-current-color",item.data.color)
            var members = JSON.parse(item.data.members)
            var ranks = JSON.parse(item.data.ranks)
            $(".bitgangs-creatememberslist").html("")
            $(".bitgangs-createrankslist1").html("")
            for (let key in members) {
                let memberDiv = $('<div id="'+key+'" class="bitgangs-memberitem"><div class="memberleader-memberleader"><div class="memberleader-claritycrownsolid"><div class="memberleader-clarity-crown-solid0"><img src="public/external/vector396-eye.svg" alt="Vector396" class="memberleader-vector2"/></div></div></div><span class="bitgangs-text026">'+members[key]+'</span><div id="'+key+'" class="bitgangs-deleterank"><img src="public/external/bitrashfill2230-g60q.svg" alt="bitrashfill2230" class="bitgangs-bitrashfill"/></div></div>');

                if (key === item.data.leader) {
                    memberDiv.find(".memberleader-memberleader").show();
                } else {
                    memberDiv.find(".memberleader-memberleader").hide();
                }
                $(".bitgangs-creatememberslist").append(memberDiv);
            }
            for (let key in ranks) {
                $(".bitgangs-createrankslist1").append('<div class="bitgangs-rankitem"><span class="bitgangs-text028">'+ranks[key]+'</span><div id="'+key+'" class="bitgangs-deleterank1"><img src="public/external/bitrashfill2229-5hjh.svg" alt="bitrashfill2229" class="bitgangs-bitrashfill1"/></div></div>')
            }
        }
        if (item.type === "storeslist") {
            $(".bitgangs-createstorelist").html("");
            var stores = item.stores
            $.each(stores, function(index, store) {
                $(".bitgangs-createstorelist").append('<div class="bitgangs-storeitem"><span class="bitgangs-text068"><span>'+store.name+'</span></span><span class="bitgangs-text070">'+store.location+'</span><div id="'+store.name+'" class="bitgangs-deletestore3"><img src="public/external/bitrashfill2244-746er.svg" alt="bitrashfill2244" class="bitgangs-bitrashfill4" /></div></div>');
            });
            $(".bitgangs-managestores").show()
        }
        if (item.type === "addstorelocation") {
            $(".bitgangs-text074").val(item.coord)
        }
        if (item.type === "paperbag" ) {
            if (item.status == true) {
                display(true)
                hideAll()
                $(".bitgangs-bag").show()
            } else {    
                $(".bitgangs-bag").hide()
                display(false)
            }
        }
        if (item.type === "displayevent") {
            $(".bitgangs-events").show()
            if (typeof item.eventdata === "undefined") {
                $(".bitgangs-text091").text(Lang.noEvent)
            } else {
                $(".bitgangs-text091").text(item.eventdata.name)
            }
        }
        if (item.type === "familymanagemembers") {
            $(".bitgangs-usermanagemembers").show()
            $(".bitgangs-creatememberslist1").html("")
            var members = item.members
            $.each(members, function(index, member) {
                $(".bitgangs-creatememberslist1").append('<div class="bitgangs-memberitem1"><span class="bitgangs-text064">'+member+'</span><div id="'+index+'" class="bitgangs-deleterank2"><img src="public/external/bitrashfill2243-na9j.svg" alt="bitrashfill2243" class="bitgangs-bitrashfill3"/></div></div>');
            });
        }
    })
    
    document.onkeyup = function (data) {
        if (data.which == 27) {
            if ($('.bitgangs-balanceop').is(':hidden')) {
                $.post('https://bit-gangs/exit', JSON.stringify({}));
                return
            } else {
                $(".bitgangs-balanceop").hide()
            }
        }
    };

    
    $(document).on("click", ".bitgangs-familymap", function(){
        hideAll()
        $(".bitgangs-mapzones").show()
        for (let key in updatedMap) {
            var zonename = $('path[name="'+key+'"]');
            zonename.attr('fill', updatedMap[key]["color"]);
        }
    }); 

    $(document).on("click", ".bitgangs-familytotalmembers", function(){
        hideAll()
        $.post('https://bit-gangs/getGangMembers', JSON.stringify({}));
    }); 

    $(document).on("click", ".bitgangs-depositbutton", function(){
        $(".bitgangs-balanceop").show()
        $(".bitgangs-text158").text("DEPOSIT")
    }); 
  
    $(document).on("click", ".bitgangs-withdrawbutton", function(){
        $(".bitgangs-balanceop").show()
        $(".bitgangs-text158").text("WITHDRAW")
    }); 

    $(document).on("click", ".bitgangs-admincreate", function(){
        hideAll()
        $(".bitgangs-text018").text(Lang.CreateGang)
        $(".bitgangs-creategang").show()
        $(".bitgangs-creategangdelete").hide()
        $(".bitgangs-creategangupdate").hide()
        $(".bitgangs-creategangsend").show()
    }); 

    $(document).on("click", ".bitgangs-adminmanage", function(){
        hideAll()
        $.post('https://bit-gangs/managegangs', JSON.stringify({}));
    }); 
    
    $(document).on("click", ".bitgangs-adminstores", function(){
        hideAll()
        $.post('https://bit-gangs/managestores', JSON.stringify({}));
    }); 

    $(document).on("click", ".bitgangs-adminevents", function(){
        hideAll()
        $.post('https://bit-gangs/manageevent', JSON.stringify({}));
    }); 
  
    //Create Gang

    $(document).on("click", ".bitgangs-creategangstashbutton", function(){
        $.post('https://bit-gangs/stashlocation', JSON.stringify({}));
    }); 
    
    $(document).on("click", ".bitgangs-createganglockerbutton", function(){
        $.post('https://bit-gangs/lockerlocation', JSON.stringify({}));
    }); 

    $(document).on("click", ".bitgangs-createganggaragebutton", function(){
        $.post('https://bit-gangs/garagelocation', JSON.stringify({}));
    }); 

    $(document).on("click", ".bitgangs-creategangmembers", function(){
        $(".bitgangs-createinvitelist").show()
        $(".bitgangs-ranklist").hide()
    }); 

    $(document).on("click", ".bitgangs-createranks", function(){
        $(".bitgangs-createinvitelist").hide()
        $(".bitgangs-ranklist").show()
    }); 
    
    $(document).on("click", ".bitgangs-createinvitesend", function(){
        var targetid = $(".bitgangs-text024").val()
        $.post('https://bit-gangs/addmember', JSON.stringify({targetID:targetid}));
    }); 

    $(document).on("click", ".bitgangs-createranksendbutton", function(){
        var rankid = $(".bitgangs-createrankidinput").val()
        var rankname = $(".bitgangs-createranknameinput").val()
        $.post('https://bit-gangs/addrank', JSON.stringify({rankID:rankid, rankName:rankname}));
    }); 

    $(document).on("click", ".bitgangs-deleterank1", function(){
        var key = $(this).attr('id')
        $.post('https://bit-gangs/deleterank', JSON.stringify({key:key}));
    }); 
    

    $(document).on("click", ".bitgangs-deleterank", function(){
        var key = $(this).attr('id')
        $.post('https://bit-gangs/deletemember', JSON.stringify({key:key}));
    }); 
    
    $(document).on("click", ".bitgangs-creategangsend", function(){
        var visibleElement = null;
        var name = $(".bitgangs-creategangnameinput").val()
        var stash = $(".bitgangs-text042").val()
        var locker = $(".bitgangs-text046").val()
        var garage = $(".bitgangs-text050").val()
        var color = $("#gangcolor").attr('data-current-color')

        $(".bitgangs-memberitem").each(function() {
            var memberLeader = $(this).find(".memberleader-memberleader");
            if (memberLeader.is(":visible")) {
              visibleElement = $(this);
              return false;
            }
          });
          if (visibleElement) {
            var key = visibleElement.attr("id");
            $.post('https://bit-gangs/creategang', JSON.stringify({
            name:name,
            stash:stash,
            locker:locker,
            garage:garage,
            color:color,
            leader:key
            }));
            $(".bitgangs-creategangnameinput").val('')
            $(".bitgangs-text042").val('')
            $(".bitgangs-text046").val('')
            $(".bitgangs-text050").val('')
            $("#gangcolor").attr('data-current-color','#ffffff')
          } else {
            console.log("No gang leader has been assigned");
          }
    });

  
    $(document).on("click", ".bitgangs-memberitem", function(){
        $(".memberleader-memberleader").not($(this).find(".memberleader-memberleader")).hide();
        $(this).find(".memberleader-memberleader").toggle();
    }); 

    // MAP

    

    var tooltip = $('#tooltip');
   // $('img[data-zone="mapzone"]').rwdImageMaps();
 
    $('.bitgangs-zones path').on('mouseenter', function(){
        
        var name = $(this).attr('name')
        var text = name
        for (let key in updatedMap) {
            if (key == name) {
                text = text +'<br><b>Gang:</b> '+ updatedMap[name]["gang"]
            }
        }
        
        tooltip.html(`${text}`).show();

    }).on('mouseleave', function(){
        tooltip.css({ 'left': 0, 'top': 0 }).hide();
    });
      
   

    tooltip.hide();

    $(document).on('mousemove', function(e){
    
    tooltip.css({
        left:  e.pageX - 200,
        top:   e.pageY + 450
    });
    
    });

    //MANAGE GANG

    $(document).on("click", "#gangtomanage", function(){
        var gang = $(this).attr("data-name")
        $.post('https://bit-gangs/gangtomanage', JSON.stringify({gang:gang}));
        $(".bitgangs-creategangdelete").show()
        $(".bitgangs-creategangupdate").show()
        $(".bitgangs-creategangsend").hide()
    }); 

    $(document).on("click", ".bitgangs-creategangdelete", function(){
        $.post('https://bit-gangs/gangtodelete', JSON.stringify({}));
    });

    $(document).on("click", ".bitgangs-creategangupdate", function(){
        var visibleElement = null;
        var name = $(".bitgangs-creategangnameinput").val()
        var stash = $(".bitgangs-text042").val()
        var locker = $(".bitgangs-text046").val()
        var garage = $(".bitgangs-text050").val()
        var color = $("#gangcolor").attr('data-current-color')
        
        $(".bitgangs-memberitem").each(function() {
            var memberLeader = $(this).find(".memberleader-memberleader");
            if (memberLeader.is(":visible")) {
              visibleElement = $(this);
              return false;
            }
          });
          if (visibleElement) {
            var key = visibleElement.attr("id");
            $.post('https://bit-gangs/updategang', JSON.stringify({
            name:name,
            stash:stash,
            locker:locker,
            garage:garage,
            color:color,
            leader:key
            }));
          } else {
            console.log("No gang leader has been assigned");
          }
    });

    //STORES

    $(document).on("click", ".bitgangs-createstorestashbutton", function(){
        $.post('https://bit-gangs/giveStoreLocation', JSON.stringify({}));
    });

    $(document).on("click", ".bitgangs-createstoressendbutton", function(){
        var name = $(".bitgangs-createstoreinput").val();
        var location = $(".bitgangs-text074").val();
        $.post('https://bit-gangs/addStore', JSON.stringify({name:name, location:location}));
    });

    $(document).on("click", ".bitgangs-deletestore3", function(){
        var idtodelete = $(this).attr("id")
        $.post('https://bit-gangs/addStore', JSON.stringify({idtodelete:idtodelete}));
    });

    //EVENT

    $(document).on("click", ".bitgangs-createeventbutton", function(){
        var name = $(".bitgangs-eventnameinput").val()
        var image = $(".bitgangs-eventimageinput").val()
        var description = $(".bitgangs-text082").val()
        $.post('https://bit-gangs/addEvent', JSON.stringify({name:name,image:image,description:description}));
    });
    
    // OPERATION

    $(document).on("click", ".bitgangs-balanceopsend", function(){
        var amount = $(".bitgangs-amountinput").val()
        var operation = $(".bitgangs-text158").text()
        $.post('https://bit-gangs/operation', JSON.stringify({amount:amount, operation:operation}));
    });

    // FAMILY ADD MEMBER

    $(document).on("click", ".bitgangs-createinvitesend1", function(){
        var memberid = $(".bitgangs-text062").val()
        $.post('https://bit-gangs/updatefamilymembers', JSON.stringify({memberid:memberid, op:"add"}));
    });

    // FAMILY REMOVE MEMBER

    $(document).on("click", ".bitgangs-deleterank", function(){
        var memberid = $(this).attr("id")
        $.post('https://bit-gangs/updatefamilymembers', JSON.stringify({memberid:memberid, op:"remove"}));
    });
    
    $(document).on("click", ".bitgangs-deleterank2", function(){
        var memberid = $(this).attr("id")
        $.post('https://bit-gangs/updatefamilymembers', JSON.stringify({memberid:memberid, op:"remove"}));
    });

    
    // HANDCUFF

    $(document).on("click", ".options-handcuff", function(){
        $.post('https://bit-gangs/handcuff', JSON.stringify({}));
    });

    // DRAG 

    $(document).on("click", ".options-escort", function(){
        $.post('https://bit-gangs/drag', JSON.stringify({}));
    });

    // PUT IN VEHICLE

    $(document).on("click", ".options-vehicle", function(){
        $.post('https://bit-gangs/putinvehicle', JSON.stringify({}));
    });

    // PAPER BAG

    $(document).on("click", ".options-bag", function(){
        $.post('https://bit-gangs/paperbag', JSON.stringify({}));
    });

    // SEARCH

    $(document).on("click", ".options-search", function(){
        $.post('https://bit-gangs/search', JSON.stringify({}));
    });
})