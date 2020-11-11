<template>
  <div
    id="app"
    class="bg-white justify-center overflow-y-auto"
  >
    <div class="text-gray-800 p-1 min-h-screen max-w-6xl mx-auto">
      <div class="text-4xl my-4">
        <img class="mx-auto" src="logo.png" />
      </div>
      <div v-if="$store.user" class="flex">
        <div class="bg-gray-200 p-3 border-gray-400 border rounded shadow-xl" style="width: 66%;">
          <p class="mb-2">Welcome, {{ $store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).FirstName }}. Your role is {{ ($store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID == 0 ? 'Employee' : 'Manager') }}.</p>
          <Employees />

          <div class="mt-4 border rounded border-gray-300 bg-white">
            <p class="text-xl ml-2 mt-2">Roles</p>
            <div class="p-1 bg-white border-b border-gray-400" v-for="e in $store.roles" :key="e.id">
              <p class="flex">[{{ e.RoleID }}]&nbsp;{{ e.RoleName }} paid at ${{ e.PayRate }}/hr</p>
              <!--
              <form @submit.prevent="addRole">
                <input v-model="newRoleName" type="text" class="p-1" placeholder="New Role Name" />
                <input v-model="newPayRate" type="number" class="p-1" placeholder="New Role Pay Rate" />
                <button>Add Role</button>
              </form>
              -->
            </div>
          </div>
        </div>
        <div class="bg-white p-3 shadow-xl" style="width: 33%;" >
          <h2 class="text-blue-800 text-2xl text-center">Bulletin Board</h2>
          <BulletinPost class="mb-2" v-for="post in $store.bulletinPosts" :bulletinPost="post" :key="post.BulletinPostID" />
          <form v-if="$store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID === 1" @submit.prevent="addBulletin">
            <textarea v-model="newPost" type="text" class="p-1 block w-full border border-gray-300 rounded" placeholder="New Bulletin Post" />
            <button class="w-full border border-gray-300 rounded">Submit Post</button>
          </form>
        </div>
      </div>
      <div v-else class="flex justify-center height-100">
        <Login />
      </div>
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
import BulletinPost from './BulletinPost'
import Login from './Login'
import Employees from './Employees'
import axios from 'axios'

export default {
  name: 'App',
  components: { RefreshCwIcon, BulletinPost, Login, Employees },
  created() {
    this.getEmployees()
    this.getEmployeeAccounts()
    this.getRoles()
    this.getPosts()
  },
  data() {
    return {
      Posts: [
        { id: 0, text: "Hello, and welcome to working at this company. It's going to be really awful scrubbing dishes, and you're getting less than minimum wage.", employeeId: 6 },
        { id: 1, text: "Due to the pandemic, we're closing. You've lost your jobs.", employeeId: 6 },
        { id: 2, text: "Okay, we're re-opening and you're also getting benefits!", employeeId: 6 },
      ],
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
    addBulletin() {
      console.log('here', this.$store.user)
      axios.post('/bulletinPosts', { Text: this.newPost, Employeeid: this.$store.user.EmployeeID })
      .then(res => {
        this.$store.bulletinPosts.push(res.data[0])
      })
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
