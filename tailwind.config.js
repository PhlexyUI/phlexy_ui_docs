// For importing tailwind styles from phlexy_ui gem
const execSync = require("child_process").execSync;

// Import phlexy_ui gem path (To make sure Tailwind loads classes used by phlexy_ui gem)
const outputPhlexyUI = execSync("bundle show phlexy_ui", { encoding: "utf-8" });
const phlexyUIPath = outputPhlexyUI.trim() + "/**/*.rb";

const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim,rb}",
    phlexyUIPath,
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  daisyui: {
    themes: ["dark"],
  },
  plugins: [
    require("daisyui"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};
