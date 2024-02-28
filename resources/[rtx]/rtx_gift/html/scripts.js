var giftresourcename = "rtx_giftsystem";
var vehiclelabel = {}
var vehicleplate = {}
var vehiclemodel = {}
var itemlabel = {}
var itemcount = {}		
var itemselected = {}

function closeMain() {
	$("body").css("display", "none");
	$('#giftopenedshow').hide();	
	$('#giftsendtypechooseshow').hide();	
	$('#giftsendtypevehicleshow').hide();	
	$('#giftsendtypeitemshow').hide();	
	$('#giftsendtypeitemcountchooseshow').hide();	
	$('#giftsshow').hide();	
	$('#giftnotifyshow').hide();	
	$('#giftopenshow').hide();	
}
function openMain() {
	$("body").css("display", "block");
}

var soundplay = false;

var soundopen = new Howl({
  src: ['sounds/opengift.mp3'],
  volume: 0.3,
  onend: function () {
	soundplay = false;
  }
});

var soundget = new Howl({
  src: ['sounds/getgift.mp3'],
  volume: 0.3,
  onend: function () {
	soundplay = false;
  }
});

window.addEventListener('message', function (event) {

	var item = event.data;
	
	if (item.message == "giftopenshow") {
		document.getElementById("giftsendernamedata").innerHTML = item.giftsender;
		document.getElementsByClassName("giftopendescriptiontext")[0].innerHTML = item.giftmessage;
		$( ".gifts" ).empty()
		$( ".giftopenedrewards" ).empty()
		$( ".giftsendtypevehicleownedvehicles" ).empty()
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
		$( ".giftsendtypeitemowneditems" ).empty()
		$( ".giftsendtypeitemchooseditems" ).empty()		
		vehiclelabel = {}	
		vehicleplate = {}	
		vehiclemodel = {}
		itemlabel = {}
		itemcount = {}			
		itemselected = {}
		$('#giftsendtypevehicletextmessageerrorshow').hide();	
		$('#giftsendtypeitemtextmessageerrorshow').hide();	
		$('#giftopenedshow').hide();	
		$('#giftsendtypechooseshow').hide();	
		$('#giftsendtypevehicleshow').hide();	
		$('#giftsendtypeitemshow').hide();
		$('#giftsshow').hide();	
		$('#giftnotifyshow').hide();
		$('#giftsendtypeitemcountchooseshow').hide();	
		$('#giftopenshow').show();	
		openMain();
	}
	
	if (item.message == "giftopenedshow") {
		soundopen.play()
		document.getElementById("giftsendernameopeneddata").innerHTML = item.giftsender;
		document.getElementsByClassName("giftopeneddescriptiontext")[0].innerHTML = item.giftmessage;		
		$( ".gifts" ).empty()
		$( ".giftopenedrewards" ).empty()
		$( ".giftsendtypevehicleownedvehicles" ).empty()
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
		$( ".giftsendtypeitemowneditems" ).empty()
		$( ".giftsendtypeitemchooseditems" ).empty()		
		vehiclelabel = {}	
		vehicleplate = {}	
		vehiclemodel = {}
		itemlabel = {}
		itemcount = {}		
		itemselected = {}
		$('#giftsendtypevehicletextmessageerrorshow').hide();	
		$('#giftsendtypeitemtextmessageerrorshow').hide();	
		$('#giftopenshow').hide();	
		$('#giftsendtypechooseshow').hide();
		$('#giftsendtypevehicleshow').hide();	
		$('#giftsendtypeitemshow').hide();
		$('#giftsshow').hide();	
		$('#giftnotifyshow').hide();
		$('#giftsendtypeitemcountchooseshow').hide();	
		$('#giftopenedshow').show();	
		openMain();
	}	
	
	if (item.message == "giftsendtypechooseshow") {
		$( ".gifts" ).empty()
		$( ".giftopenedrewards" ).empty()
		$( ".giftsendtypevehicleownedvehicles" ).empty()
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
		$( ".giftsendtypeitemowneditems" ).empty()
		$( ".giftsendtypeitemchooseditems" ).empty()		
		vehiclelabel = {}	
		vehicleplate = {}	
		vehiclemodel = {}
		itemlabel = {}
		itemcount = {}	
		itemselected = {}
		$('#giftsendtypevehicletextmessageerrorshow').hide();	
		$('#giftsendtypeitemtextmessageerrorshow').hide();	
		$('#giftopenshow').hide();	
		$('#giftopenedshow').hide();	
		$('#giftsendtypevehicleshow').hide();
		$('#giftsendtypeitemshow').hide();
		$('#giftsshow').hide();	
		$('#giftnotifyshow').hide();
		$('#giftsendtypeitemcountchooseshow').hide();	
		$('#giftsendtypechooseshow').show();
		openMain();
	}	
	
	if (item.message == "giftsendtypevehicleshow") {
		$("#giftsendtypevehicleplayerid").val(""); 
		$("#giftsendtypevehicletextdata").val(""); 		
		$( ".gifts" ).empty()
		$( ".giftopenedrewards" ).empty()
		$( ".giftsendtypevehicleownedvehicles" ).empty()
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
		$( ".giftsendtypeitemowneditems" ).empty()
		$( ".giftsendtypeitemchooseditems" ).empty()		
		vehiclelabel = {}	
		vehicleplate = {}
		vehiclemodel = {}
		itemlabel = {}
		itemcount = {}		
		itemselected = {}
		$('#giftsendtypevehicletextmessageerrorshow').hide();
		$('#giftsendtypeitemtextmessageerrorshow').hide();	
		$('#giftopenshow').hide();	
		$('#giftopenedshow').hide();	
		$('#giftsendtypeitemshow').hide();
		$('#giftsendtypechooseshow').hide();	
		$('#giftsshow').hide();	
		$('#giftnotifyshow').hide();
		$('#giftsendtypeitemcountchooseshow').hide();	
		$('#giftsendtypevehicleshow').show();
		openMain();
	}	
	
	if (item.message == "giftsendtypeitemshow") {
		$("#giftsendtypevehicleplayerid").val(""); 
		$("#giftsendtypevehicletextdata").val(""); 		
		$( ".gifts" ).empty()
		$( ".giftopenedrewards" ).empty()
		$( ".giftsendtypevehicleownedvehicles" ).empty()
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
		$( ".giftsendtypeitemowneditems" ).empty()
		$( ".giftsendtypeitemchooseditems" ).empty()		
		vehiclelabel = {}	
		vehicleplate = {}
		vehiclemodel = {}
		itemlabel = {}
		itemcount = {}		
		itemselected = {}
		$('#giftsendtypevehicletextmessageerrorshow').hide();	
		$('#giftsendtypeitemtextmessageerrorshow').hide();	
		$('#giftopenshow').hide();	
		$('#giftopenedshow').hide();	
		$('#giftsendtypechooseshow').hide();	
		$('#giftsshow').hide();	
		$('#giftnotifyshow').hide();
		$('#giftsendtypevehicleshow').hide();
		$('#giftsendtypeitemshow').hide();
		$('#giftsendtypeitemcountchooseshow').hide();	
		$('#giftsendtypeitemshow').show();
		openMain();
	}	
	

	if (item.message == "giftsshow") {
		$( ".gifts" ).empty()
		$( ".giftopenedrewards" ).empty()
		$( ".giftsendtypevehicleownedvehicles" ).empty()
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
		$( ".giftsendtypeitemowneditems" ).empty()
		$( ".giftsendtypeitemchooseditems" ).empty()
		vehiclelabel = {}	
		vehicleplate = {}
		vehiclemodel = {}
		itemlabel = {}
		itemcount = {}		
		itemselected = {}
		$('#giftsendtypevehicletextmessageerrorshow').hide();	
		$('#giftsendtypeitemtextmessageerrorshow').hide();	
		$('#giftopenshow').hide();	
		$('#giftopenedshow').hide();	
		$('#giftsendtypechooseshow').hide();	
		$('#giftsendtypevehicleshow').hide();
		$('#giftsendtypeitemshow').hide();
		$('#giftnotifyshow').hide();
		$('#giftsendtypeitemcountchooseshow').hide();	
		$('#giftsshow').show();
		openMain();
	}	

	if (item.message == "giftnotifyshow") {
		soundget.play()
		document.getElementById("giftsendername").innerHTML = item.giftsender;
		$('#giftnotifyshow').show();
		openMain();
		setTimeout(function() {
			$("#giftnotifyshow").fadeOut("slow");
		}, 10000);			
	}			
	
	if (item.message == "updatechoosedvehicles") {				
		$( ".giftsendtypevehiclechoosedvehicles" ).empty()
	}	

	if (item.message == "updatechooseditems") {				
		$( ".giftsendtypeitemchooseditems" ).empty()
	}	
	
	if (item.message == "giftsendtypevehicletextmessageerrorshow") {
		document.getElementsByClassName("giftsendtypevehicletextmessageerror")[0].innerHTML = item.gifterrormessage;
		$('#giftsendtypevehicletextmessageerrorshow').show();
	}	
	
	if (item.message == "giftsendtypeitemtextmessageerrorshow") {
		document.getElementsByClassName("giftsendtypeitemtextmessageerror")[0].innerHTML = item.gifterrormessage;
		$('#giftsendtypeitemtextmessageerrorshow').show();
	}		
			
	if (item.message == "hide") {
		closeMain();
	}
	
	if (item.message == "addownedvehicle"){
		$( ".giftsendtypevehicleownedvehicles" ).append('<div class="giftsendtypevehicleownedvehicle" vehicleid="' + item.vehicleid + '">' +		
				'<div class="giftsendtypevehicleownedvehicleinfo"><span id="giftsendtypevehicleownedvehiclenamedata">' + item.vehiclelabel + '</span> ( <span id="giftsendtypevehicleownedvehicleplatedata">' + item.vehicleplate + '</span> )</div>' +	
			'</div>');	
		vehiclelabel[item.vehicleid] = item.vehiclelabel;	
		vehicleplate[item.vehicleid] = item.vehicleplate;
		vehiclemodel[item.vehicleid] = item.vehiclemodel;
	}	
	
	if (item.message == "addchoosedvehicle"){
		$( ".giftsendtypevehiclechoosedvehicles" ).append('<div class="giftsendtypevehiclechoosedvehicle" vehicleid="' + item.vehicleid + '">' +		
				'<div class="giftsendtypevehiclechoosedvehicleinfo"><span id="giftsendtypevehiclechoosedvehiclenamedata">' + item.vehiclelabel + '</span> ( <span id="giftsendtypevehiclechoosedvehicleplatedata">' + item.vehicleplate + '</span> )</div>' +	
			'</div>');		
	}	
	
	if (item.message == "addowneditem"){
		$( ".giftsendtypeitemowneditems" ).append('<div class="giftsendtypeitemowneditem" itemname="' + item.itemname + '">' +		
				'<div class="giftsendtypeitemownediteminfo"><span id="giftsendtypeitemowneditemnamedata">' + item.itemlabel + '</span> ( <span id="giftsendtypeitemowneditemcountdata">x' + item.itemcount + '</span> )</div>' +	
			'</div>');	
		itemlabel[item.itemname] = item.itemlabel;	
		itemcount[item.itemname] = item.itemcount;
	}		
	
	if (item.message == "addchooseditem"){
		$( ".giftsendtypeitemchooseditems" ).append('<div class="giftsendtypeitemchooseditem" itemname="' + item.itemname + '">' +		
				'<div class="giftsendtypeitemchoosediteminfo"><span id="giftsendtypeitemchooseditemnamedata">' + item.itemlabel + '</span> ( <span id="giftsendtypeitemchooseditemcountdata">x' + item.itemcount + '</span> )</div>' +	
			'</div>');		
	}		

	if (item.message == "addgift"){
		$( ".gifts" ).append('<div class="gift" giftid="' + item.giftid + '">' +		
				'<div class="giftimage">' +
					'<img src="img/giftbox.png">' + 
				'</div>' +			
				'<div class="giftsender">GIFT FROM</div>' + 		
				'<div class="giftsendername">' + item.giftsender + '</div>' + 
				'<div class="giftopenbutton" giftid="' + item.giftid + '">OPEN</div>' + 
		'</div>');	
	}	

	if (item.message == "addgiftreward"){
		$( ".giftopenedrewards" ).append('<div class="giftopenedreward">' +		
				'<div class="giftopenedrewardtext"><span id="giftopenedrewardcount">' + item.giftrewardcount + 'x</span> <span id="giftopenedrewarditem">' + item.giftrewarditemname + '</span></div>' +	
			'</div>');
	}	
	
	if (item.message == "giftsettingsload"){		
		giftresourcename = item.giftresourcedata;
	}		
	
    document.onkeyup = function (data) {
        if (open) {
            if (data.which == 27) {
				$.post('http://'+giftresourcename+'/quit', JSON.stringify({}));
            }
        }	
	};
});

