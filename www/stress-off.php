<pre>
<?php echo shell_exec("whoami"); 
 	echo shell_exec("uptime"); 
	echo shell_exec("ps -eo pcpu,pid,user,args | sort -k 1 -r | head -20");
	echo shell_exec("killall stress");
	echo "<h2>Linux stress process <b>killall stress</b> command sent!</h2>";
?>
</pre>
