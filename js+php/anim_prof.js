$(function(){
    $('.profile').on('click', function(){
        $('.open_popup').css('display', 'none'),
        $('.btn_c').css('display', 'none'),
        $('.n').css('display', 'none');
        $('.main_about_history').css('display', 'none'),
        $('.history_info').css('display', 'none'),
        $('.private_info').css('display', 'flex'),
        $('.main_app_info2').css('display', 'flex'),
        $('.private_info').css('position', 'static');
    });
const prof = document.querySelector('.profile');
const inf = document.querySelector('.main_app_info');


prof.addEventListener('click', function(){
inf.textContent = 'Личные данные'
})
});