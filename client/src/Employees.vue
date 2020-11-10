<template>
  <div>
    <div class="border border-gray-400 rounded">
      <div class="p-1 bg-white border-b border-gray-400" v-for="e in employees" :key="e.id">
        <p class="flex"><user-icon size="1x" class="mr-2" />{{ e.FirstName }} {{ e.LastName }}</p>
        <p>Joined on {{ e.JoinedDate }}</p>
      </div>
    </div>
  </div>
</template>

<script>
import { UserIcon } from 'vue-feather-icons'

export default {
  name: 'Employees',
  components: { UserIcon },
  created() {
    this.getEmployees()
  },
  data() {
    return {
      employees: [
        { id: 0, FirstName: 'John', LastName: 'Chapple', JoinedDate: (new Date('January 1, 2018')) },
      ]
    }
  },
  methods: {
    getEmployees() {
      this.loading = true;
      const Http = new XMLHttpRequest();
      const url='http://localhost:4000/employees';
      Http.open("GET", url);
      Http.send();

      Http.onreadystatechange = (e) => {
        this.employees = JSON.parse(Http.responseText)
        this.getDisabled = true
        this.loading = false
      }
    }
  },
}
</script>