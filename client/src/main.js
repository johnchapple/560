import Vue from 'vue'
import VueRouter from 'vue-router'

import App from './App.vue'
import Login from './Login.vue'
import EmployeeList from './EmployeeList.vue'
import BulletinPage from './BulletinPage.vue'
import RolePage from './RolePage.vue'
import axios from 'axios'

import store from './store'

axios.defaults.baseURL = '/api'

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
  { path: '/employees', beforeEnter: authGuard, name: "Employees", component: EmployeeList },
  { path: '/bulletin', beforeEnter: authGuard, name: 'Bulletin', component: BulletinPage },
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
