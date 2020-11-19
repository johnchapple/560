import Vue from 'vue'
import VueRouter from 'vue-router'
// import Highcharts from 'highcharts';
// import VueHighcharts from 'vue-highcharts';


import App from './App.vue'
import Login from './Login.vue'
import Signup from './Signup.vue'
import EmployeeList from './EmployeeList.vue'
import BulletinPage from './BulletinPage.vue'
import RolePage from './RolePage.vue'
import axios from 'axios'
import ReportPage from './ReportPage.vue'
import EmployeeSummary from './EmployeeSummary.vue'

import store from './store'

axios.defaults.baseURL = '/api'


// Vue.use(VueHighcharts, { Highcharts });


Vue.prototype.$store = store
Vue.use(VueRouter)
Vue.config.productionTip = false

const authGuard = async(to, from, next) => {
  if (!store.user) return next('/login')

  next()
}


const routes = [
  { path: '/', component: Login },
  { path: '/roles', beforeEnter: authGuard, component: RolePage },
  { path: '/signup', component: Signup},
  { path: '/employees', beforeEnter: authGuard, name: "Employees", component: EmployeeList },
  { path: '/employee/:id', beforeEnter: authGuard, component: EmployeeSummary },
  { path: '/bulletin', beforeEnter: authGuard, name: 'Bulletin', component: BulletinPage },
  { path: '/reports', name: 'Reports', component: ReportPage },

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
