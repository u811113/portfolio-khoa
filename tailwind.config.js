/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx,vue}"],
  theme: {
    extend: {
      colors: {
        "shadow-gray": "rgba(114, 114, 114, 0.2)",
      },
    },
  },
  plugins: [],
};
