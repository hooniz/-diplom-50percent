$(function(){
   
    $('.send_button').on('click', function(){
       
        let request ={
            'surname':$('input[name="surname"]').val(),
            'name':$('input[name="nname"]').val(),
            'patronymic':$('input[name="patronymic"]').val(),
            'tel':$('input[name="tel"]').val(),
            'date':$('input[name="date"]').val(),
            'time':$('input[name="time"]').val(),
            'comment':$('textarea[name="comment"]').val(),
        };
        $.post('./js+php/record.php', request, function(response){
            if (response=='1' || response=='11')
            {
               $('.popup_container').css('display', 'none');
               location.reload();
               alert("Вы записались! С вами свяжутся.")
            }
            else if (response =='0') 
            {
                alert("Что то пошло не так :(");
                $('.popup_container').css('display', 'none');
               location.reload();
            }
            else if (response =='2' ) 
            {
                alert("Неверно заполненные поля");
                $('.popup_container').css('display', 'none');
            }
        });
    });
});
