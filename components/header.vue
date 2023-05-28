<template>
  <header class="flex justify-center items-center border rounded-xl p-4 mb-2">
    <nav class="flex justify-between items-center w-full">
      <div class="flex items-center">
        <!-- SVG of person in blue circle -->
        <svg class="w-10 h-10 mr-2" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <circle cx="12" cy="12" r="10"></circle>
          <path d="M14.31 8l-3.81 3.81L8.69 8"></path>
          <path d="M16.62 12.62L12 17.24 7.38 12.62"></path>
        </svg>

        <h1 class="text-2xl font-bold">People</h1>
      </div>
      <div>
        <router-link to="/" class="text-blue-500 hover:text-blue-700 mr-4">Inicio</router-link>
        <router-link to="/create" class="text-blue-500 hover:text-blue-700">Crear</router-link>
      </div>
    </nav>
  </header>
</template>