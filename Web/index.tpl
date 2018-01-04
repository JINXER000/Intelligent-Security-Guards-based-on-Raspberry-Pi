<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>遥控树莓派</title>
    <link href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <script src="http://code.jquery.com/jquery.js"></script>
    <style type="text/css">
        #up {
            margin-left: 55px;
            margin-bottom: 3px;
        }
        #down {
            margin-top: 3px;
            margin-left: 55px;
        }
    </style>
    <script>
        $(function(){
            $("button").click(function(){
                cmd="{cmd:"+this.id+"}"
                //alert(cmd)
                $.post("/cmd",this.id,function(data,status){
                });
            });

        });

    </script>
</head>
<body>
<div>
    <img src="http://192.168.1.100:8080/?action=stream" />
</div>
<div id="container" class="container">
    <div>
        <button id="up" class="btn btn-lg btn-primary glyphicon glyphicon-circle-arrow-up"></button>
    </div>
    <div>
        <button id='left' class="btn btn-lg btn-primary glyphicon glyphicon-circle-arrow-left"></button>
        <button id='stop' class="btn btn-lg btn-primary glyphicon glyphicon-stop"></button>
        <button id='right' class="btn btn-lg btn-primary glyphicon glyphicon-circle-arrow-right"></button>
    </div>
    <div>
        <button id='down' class="btn btn-lg btn-primary glyphicon glyphicon-circle-arrow-down"></button>
    </div>

</div>

<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
