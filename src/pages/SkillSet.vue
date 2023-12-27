<script setup>
const skills = [
  {
    title: "Programming Languages",
    detail: ["Java", "C#", "SQL"],
  },
  {
    title: "Frameworks/ Libraries",
    detail: [
      "Spring Boot",
      "Spring Batch",
      "Quarkus",
      ".NET",
      "Hibernate",
      "Entity Framework",
      "Angular.js",
      "Blazor",
      "Guidewire",
    ],
  },
  {
    title: "Communication",
    detail: ["RESTful", "GraphQL", "SOAP"],
  },
  {
    title: "Database",
    detail: ["MS SQL"],
  },
];
</script>
<template>
  <div class="my-[40px]" id="Skillset">
    <p class="text-[18px] font-normal text-white md:text-[22px]">Skillset</p>
    <div v-for="skill in skills" :key="skill" class="mt-[20px] md:text-[16px]">
      <p class="my-[5px] text-white">{{ skill.title }}</p>
      <q-chip
        v-for="item in skill.detail"
        :key="item"
        class="text-[#bbbbbb] bg-[#232323] border-[1px] border-solid border-[#333] text-[12px] md:text-[13px]"
        square
        >{{ item }}</q-chip
      >
    </div>
  </div>
</template>
