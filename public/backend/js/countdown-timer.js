$(document).ready(function () {
    var totalTime = 25 * 60;
    var time = totalTime;
    var circumference = 2 * Math.PI * 40;
    var timeElement = document.getElementById('time');

    var x = setInterval(function () {
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;
        document.getElementById("countdown-timer").innerHTML = minutes + ":" + seconds;
        timeElement.style.strokeDashoffset = circumference * (1 - time/totalTime);
        if (time <= totalTime * 0.1) {
            timeElement.style.stroke = "#fc4304"; // Đỏ (dưới 10%)
        } else if (time <= totalTime * 0.5) {
            timeElement.style.stroke = "#fcd303"; // Vàng (dưới 50%)
        } else {
            timeElement.style.stroke = "#04fc43"; // Xanh (trên 50%)
        }
        time--;
        if (time < 0) {
                     clearInterval(x);
                 }
    }, 1000);
});
