import Vue from 'vue'
import VueRouter from 'vue-router'

import App from './App.vue'
import Login from './Login.vue'
import EmployeeList from './EmployeeList.vue'
import BulletinPage from './BulletinPage.vue'
import axios from 'axios'

import store from './store'

axios.defaults.baseURL = '/api'

Vue.prototype.$store = store
Vue.use(VueRouter)
Vue.config.productionTip = false

const routes = [
  { path: '/', component: Login },
  { path: '/employees', name: "Employees", component: EmployeeList },
  { path: '/bulletin', name: 'Bulletin', component: BulletinPage },
  { path: '*', redirect: '/' },
]


export const router = new VueRouter({
  routes, // short for `routes: routes`
  mode: 'history',
})

new Vue({
  render: h => h(App),
  router,
}).$mount('#app')
