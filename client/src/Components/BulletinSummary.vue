<template>
  <button @click="selectPost(bulletinPost.BulletinPostID)" class="block w-full text-left bg-white border border-gray-400 rounded">
    <p class="text-gray-700 p-2">
      View Post by&nbsp;<strong>{{ $store.employees.find(e => bulletinPost.EmployeeID === e.EmployeeID).FirstName }}</strong>&nbsp;{{ distance(bulletinPost.Created) }}
    </p>
  </button>
</template>

<script>
import { formatDistance } from 'date-fns'

export default {
  name: 'BulletinSummary',
  props: {
    bulletinPost: {
      type: Object,
      required: true,
    },
    selectPost: {
      type: Function,
      required: true,
    }
  },
  methods: {
    distance(date) {
      return formatDistance(new Date(date), new Date(), { addSuffix: true })
    }
  }
}
</script>