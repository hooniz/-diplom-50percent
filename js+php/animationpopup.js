   
   $(function(){
    $('.open_popup').on('click', function(){
        $('.popup_container').css('display', 'flex');
    });
    $('.close_button').on('click', function(){
        $('.popup_container').css('display', 'none');
    });
    const signInBtn = document.querySelector('.signin-btn');
    const signUpBtn = document.querySelector('.signup-btn');
    const formBox = document.querySelector('.form_box');

    signUpBtn.addEventListener('click', function(){
        formBox.classList.add('active')
    })
    signInBtn.addEventListener('click', function(){
        formBox.classList.remove('active')
    })
   });

