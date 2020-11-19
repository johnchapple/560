

<!-- <script src="https://code.highcharts.com/highcharts.js"></script> -->

<template>
	<!-- <pre> -->
	<div id="alex" onload="createChart()" style="height: 400px; background-color: black;"></div>
</template>


<script>
	import Highcharts from 'highcharts';



	export default {
  		name: 'Reports',
  		mounted(){
  			this.createChart();
  		},
  		methods: {
  			createChart(){
  				console.log("hey");
		     Highcharts.chart('alex', {		
			    title: {
			        text: 'Point interval unit is one month'
			    },

			    xAxis: {
			        type: 'datetime'
			    },

			    plotOptions: {
			        series: {
			            pointStart: Date.UTC(2015, 0, 1),
			            pointIntervalUnit: 'month'
			        }
			    },
			    series: [{
			        data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
			    }, {
			        data: [144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4, 29.9, 71.5, 106.4, 129.2]
			    }]
			});
  			}
  		}
	}
</script>

	<!-- graphs showing sales as a company (line/bar)-->
	<!-- graphs showing sales per person (line) -->
	<!-- other ideas -->
