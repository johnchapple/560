<template>
  <div
    id="app"
    class="bg-white justify-center overflow-y-auto"
  >
    <div class="text-gray-800 p-1 min-h-screen max-w-6xl mx-auto">
      <div class="text-4xl my-4">
        <h1 class="inline p-2">560 Restaurant Manager</h1>
      </div>
      <div v-if="$store.user" class="flex">
        <div class="bg-gray-200 p-3 border-gray-400 border rounded shadow-xl" style="width: 66%;">
          <p class="mb-2">Welcome, [NAME]. Your role is [MANAGER || EMPLOYEE].</p>
          <Employees />
        </div>
        <div class="bg-white p-3 shadow-xl" style="width: 33%;" >
          <h2 class="text-blue-800 text-2xl text-center">Bulletin Board</h2>
          <BulletinPost class="mb-2" v-for="post in Posts" :bulletinPost="post" :key="post.id" />
        </div>
      </div>
      <div v-else class="flex justify-center height-100">
        <Login />
      </div>
    </div>
  </div>
</template>

<script>
import { RefreshCwIcon } from 'vue-feather-icons'
import BulletinPost from './BulletinPost'
import Login from './Login'
import Employees from './Employees'

export default {
  name: 'App',
  components: { RefreshCwIcon, BulletinPost, Login, Employees },
  data() {
    return {
      Posts: [
        { id: 0, text: "Hello, and welcome to working at this company. It's going to be really awful scrubbing dishes, and you're getting less than minimum wage.", employeeId: 6 },
        { id: 1, text: "Due to the pandemic, we're closing. You've lost your jobs.", employeeId: 6 },
        { id: 2, text: "Okay, we're re-opening and you're also getting benefits!", employeeId: 6 },
      ],
      getDisabled: false,
      loading: false,
    }
  },
  methods: {
    getSummaries() {
      this.loading = true;
      const Http = new XMLHttpRequest();
      const url='https://summarizer-ytwjcsc2wq-uc.a.run.app/api/v1/news';
      Http.open("GET", url);
      Http.send();

      Http.onreadystatechange = (e) => {
        this.cycles = [JSON.parse(Http.responseText)]
        this.getDisabled = true
        this.loading = false
      }
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
