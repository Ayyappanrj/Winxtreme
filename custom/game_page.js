$(document).ready(function() {   

    getFinalResult();
    // alert("Gopal");   
    var rock = 0;
    var paper = 0;
    var scissor = 0;
    var total = 0;
    var active = 'rock';
    var time_limit = 30;
    var user_pick = 1;

    $('.game-side').click(function(){
        active = $(this).data('active');
        user_pick = $(this).data('value');
    });

    $('.coin').click(function(){ 
        let value =  $(this).data('value');
        total += value;
        if(active == 'rock'){
            rock += value; 
            $('.rock').html(rock);
        }
        else if(active == 'paper'){
            paper += value; 
            $('.paper').html(paper);
        }
        else{
            scissor += value; 
            $('.scissor').html(scissor);
        } 
        $('.game_amount').html(total);
    });

    
    $('.close_btn').click(function(){
        total = 0;
        $('.game_amount').html(0);
        let symbol = $(this).data('key');
        if(symbol == 'rock'){
            rock = 0; 
            $('.rock').html(rock);
        }
        else if(symbol == 'paper'){
            paper = 0; 
            $('.paper').html(paper);
        }
        else{
            scissor = 0; 
            $('.scissor').html(scissor);
        }  
    });
    $('#formSubmit').click(function(){
        $('.invalid-feedback').hide();   
        if($('#mission').val()=="")
        {
            $('.mission').html('Please fill mission');
            $('.mission').show();
        } 
        else if($('#vision').val()=="")
        {
            $('.vision').html('Please fill vision');
            $('.vision').show();
        }
        else if($('#value').val()=="")
        {
            $('.value').html('Please fill value');
            $('.value').show();
        }
        else
        {
            updateAbout();
        }       
    });

    var time_out = setInterval(() => { 
      if(time_limit == 0) {
        $('#timer').html('Time Over');
        // getFinalResult();
        time_limit = 30;
      } 
      else {  
        if(time_limit < 10) {
          time_limit = 0 + '' + time_limit;
        }
        $('#timer').html(time_limit);
        time_limit -= 1; 
      }
    }, 1000);


    function getFinalResult()
    {       
        request = $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: base_URL+'WinXtreme/getFinalResult',
            // url: base_URL+'WinXtreme/nextPrediction',
            data: {test:'msg'},
            processData: false,
            contentType: false,
            success: function (data) {
            },
            error: function () {
            }
        }); 
    }

    $('#betButton').click(function(){
        request = $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: base_URL+'WinXtreme/InsertUserPrediction',
            data: { amount: total, result: user_pick },
            success: function (data) {
                console.log(data);
            },
            error: function () {
            }
        }); 
    });
    
    function refreshDetails()
    {
        $.when(getAbout()).done(function(){
            displayAboutDetails(aboutJSON);               
        });     
    }

});
