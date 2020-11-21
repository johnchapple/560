<template>
  <div class="mt-4 border rounded border-gray-400 bg-gray-100 p-3">
    <p class="text-xl ml-2 mt-2">Roles</p>
    <div class="p-1 bg-white rounded shadow border-b border-gray-400 mb-2" v-for="e in $store.roles" :key="e.id">
      <p class="flex">[{{ e.RoleID }}]&nbsp;{{ e.RoleName }} paid at ${{ e.PayRate }}/hr</p>
    </div>
      <form v-if="false" @submit.prevent="addRole" class="flex mt-5">
        <input v-model="roleName" type="text" class="p-1 flex-grow mr-2 shadow" placeholder="New Role Name" />
        <input v-model="rolePay" type="number" max="50" min="7.25" class="p-1 flex-grow mr-2 shadow" placeholder="New Role Pay Rate" />
        <button class="p-1 border border-gray-400 rounded bg-white">Add Role</button>
      </form>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      roleName: '',
      rolePay: 7.25,
    }
  },
  methods: {
    addRole() {
      axios.post('/roles', { RoleName: this.roleName, PayRate: this.rolePay })
    }
  },
}
</script>