$(".buttongiftopen").click(function () {
	$.post('http://'+giftresourcename+'/opengiftfinal', JSON.stringify({}));	
});

$(".buttongiftopened").click(function () {
	soundopen.stop()
	$.post('http://'+giftresourcename+'/quit', JSON.stringify({}));
});

$(".buttongiftsendchoosevehicle").click(function () {
	$.post('http://'+giftresourcename+'/choosevehicletype', JSON.stringify({}));
});

$(".buttongiftsendchooseitem").click(function () {
	$.post('http://'+giftresourcename+'/chooseitemtype', JSON.stringify({}));
});

$(".buttongiftsendtypevehicle").click(function () {
 	$.post('http://'+giftresourcename+'/sendvehiclegifttype', JSON.stringify({
		giftplayerid: $("#giftsendtypevehicleplayerid").val().trim(),
		giftmessage: $("#giftsendtypevehicletextdata").val().trim()
	}));    
});

$(".buttongiftsendtypeitem").click(function () {
 	$.post('http://'+giftresourcename+'/senditemgifttype', JSON.stringify({
		giftplayerid: $("#giftsendtypeitemplayerid").val().trim(),
		giftmessage: $("#giftsendtypeitemtextdata").val().trim()
	}));    
});

$(".giftsendtypevehicleownedvehicles").on("click", ".giftsendtypevehicleownedvehicle", function() {
	var $button = $(this);
	var $name = $button.attr('vehicleid')
 	$.post('http://'+giftresourcename+'/addchoosedvehicle', JSON.stringify({
		vehicleid: $name,
		vehiclelabel: vehiclelabel[$name],
		vehicleplate: vehicleplate[$name],
		vehiclemodel: vehiclemodel[$name],
	}));    
});

