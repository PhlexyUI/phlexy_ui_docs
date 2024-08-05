import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import StimulusHMR from 'vite-plugin-stimulus-hmr'
import tailwindcss from "tailwindcss"

export default defineConfig({
  plugins: [
    RubyPlugin(),
    StimulusHMR(),
  ],
  css: {
    postcss: {
      plugins: [tailwindcss()],
    }
  },
  optimizeDeps: { exclude: ["fsevents"] },
})
