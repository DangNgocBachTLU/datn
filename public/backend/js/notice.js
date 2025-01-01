document.getElementById('level').addEventListener('change', function () {
    const notice = document.querySelector('.notice');
    const value = this.value;

    if (value == 'Dễ') {
        notice.innerHTML = 'Đề thi bao gồm:<br>30 câu dễ<br>20 câu trung bình';
    } else if (value == 'Trung bình') {
        notice.innerHTML = 'Đề thi bao gồm:<br>25 câu dễ<br>20 câu trung bình<br>5 câu khó';
    } else if (value == 'Khó') {
        notice.innerHTML = 'Đề thi bao gồm:<br>20 câu dễ<br>20 câu trung bình<br>10 câu khó';
    } else {
        notice.innerHTML = '';
    }
});
