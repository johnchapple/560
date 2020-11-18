<template>
  <div class="flex">
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
  </div>
</template>

<script>
import Employees from './Components/Employees'

export default {
  name: 'EmployeeList', 
  components: { Employees }
}
</script>