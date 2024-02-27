var jobs = null
var selected = "1"
var scoreboard = null

$(function () {
    function pickaxe() {
        var audio = document.getElementById("pickaxe");
        audio.play();
    }

    function shavel() {
        var audio = document.getElementById("shavel");
        audio.play();
    }

    function axe() {
        var audio = document.getElementById("axe");
        audio.play();
    }

    function woodlogs() {
        var audio = document.getElementById("woodlogs");
        audio.play();
    }
    function play() {
        var audio = document.getElementById("audio");
        audio.play();
    }

    function display(bool) {
        if (bool) {
            document.getElementById("body").style.display="block";
            $(".jobs-jobselection").show()
            $(".jobs-howitworks").hide()
            $(".jobs-scoreboard").hide()
            $(".jobs-backbutton").hide()
            $(".jobs-alert").hide()
        } else {
            document.getElementById("body").style.display="none";
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
                jobs = item.jobs
                scoreboard = item.scoreboard
                var points = item.totalpoints / 1000
                if (points > 100) {
                    points = 100
                }
                $(".progressbar-progressamount").css("width", points+"%")
                $(".progressbar-text2").text(Math.floor(points))
                $(".jobs-menu").html(item.jobslist)
                updateData(selected)
                $(".jobs-text62").text(item.lang.work)
                $(".jobs-text64").text(item.lang.howItWorks)
                $(".jobs-text66").text(item.lang.leaderboard)
                $(".jobs-text68").text(item.lang.requires)
                $(".jobs-text02").text(item.lang.back)
                $(".jobs-text10").text(item.lang.name)
                $(".jobs-text12").text(item.lang.missions)
                $(".jobs-text14").text(item.lang.earned)
            } else {
                display(false)
            }
        }
        if (item.type === "pickaxe") {
            pickaxe()
        }
        if (item.type === "shavel") {
            shavel()
        }
        if (item.type === "axe") {
            axe()
        }
        if (item.type === "woodlogs") {
            woodlogs()
        }
    })
    
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://bit-jobs/exit', JSON.stringify({}));
            return
        }
    };

        
    $(document).on("click", ".jobs-hiwbutton", function(){
        play()
        $(".jobs-jobselection").hide()
        $(".jobs-howitworks").show()
        $(".jobs-scoreboard").hide()
        $(".jobs-backbutton").show()
        $(".jobs-alert").hide() 
    }); 

    $(document).on("click", ".jobs-leaderbutton", function(){
        play()
        $(".jobs-jobselection").hide()
        $(".jobs-howitworks").hide()
        $(".jobs-scoreboard").show()
        $(".jobs-backbutton").show()
        $(".jobs-alert").hide() 
        $(".jobs-scoreimg").show()
    }); 

    $(document).on("click", ".jobs-backbutton", function(){
        play()
        $(".jobs-jobselection").show()
        $(".jobs-howitworks").hide()
        $(".jobs-scoreboard").hide()
        $(".jobs-backbutton").hide()
        $(".jobs-alert").hide() 
    }); 

    //MENU

    function updateData(selection){
        $(".jobs-scoreboardlist").html('<span class="jobs-text10">NAME</span><span class="jobs-text12">MISSIONS</span><span class="jobs-text14">EARNED</span>')
        $(".jobs-imagedescription").hide()
        $(".jobs-imagedescription").attr("src", jobs[selection-1].image)
        $(".jobs-imagedescription").css("top",  jobs[selection-1].descpos.top)
        $(".jobs-imagedescription").css("left", jobs[selection-1].descpos.left)
        $(".jobs-imagedescription").css("width", jobs[selection-1].descpos.width)
        $(".jobs-text58").text(jobs[selection-1].name)
        $(".jobs-text60").html(jobs[selection-1].description)
        $(".jobs-imagedescription").delay(0).fadeIn()
        $(".jobs-text18").text(jobs[selection-1].name)
        $(".jobs-imagevector").attr("src",jobs[selection-1].image)
        $(".jobs-imagevector").css("top", jobs[selection-1].vecpos.top)
        $(".jobs-imagevector").css("left", jobs[selection-1].vecpos.left)
        $(".jobs-imagevector").css("width", jobs[selection-1].vecpos.width)
        $(".jobs-text16").text(jobs[selection-1].name)
        $(".jobs-scoreimg").attr("src",jobs[selection-1].image)
        $(".jobs-scoreimg").css("top", jobs[selection-1].scorepos.top)
        $(".jobs-scoreimg").css("left", jobs[selection-1].scorepos.left)
        $(".jobs-scoreimg").css("width", jobs[selection-1].scorepos.width)
        $(".jobs-text20").text(jobs[selection-1].howitworks1)
        $(".jobs-text26").text(jobs[selection-1].howitworks2)
        $(".jobs-text30").text(jobs[selection-1].howitworks3)
        $(".jobs-text34").text(jobs[selection-1].howitworks4)
        $(".jobs-text38").text(jobs[selection-1].howitworks5)
        $(".jobs-text70").text(jobs[selection-1].require)
        for (let item of scoreboard) {
            if (item.job == jobs[selection-1].name.toUpperCase()){
                $(".jobs-scoreboardlist").append('<div class="jobs-scoreuser"><span class="jobs-text04"><span>'+item.name+'</span></span><span class="jobs-text06">'+item.missions+'</span><span class="jobs-text08">'+item.earned+'$</span></div>')
            }
        }

    }
    
    $(document).on("click", ".jobs-item", function(){
        play()
        selected = $(this).attr('data-value')
        updateData(selected)
    }); 


    $(document).on("click", ".jobs-workbutton", function(){
        play()
        $.post('https://bit-jobs/selectJob', JSON.stringify({selected:selected}));
        $.post('https://bit-jobs/exit', JSON.stringify({}));
    })
})