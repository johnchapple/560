import Vue from 'vue'

const store = Vue.observable({
  user: false,
  employees: [],
  employeeAccounts: [],
  roles: [],
  bulletinPosts: [],
})

setInterval(() => { store.referenceDate = new Date() }, 1000)

export default store
