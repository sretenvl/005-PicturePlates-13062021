function sendEmail() {
    var name = $("#name");
    var email = $("#email");
    var subject = $("#subject");
    var body = $("#body");

    if (isNotEmpty(name) && isNotEmpty(email) && isNotEmpty(subject) && isNotEmpty(body)) {
        $.ajax({
           url: 'models/sendEmail.php',
           method: 'POST',
           dataType: 'json',
           data: {
               name: name.val(),
               email: email.val(),
               subject: subject.val(),
               body: body.val()
           }, success: function (response) {
                if (response.status == "success")
                    alert('Email Has Been Sent!');
                else {
                    alert('Please Try Again!');
                    console.log(response);
                }
           }
        });
    }
}

function isNotEmpty(caller) {
    if (caller.val() == "") {
        caller.css('border', '1px solid red');
        return false;
    } else
        caller.css('border', '');

    return true;
}