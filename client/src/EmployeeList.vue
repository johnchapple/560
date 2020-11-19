<template>
  <div class="bg-gray-200 p-3 border-gray-400 border rounded shadow-xl">
    <p class="mb-2">Welcome, {{ $store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).FirstName }}. Your role is {{ ($store.employees.find(e => $store.user.EmployeeID === e.EmployeeID).RoleID == 0 ? 'Employee' : 'Manager') }}.</p>
    <Employees />
  </div>
</template>

<script>
import Employees from './Components/Employees'

export default {
  name: 'EmployeeList', 
  components: { Employees }
}
</script>