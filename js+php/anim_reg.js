$(function(){
    $('.records').on('click', function(){
        $('.btn_c').css('display', 'inline-block'),
        $('.private_info').css('display', 'none'),
        $('.history_info').css('display', 'none'),
        $('.main_about_history').css('display', 'none'),
        $('.main_app_info2').css('display', 'none'),
        $('.main_app2').css('display', 'none'),
        $('.n').css('display', 'none');
    });
    const rec = document.querySelector('.records');
    const inf = document.querySelector('.main_app_info');
    
    rec.addEventListener('click', function(){
    inf.textContent = 'Записаться'
    })
});