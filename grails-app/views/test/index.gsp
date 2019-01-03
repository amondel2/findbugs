<!doctype html>
<html>
<head>
    <meta name="layout" content="main1"/>
    <title>Welcome to sometest</title>
</head>
<body>
<h2>My Form</h2>
<div id="result"></div>
<div>Enter Some Numbs to Add them:</div>
<form onsubmit="event.preventDefault(); return false;">
    <input type="text" name="num1" />
    <input type="text" name="num2" />
    <input type="submit" id="btn" value="SumBit">

</form>
<asset:javascript src="application.js"/>

<script>
    $(document).ready(function () {
        $("#btn").on('click',function(){
            var data = $('form').first().serialize();

            $.ajax({
                type: "POST",

                data: data,
                success: function(data) {
                    $("#result").html(data.msg);
                }

            });
        });
    });

</script>
</body>
</html>
