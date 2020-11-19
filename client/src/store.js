import Vue from 'vue'

const store = Vue.observable({
  user: false,
  employees: [],
  employeeAccounts: [],
  roles: [],
  bulletinPosts: [],
  bulletinComments: [],
})

setInterval(() => { store.referenceDate = new Date() }, 1000)

export default store
