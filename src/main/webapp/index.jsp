<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SSE</title>
</head>
<body>

	Time: <span id="foo"></span>
	
	<br><br>
	<button onclick="start()">Start</button>

	<script>
        function start() {
            var eventSource = new EventSource("sse");
            eventSource.onmessage = function(event) {
                const epoch = parseInt(event.data);
                console.log(epoch);
                document.getElementById('foo').innerHTML = new Date(epoch).toUTCString();
            };
        }
    </script>
</body>
</html>