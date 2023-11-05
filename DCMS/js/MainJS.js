function lgnFunc()
{
    document.getElementById("UserLgn").click();
}

//function callCodeBehindFunction() {//unathorized issue 401 in this fuction
//    $.ajax({
//        type: "POST",
//        url: "LoginView.aspx/MyCodeBehindFunction",
//        data: '{}',
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: function (response) {
//            alert(response.d); // Display the result from the code-behind function
//        },
//        error: function (error) {
//            alert("Error: " + error.statusText);
//        }
//    });
//}

function myfunctionclick() {

}


function callCodeBehindFunction() {
    PageMethods.ClearAll(onSuccess, onError);
}

function onSuccess(result) {
    alert(result);
}

function onError(error) {
    alert("Error: " + error.get_message());
}
