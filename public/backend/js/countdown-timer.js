$(document).ready(function () {
    var time = 25 * 60;
    var x = setInterval(function () {
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;
        document.getElementById("countdown-timer").innerHTML = minutes + " : " + seconds;
        time--;
        if (time < 0) {
            clearInterval(x);
        }
    }, 1000);
});
