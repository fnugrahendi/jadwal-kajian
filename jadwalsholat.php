<script type="text/javascript" src="dist/js/PrayTimes.js"></script>
<script type="text/javascript">
	
	var date = new Date(); // today
	var times = prayTimes.getTimes(date, [ -7.7827800, 110.3608300], +7);
prayTimes.tune({isha: 2});
	var list = ['Fajr', 'Sunrise', 'Dhuhr', 'Asr', 'Sunset', 'Maghrib', 'Isha'];

	var html = '';
	for(var i in list)	{
		html += ' '+ list[i]+ ': ';
		html += times[list[i].toLowerCase()]+ ' | ';
	}
	html += '</p>';
	document.getElementById('jadwal').innerHTML = html;
</script>
