var rewardDay = 0;
var nextReward = 0;
var neededTimeToCollect = 0;
var tomorrowText = "";
window.addEventListener("message", function (event) {
    var v = event.data;
    switch (v.action) {
        case "show":
            neededTimeToCollect = v.myTime;
            rewardDay = v.today;
            setRewards(v.rewards, v.playerDetails);
            tomorrowText = v.tomorrow;
            $(".upperTime").html(tomorrowText);
            $(".dailyRewardsGeneral").show();
            break;
        case "setJS":
            $(".prizeCollectedText").html(v.translate.collected);
            $(".leftSideFirstTitle").html(v.translate.title1);
            $(".leftSideSecondTitle").html(v.translate.title2);
            $(".leftDescription").html(v.translate.leftDesc);
            $(".upperTextRight").html(v.translate.nextReward);
            break;
    }
});

$(document).on("keydown", function () {
    switch (event.keyCode) {
        case 27: // ESC
            $.post("https://ak4y-dailyRewards/closeMenu", JSON.stringify());
            $(".dailyRewardsGeneral").hide();
            break;
    }
});

$(document).on("click", ".rewardItem.canTake", function () {
    var selectedDiv = this;
    var stringInfo = $(selectedDiv).attr("data-rewardInfo");
    var rewardInfo = JSON.parse(stringInfo);
    $.post(
        "https://ak4y-dailyRewards/getReward",
        JSON.stringify({
            itemDetails: rewardInfo,
        }),
        function (data) {
            if (data == true) {
                $("#prizePic").attr("src", rewardInfo.image);
                $(".prizeGeneral").fadeIn(300);
                setTimeout(() => {
                    $(".prizeGeneral").fadeOut(300);
                }, 1000);
                selectedDiv.className = "rewardItem collected";
                $(selectedDiv).empty();
                selectedDiv.innerHTML = `
                <div class="collectedText">COLLECTED</div>
                `;
            } else {
                selectedDiv.className += " canTake";
            }
        }
    );
});

function setRewards(taskList, playerInfo) {
    $(".rightSideGeneral").empty();
    var tomorrow = false;
    for (let i = 0; i < taskList.length; i++) {
        const element = taskList[i];
        var myHtml = "";
        var userDet = JSON.parse(playerInfo);
        if (typeof userDet[i] !== "undefined") {
            if (userDet[i].taken) {
                if (element.day == rewardDay) {
                    tomorrow = true;
                }
                myHtml = `
                    <div class="rewardItem collected">
                        <div class="collectedText">COLLECTED</div>
                    </div>
                `;
            } else {
                if (element.day == rewardDay) {
                    if (neededTimeToCollect > 0) {
                        myHtml = `
                        <div class="rewardItem canTakeButNoTime">
                            <div class="canTakeButTimeArea">
                                <div class="stayGame">Stay in game!</div>
                                <div class="leftTimeStayGame">${neededTimeToCollect} mins</div>
                            </div>
                            <div class="inItemTop">
                                <div class="dayCount">${element.day}</div>
                                <div class="dayText">DAY</div>
                            </div>
                            <div class="inItemImageArea">
                                <img src=${element.image} alt="" />
                            </div>
                            <div class="inItemBottom">
                                <div class="itemCount">${element.itemCount}</div>
                                <div class="itemName">${element.itemLabel}</div>
                            </div>
                        </div>
                        `;
                    } else {
                        myHtml = `
                        <div class="rewardItem canTake" data-rewardInfo = '${JSON.stringify(element)}'>
                            <div class="inItemTop">
                                <div class="dayCount">${element.day}</div>
                                <div class="dayText">DAY</div>
                            </div>
                            <div class="inItemImageArea">
                                <img src=${element.image} alt="" />
                            </div>
                            <div class="inItemBottom">
                                <div class="itemCount">${element.itemCount}</div>
                                <div class="itemName">${element.itemLabel}</div>
                            </div>
                        </div>
                        `;
                    }
                } else {
                    if (tomorrow == true) {
                        tomorrow = false;
                        myHtml = `
                            <div class="rewardItem cannotTake">
                                <div class="cannotTakeBG"></div>
                                <div class="cannotTakeImageArea">
                                    <i id="lockIcon" class="fa-solid fa-lock"></i>
                                    <div class="tomorrowReward">Tomorrow</div>
                                </div>
                                <div class="inItemTop">
                                    <div class="dayCount">${element.day}</div>
                                    <div class="dayText">DAY</div>
                                </div>
                                <div class="inItemImageArea">
                                    <img src=${element.image} alt="" />
                                </div>
                                <div class="inItemBottom">
                                    <div class="itemCount">${element.itemCount}</div>
                                    <div class="itemName">${element.itemLabel}</div>
                                </div>
                            </div>
                        `;
                    } else {
                        myHtml = `
                            <div class="rewardItem cannotTake">
                                <div class="cannotTakeBG"></div>
                                <div class="cannotTakeImageArea">
                                    <i id="lockIcon" class="fa-solid fa-lock"></i>
                                </div>
                                <div class="inItemTop">
                                    <div class="dayCount">${element.day}</div>
                                    <div class="dayText">DAY</div>
                                </div>
                                <div class="inItemImageArea">
                                    <img src=${element.image} alt="" />
                                </div>
                                <div class="inItemBottom">
                                    <div class="itemCount">${element.itemCount}</div>
                                    <div class="itemName">${element.itemLabel}</div>
                                </div>
                            </div>
                        `;
                    }
                }
            }
        }
        $(".rightSideGeneral").append(myHtml);
    }
}
