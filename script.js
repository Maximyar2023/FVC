$('#text_value').change(() => {
    $('#text_rezult').val('');
})

$('#from').change(() => {
    $('#text_rezult').val('');
})

$('#to').change(() => {
    $('#text_rezult').val('');
})

$('#convert').click(() => {

    if($('#from').val() == 0){
        alert('Вы не выбрали валюту from')
    }
    else {
        if($('#to').val() == 0){
            alert('Вы не выбрали валюту to')
        }
        else {
            if($('#text_value').val() == ''){
                alert('Вы не ввели количество')
            }
            else {
                let str = $('#text_value').val();
                str = str.replace(/,/, '.')
                $('#text_value').val(str);
                if (!(/^[-+]?\d*\.?\d*$/.test(str))){
                    alert('Вы ввели не число!')
                }
                else{
                    $.post({
                        url: './convert.php',
                        dataType: 'json',
                        data: {value:$('#text_value').val(),from:$('#from').val(),to:$('#to').val()}
                    }).done((data) => {
                        console.log(data);
                        $('#text_rezult').val(data['rezult']);
                    })
                }
            }
        }
    }
})