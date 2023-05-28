<template>
  <div class="p-4 max-w-2xl m-auto">
    <Header></Header>
    <form @submit.prevent="addPerson">
      <div class="mb-4">
        <label for="name" class="block text-gray-700 text-sm font-bold mb-2">Nombre</label>
        <input v-model="name" type="text" id="name" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
      </div>
      <div class="mb-4">
        <label for="age" class="block text-gray-700 text-sm font-bold mb-2">Edad</label>
        <input v-model.number="age" type="number" id="age" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
      </div>
      <div>
        <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Agregar</button>
      </div>
    </form>
  </div>
</template>

<script setup>
import { ref } from 'vue'
const config = useRuntimeConfig()
const api = config.public.apiBase;

const name = ref('Santiago de Nicolás')
const age = ref(22)

async function addPerson() {
  console.log('Agregando persona...')

  const response = await fetch(
    `${api}/people`,
    {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      name: name.value,
      age: age.value
    })
  })

  if (response.ok) {
    // Limpiar los campos del formulario después de agregar una persona exitosamente
    name.value = ''
    age.value = 0

    // Mostramos un mensaje indicando que la persona se agregó exitosamente
    alert('Persona agregada exitosamente')
  }
}
</script>