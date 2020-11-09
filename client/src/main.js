import Vue from 'vue'
import axios from 'axios'

import App from './App.vue'

import store from './store'

axios.defaults.baseURL = '/api'

Vue.prototype.$store = store

Vue.config.productionTip = false

new Vue({
  render: h => h(App),
}).$mount('#app')