$(document).ready(function () {
    var totalTime = 25 * 60;
    var time = totalTime;
    var circumference = 2 * Math.PI * 40;
    var timeElement = document.getElementById('time');
    var form = $('#quiz-form');

    var x = setInterval(function () {
        var minutes = Math.floor(time / 60);
        var seconds = time % 60;
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;
        document.getElementById("countdown-timer").innerHTML = minutes + ":" + seconds;
        timeElement.style.strokeDashoffset = circumference * (1 - time/totalTime);
        time--;
        if (time < 0) {
            clearInterval(x);
            form.submit();
        }
    }, 1000);
});
