$(function(){
        $('.reg_button').on('click', function(){
            let request ={
                'loginreg':$('input[name="loginreg"]').val(),
                'emailreg':$('input[name="emailreg"]').val(),
                'passreg':$('input[name="passreg"]').val(),
                'passcheck':$('input[name="passcheck"]').val()
            };
            
            $.post('./js+php/registration.php', request, function(response){
                console.log(response);
                if (response =='1')
                {
                    $('input[name="loginreg"]').val(""),
                    $('input[name="emailreg"]').val(""),
                    $('input[name="passreg"]').val(""),
                    $('input[name="passcheck"]').val("");
                }
                
                else
                {
                    alert("Что-то пошло не так :(");
                }
                
            });
        
        });
    });
    