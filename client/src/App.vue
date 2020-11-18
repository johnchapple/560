<template>
  <div
    id="app"
    class="bg-white justify-center overflow-y-auto"
  >
    <div class="text-gray-800 p-5 min-h-screen max-w-6xl mx-auto">
      <div class="text-4xl my-4">
        <img class="mx-auto" src="logo.png" />
      </div>
      <div class="bg-gray-100 flex justify-between border border-gray-400 rounded p-2 mb-4">
        <router-link class="text-xl hover:text-blue-700 border-b-2 border-transparent text-blue-900" :class="{'border-blue-800': $route.path === '/bulletin' }" to='/bulletin'>
          Bulletin
        </router-link>
        <router-link class="text-xl hover:text-blue-700 border-b-2 border-transparent text-blue-900" :class="{'border-blue-800': $route.path === '/employees' }" to='/employees'>
          Employees
        </router-link>
        <router-link class="text-xl hover:text-blue-700 border-b-2 border-transparent text-blue-900" :class="{'border-blue-800': $route.path === '/roles' }" to='/roles'>
          Roles
        </router-link>
        <router-link class="text-xl hover:text-blue-700 border-b-2 border-transparent text-blue-900" :class="{'border-blue-800': $route.path === '/reports' }" to='/reports'>
          Reports
        </router-link>
      </div>
      <router-view />
    </div>
    <div v-if="false">
      <p>employees:{{ this.$store.employees.length }}</p>
      <p>employeeAccounts:{{ this.$store.employeeAccounts.length }}</p>
      <p>roles:{{ this.$store.roles.length }}</p>
      <p>bulletinPosts:{{ this.$store.bulletinPosts.length }}</p>
    </div>
  </div>
</template>

<script>
import { RefreshCwIcon } from 'vue-feather-icons'
import axios from 'axios'

export default {
  name: 'App',
  components: { RefreshCwIcon },
  created() {
    this.getEmployees()
    this.getEmployeeAccounts()
    this.getRoles()
    this.getPosts()
  },
  data() {
    return {
      newPost: '',
    }
  },
  methods: {
    getEmployees() {
      //axios.get('/employees').then(res => { this.$store.employees = res.data })
      const Http = new XMLHttpRequest();
      const url='http://localhost:4000/employees';
      Http.open("GET", url);
      Http.send();

      Http.onreadystatechange = (e) => {
        this.$store.employees = JSON.parse(Http.responseText)
        this.getDisabled = true
        this.loading = false
      }
    },
    getEmployeeAccounts() {
      axios.get('/employeeAccounts').then(res => { this.$store.employeeAccounts = res.data })
    },
    getRoles() {
      axios.get('/roles').then(res => { this.$store.roles = res.data })
    },
    getPosts() {
      axios.get('/bulletinPosts').then(res => { this.$store.bulletinPosts = res.data })
    },
  }
}
</script>

<style>
@tailwind base;
@tailwind components;
@tailwind utilities;

body
{
    font-family: 'Helvetica', 'Arial', sans-serif;
}

.loader {
  border: 16px solid #f3f3f3;
  border-top: 16px solid #666;
  border-radius:50%;
  width:20px;
  height: 20px;
  animation: spin 2s linear infinite;
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% {transform: rotate(360deg); }
}
</style>
