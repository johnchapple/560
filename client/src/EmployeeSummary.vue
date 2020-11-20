<template>
  <div class="p-3 rounded border border-gray-400 bg-gray-100 text-gray-900">
    <p class="flex justify-between text-xl">
      <span>{{ employeeFirstName }}&nbsp;{{ employeeLastName }}</span>
      <span>Employee #{{ $route.params.id }}</span>
    </p>
    <p class="mb-5">
      {{ employeeRole }}
    </p>
    <p>
      {{ employeeEmail }}
    </p>
    <p>
      {{ employeePhoneNumber }}
    </p>
    <p>Joined on {{ formatDate(employeeJoinedDate) }}&nbsp;{{ distance(employeeJoinedDate) }}</p>
    <div v-if="$store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID === 1" class="mt-5 p-3 border rounded border-gray-400 bg-white">
      <p class="text-lg">Manager Actions</p>
      Set Role: 
      <select @change="changeRole()" v-model="NewRoleID">
        <option v-for="role in $store.roles" :key="role.RoleId" :value="role.RoleID">{{ role.RoleName }}</option>
      </select>
      {{ NewRoleID }}
      <p class="bg-green-100 border-green-400 border rounded p-1 mt-2 text-green-900" v-if="message.length > 0">{{ message }}</p>
    </div>
  </div>
</template>

<script>
import { format, formatDistance } from 'date-fns'
import axios from 'axios'

export default {
  data() {
    return {
      message: '',
      NewRoleID: 0,
    }
  },
  mounted() {
    this.newRoleID = this.employee.RoleID
  },
  computed: {
    employee() {
      return this.$store.employees && this.$store.employees.find(e => this.$route.params.id == e.EmployeeID)
    },
    employeeFirstName() {
      return this.employee.FirstName
    },
    employeeLastName() {
      return this.employee.LastName
    },
    employeeRole() {
      return this.$store.roles.find(r => this.employee.RoleID == r.RoleID).RoleName
    },
    employeeEmail() {
      return this.employee.Email
    },
    employeePhoneNumber() {
      return this.employee.PhoneNumber
    },
    employeeJoinedDate() {
      return this.employee.JoinedDate
    }
  },
  methods: {
    formatDate(date) {
      return format(new Date(date), 'PPP')
    },
    distance(date) {
      return formatDistance(new Date(date), new Date(), { addSuffix: true})
    },
    async changeRole() {
      await axios.patch(`/employee/${this.$route.params.id}`, { RoleID: this.NewRoleID })
      axios.get('/employees').then(res => { this.$store.employees = res.data })
      this.message = "The role has been updated!"
    }
  }
}
</script>