<template>
  <div class="p-4 max-w-2xl m-auto flex flex-col">
    <Header></Header>
    <span class="bg-neutral-50 border border-neutral-300 rounded-xl p-4 box">
      <strong>Requesting to:</strong> {{ api }}
    </span>
    <ul class="mt-2">
      <li v-for="person in people" :key="person._id" class="bg-white border p-4 mb-2 rounded-xl hover:bg-neutral-100">
        <strong>{{ person.name }}</strong> ({{ person.age }} años)
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'
const config = useRuntimeConfig()
const api = ref(config.public.apiBase);

interface Person {
  _id: string
  name: string
  age: number
}

const fetchPeople = async () => {
  const response = await fetch(`${api.value}/people`)
  if (response.ok) {
    people.value = await response.json()
  }
}

const people = ref<Person[]>([])
onMounted(fetchPeople)
</script>
