

<!-- <script src="https://code.highcharts.com/highcharts.js"></script> -->

<template>
	<!-- <pre> -->
	<div>
		<!-- <div id="alex" style="height: 400px; background-color: black;"></div> -->
		<div id="barchart" style="height: 400px; background-color: black;"></div>
		<hr />
		<br>
		<div id="topItemBarChart" style="height: 400px; background-color: black;"></div>
		<hr />
		<br>
		<div id="totalmonthlysales" style="height: 400px; background-color: black;"></div>

	</div>
</template>


<script>
	import Highcharts from 'highcharts';
	import axios from 'axios';


	export default {
		data() {
    		return {
		      points: '',
		      startPeriod: '',
		      interval: ''
    		}
  		},
  		name: 'Reports',
  		mounted(){
  			this.getMonthlyReport();
  			this.getTopItems();
  			this.getTotalMonthlySales();
  		},
  		methods: {
  			createLineChart(data,name,title,startPoint){
			    Highcharts.chart(name, {		
				    title: {
				        text: title //Employee Yearly Sales //Employee Monthly Sales //Top Performers
				    },
				    yAxis: {            
            			labels: {
                			formatter: function () {
                    			return '$' + this.axis.defaultLabelFormatter.call(this);
                			}            
           				 }
        			},

				    xAxis: {
				        type: 'datetime'
				    },

				    plotOptions: {
				        series: {
				            pointStart: Date.UTC(2020, 0, 1),
				            pointIntervalUnit: 'month'
				        }
				    },
				    series: [data]
				});
  			},
  			createBarChart(data,name,title,suf,yAxisTitle,cats){
  				console.log(data);
  				Highcharts.chart(name, {
				    chart: {
				        type: 'bar'
				    },
				    title: {
				        text: title
				    },
				     xAxis: {
				        categories: [cats],
				        title: {
				            text: null
				        }
				    },
				    yAxis: {
				        min: 0,
				        title: {
				            text: yAxisTitle,
				            align: 'high'
				        },
				        labels: {
				            overflow: 'justify'
				        }
				    },
				    tooltip: {
				        valueSuffix: " "+suf
				    },
				    plotOptions: {
				        bar: {
				            dataLabels: {
				                enabled: true
				            }
				        }
				    },
				    series: data
				    
				});
  			},
  			getMonthlyReport(){
  				axios.get('/reports/monthly',{points:this.points,startPeriod:this.startPeriod,interval:this.interval})
  					.then(res => {
  						var data = res.data;
  						var arr = {};
  						var el = [];
  						var values = [];
  						for(var i = 0; i < res.data.length; i++){
  								el.push({name:data[i]['EmployeeName'], data: [parseInt(data[i]['TotalSales'])]});
  						}
  						this.createBarChart(el,barchart,"Total Sales by Employees This Year","dollars","Dollars (USD)","Employees");
  					})
  			},
  			getTopItems(){
  			  	axios.get('/reports/topitems',{points:this.points,startPeriod:this.startPeriod,interval:this.interval})
  					.then(res => {
  					var data = res.data;
  					var arr = {};
  					var el = [];
  					var values = [];
  					for(var i = 0; i < res.data.length; i++){
  							el.push({name:data[i]['ItemName'], data: [parseInt(data[i]['NumOrdered'])]});
  					}
  					this.createBarChart(el,topItemBarChart,"Top Items Sold this Month", "items","Menu Items","Menu Items");
  				})	
  			},
  			getTotalMonthlySales(){
  				  axios.get('/reports/monthlySales',{points:this.points,startPeriod:this.startPeriod,interval:this.interval})
  					.then(res => {
  					var data = res.data;
  					var arr = {};
  					var el = [];

  					for(var i = 0; i < res.data.length; i++){
  						el.push(res.data[i]['TotalMonthlySales']);
  					}
  					// console.log(el);
  					arr = {"data":el};
  					console.log(arr);
  					this.createLineChart(arr,totalmonthlysales,"Total Monthly Sales",1);

  				})
  			}
  		}
	}
</script>

	<!-- graphs showing sales as a company (line/bar)-->
	<!-- graphs showing sales per person (line) -->
	<!-- other ideas -->
