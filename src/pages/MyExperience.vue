<script setup>
const data = [
  {
    time: "Jan 2023 - Present",
    title: "Axon Active - Senior Full-stack developer",
    contents: [
      "Built web application features to manage contract's commission & broker data for Die Mobiliar",
      "Designed and implemented a monthly batch job service to replicate  ~30 mil records from scratch",
      "Implemented a new feature supporting users to search and export Excel file with over ~ 10.000 rows",
      "Business trip in Switzerland for PI Planning to collect customer requirements, planning and breaking tasks",
    ],
    skill: [
      "Java 11 - 17",
      "Quarkus",
      "Spring Boot",
      "Spring Batch",
      "REST APIs",
      "Hibernate",
      "Angular",
      "Apache Kafka",
      "MSSQL",
    ],
  },
  {
    time: "Dec 2021 - Jan 2023",
    title: "800Loanmart - Software Engineer",
    contents: [
      "Worked closely with solution architect. Redesign a web application for submit loan application and manage payment data of Wheels Financial Group from monolith to microservice",
      "Implemented a new feature supporting users to sign electric contract via Dropbox HelloSign",
      "Led a team of 3 localization software engineers to communicate with oversea customer team in remote working mode",
    ],
    skill: [
      "C#",
      ".NET 6",
      "GraphQL",
      "REST APIs",
      "Entity Framework",
      "Blazor",
      "Angular",
      "MSSQL",
    ],
  },
  {
    time: "Oct 2020 - Dec 2021",
    title: "Devinci Group - Software Engineer",
    contents: [
      "Worked on back-end team. Implemented a high load payment web app for the customer support team to manage payment request in Taobao with more than millions daily users",
      "Implemented a rate limiter middleware to increase system's performance by 20% during peak load time",
    ],
    skill: [
      "Java 8",
      "Spring Boot",
      "REST APIs",
      "Hibernate",
      "Apache Kafka",
      "MSSQL",
      "Redis",
    ],
  },
  {
    time: "May 2018 - Dec 2022",
    title: "Capgemini Vietnam - Consultant",
    contents: [
      "Built a web application platform supporting users to submit, manage claim application and transferring Zurich Insurance's Backoffice ",
      "Upgraded the application's platform to newer version, mainly working on : migrating database, refactor codebase,...",
    ],
    skill: ["Gosu", "Java 8", "SOAP", "Guidewire ClaimCenter", "MSSQL"],
  },
];
</script>

<template>
  <div class="my-[40px]" id="Experiences">
    <p class="mb-[20px] text-[18px] font-normal text-white md:text-[22px]">
      Experiences
    </p>
    <div
      class="mb-[30px] md:text-[16px] md:grid md:grid-cols-8 gap-1"
      v-for="item in data"
      :key="item.time"
    >
      <div class="my-[7px] md:col-span-2">{{ item.time }}</div>

      <div class="md:col-span-6">
        <p class="my-[7px] text-white">{{ item.title }}</p>
        <p clas="my-[7px]" v-for="content in item.contents" :key="content">
          - {{ content }}
        </p>
        <div class="my-[10px]">
          <q-chip
            v-for="skill in item.skill"
            square
            class="bg-transparent text-[12px] mr-[5px] md:text-[13px] rounded-[2px]"
            style="color: var(--green); border: 1px solid var(--green)"
            :key="skill"
          >
            {{ skill }}
          </q-chip>
        </div>
      </div>
    </div>
  </div>
</template>
