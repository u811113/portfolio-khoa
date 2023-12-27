<script setup>
const data = [
  {
    name: "https://u811113.com",
    des: "On progress personal tech blog & online portfolio",
    time: "Aug 2023 - Present",
    content: [
      "Implemented a cloud native environment in AWS",
      "Designed and implemented an online portfolio",
      "Implemented a CI/CD process from scratch using GitHub Action",
    ],
    skills: ["React", "AWS EC2", "AWS CloudFront", "Github Action"],
  },
];
</script>

<template>
  <div class="mb-[20px]" id="Projects">
    <p class="mb-[20px] text-[18px] font-normal text-white md:text-[22px]">
      Projects
    </p>
    <div class="grid gap-[10px] md:text-[16px] md:grid-cols-2">
      <div
        v-for="pro in data"
        :key="pro.name"
        class="border-[1px] border-solid border-[#2d2d2d] bg-[#1c1c1c] p-[15px] rounded-[5px] shadow-[0_2px_3px_#0000003d]"
      >
        <p class="mb-[7px]">{{ pro.time }}</p>
        <div class="mb-[7px]">
          <a
            :href="pro.name"
            class="hover:opacity-70"
            style="color: var(--green)"
            >{{ pro.name }}</a
          >
        </div>

        <p class="mb-[7px]">{{ pro.des }}</p>

        <q-chip
          v-for="skill in pro.skills"
          square
          class="bg-transparent mb-[7px] text-[12px] mr-[5px] md:text-[13px] rounded-[2px]"
          style="color: var(--green); border: 1px solid var(--green)"
          :key="skill"
        >
          {{ skill }}
        </q-chip>
      </div>
    </div>
  </div>
</template>
