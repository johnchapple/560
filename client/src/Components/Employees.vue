<template>
  <div>
    <div class="border border-gray-400 bg-white rounded">
      <p class="text-xl ml-2 mt-2">Employees</p>
      <div class="p-1 bg-white border-b border-gray-400" v-for="e in $store.employees" :key="e.id">
        <p class="flex justify-between">
          <span class="flex">
            <user-icon size="1x" class="mr-2" />
            {{ e.FirstName }} {{ e.LastName }}
          </span>
          <router-link :to="`/employee/${e.EmployeeID}`">View Summary</router-link>
        </p>
        <p>
          {{ $store.roles.find(r => r.RoleID === e.RoleID).RoleName }}
        </p>
      </div>
    </div>
  </div>
</template>

<script>
import { UserIcon } from 'vue-feather-icons'
import { format, formatDistance } from 'date-fns'

export default {
  name: 'Employees',
  components: { UserIcon },
  computed: {
    roleName(eId) {
      return this.$store.roles.find(r => r.RoleID === eId).RoleName
    }
  },
  data() {
    return {
      employees: [
        { id: 0, FirstName: 'John', LastName: 'Chapple', JoinedDate: (new Date('January 1, 2018')) },
      ]
    }
  },
  methods: {
    parseDate(date) {
      return format(new Date(date), 'PPP')
    },
    formatDistanceDate(date) {
      return formatDistance(new Date(date), new Date(), { addSuffix: true })
    },
    getEmployees() {
      this.loading = true;
      const Http = new XMLHttpRequest();
      const url='http://localhost:4000/employees';
      Http.open("GET", url);
      Http.send();

      Http.onreadystatechange = (e) => {
        this.$store.employees = JSON.parse(Http.responseText)
        this.getDisabled = true
        this.loading = false
      }
    }
  },
}
</script>