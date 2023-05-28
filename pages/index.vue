<template>
  <div class="p-4 max-w-2xl m-auto">
    <Header></Header>
    <ul>
      <li v-for="person in people" :key="person._id" class="bg-white border p-4 mb-2 rounded-xl hover:bg-neutral-100">
        <strong>{{ person.name }}</strong> ({{ person.age }} años)
      </li>
    </ul>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue'

interface Person {
  _id: string
  name: string
  age: number
}

const fetchPeople = async () => {
  const response = await fetch('http://localhost:3000/people')
  if (response.ok) {
    people.value = await response.json()
  }
}

const people = ref<Person[]>([])
onMounted(fetchPeople)
</script>
