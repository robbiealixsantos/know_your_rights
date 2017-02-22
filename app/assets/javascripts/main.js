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
    });
};