$(".giftsendtypevehiclechoosedvehicles").on("click", ".giftsendtypevehiclechoosedvehicle", function() {
	var $button = $(this);
	var $name = $button.attr('vehicleid')
 	$.post('http://'+giftresourcename+'/removechoosedvehicle', JSON.stringify({
		vehicleid: $name
	}));    
});

$(".giftsendtypeitemowneditems").on("click", ".giftsendtypeitemowneditem", function() {
	var $button = $(this);
	var $name = $button.attr('itemname')
	itemselected = $name; 
	document.getElementsByClassName("giftsendtypeitemname")[0].innerHTML = itemlabel[$name];	
	$("#giftsendtypeitemcountdata").val("1"); 
	$('#giftsendtypeitemcountchooseshow').show();	  
});

$(".giftsendtypeitemaddbutton").click(function () {
	var $name = itemselected;
	$.post('http://'+giftresourcename+'/addchooseditem', JSON.stringify({
		itemname: $name,
		itemlabel: itemlabel[$name],
		itemcount: $("#giftsendtypeitemcountdata").val().trim(),
	}));
	itemselected = {};
	$('#giftsendtypeitemcountchooseshow').hide();	  	
});

$(".giftsendtypeitemchooseditems").on("click", ".giftsendtypeitemchooseditem", function() {
	var $button = $(this);
	var $name = $button.attr('itemname')
 	$.post('http://'+giftresourcename+'/removechooseditem', JSON.stringify({
		itemname: $name
	}));    
});

$(".gifts").on("click", ".giftopenbutton", function() {
	var $button = $(this);
	var $name = $button.attr('giftid')
	$.post('http://'+giftresourcename+'/opengift', JSON.stringify({
		giftid: $name
	}));
});