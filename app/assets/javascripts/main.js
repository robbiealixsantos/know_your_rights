$(document).ready(function(){
    radioButtonToggle();
    answerSubmitAction();
});

var radioButtonToggle = function(){
    $('input[name="response"]').click(function(){
        var $radio = $(this);
        // if this was previously checked
        if ($radio.data('waschecked') == true)
        {
            $radio.prop('checked', false);
            $radio.data('waschecked', false);
        }
        else
            $radio.data('waschecked', true);
        // remove was checked from other radios
        $radio.siblings('input[name="response"]').data('waschecked', false);
        });
};

var answerSubmitAction = function(){
    $(".question").on("submit", function(event){
        event.preventDefault();

        console.log("in the click!");

        var answerSubmitTarget = $(this);
        var url = answerSubmitTarget.attr('action');
        var method = answerSubmitTarget.attr('method');
        var data = answerSubmitTarget.serialize();

        var request = $.ajax({
            url: url,
            method: method,
            data: data
        });

        request.done(function(response){
            console.log("success");
            $('#question-box').load('/ #question-box')
        });

        request.fail(function(response){
            console.log("fail");
        });
    });
};


