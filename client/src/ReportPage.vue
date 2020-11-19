

<!-- <script src="https://code.highcharts.com/highcharts.js"></script> -->

<template>
	<!-- <pre> -->
		<!-- {{reportChart}} -->
</template>


<script>
import Highcharts from 'highcharts';
import { createHighcharts } from 'vue-highcharts';
 
import loadMap from 'highcharts/modules/map.js';
 
loadMap(Highcharts);


export default {
  components: {
    Highcharts: createHighcharts('Highcharts', Highcharts),
    // Highmaps: createHighcharts('Highmaps', Highcharts),
    // Highstock: createHighcharts('Highstock', Highcharts),
    // HighchartsGantt: createHighcharts('HighchartsGantt', Highcharts),
  },
};
</script>

	<!-- graphs showing sales as a company (line/bar)-->
	<!-- graphs showing sales per person (line) -->
	<!-- other ideas -->
