<pre>
<?php echo shell_exec("whoami"); 
 	echo shell_exec("uptime"); 
	echo shell_exec("ps -eo pcpu,pid,user,args | sort -k 1 -r | head -20");
	echo shell_exec("stress --cpu 1 --timeout 5m & ");
	echo "<h2>Linux stress process started!</h2>";
?>
</pre>
