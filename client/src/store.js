import Vue from 'vue'

const store = Vue.observable({
  user: false,
})

setInterval(() => { store.referenceDate = new Date() }, 1000)

export default store
