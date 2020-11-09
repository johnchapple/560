<template>
  <div class="text-left bg-gray-200 border border-gray-400 rounded">
    <p class="flex p-2 mx-auto w-100 justify-between border-b-2 border-gray-400">
      {{ bulletinPost.text }}
    </p>
    <p class="text-gray-700 p-2">posted by {{ bulletinPost.employeeId }}</p>
  </div>
</template>

<script>

export default {
  name: 'BulletinPost',
  props: {
    bulletinPost: {
      type: Object,
      required: true,
    }
  }
}
</script>