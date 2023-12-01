    $(function(){
            
        $('.open_popup').on('click', function(){
            $('.popup_container').css('display', 'flex');
        });
        $('.close_button').on('click', function(){
            $('.popup_container').css('display', 'none');
        });

            $('.send_button').on('click', function(){
                let request ={
                    'login':$('input[name="login"]').val(),
                    'pass':$('input[name="pass"]').val()
                };
                
                $.post('./js+php/login.php', request, function(response){
                    if (response)
                    {
                       $('input[name="login"]').val(""),
                       $('input[name="pass"]').val(""),
                       $('.popup_container').css('display', 'none');
                       window.open(response);
                    }
                    else 
                    {
                        alert("Что то пошло не так :(");
                    }
                });
            });
        });
        
