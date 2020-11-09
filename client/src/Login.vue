<template>
  <div class="mx-auto my-auto inline-block p-6 bg-gray-200 border border-gray-300 rounded">
    <label class="text-gray-800 text-xl" for="username">Username
      <input class="block rounded border-2 p-1" type="text" name="username" max="32" />
    </label>
    <label class="text-gray-800 text-xl" for="password">Password
      <input class="block rounded border-2 p-1" type="password" name="password" max="32" />
    </label>
    <button @click="login" class="mt-2 text-center mx-auto text-xl bg-white hover:border-gray-500 border-2 border-gray-300 rounded p-2">
      Login
    </button>
  </div>
</template>

<script>
export default {
  methods: {
    login() {
      this.$store.user = true
    }
  }
}
</script>