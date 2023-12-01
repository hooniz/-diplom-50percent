$(function(){
    
    $('.history').on('click', function(){
        $('.btn_c').css('display', 'none'),
        $('.n').css('display', 'flex');
        $('.private_info').css('display', 'none'),
        $('.history_info').css('display', 'flex'),
        $('.main_about_history').css('display', 'flex'),
        $('.main_app_info2').css('display', 'none'),
        $('.main_app2').css('display', 'none');
    });
    const his = document.querySelector('.history');
    const inf = document.querySelector('.main_app_info');
    
    his.addEventListener('click', function(){
    inf.textContent = 'История'
    })
});