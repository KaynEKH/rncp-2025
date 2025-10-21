import path from "node:path"
import { TanStackRouterVite } from "@tanstack/router-vite-plugin"
import react from "@vitejs/plugin-react"
import { defineConfig } from "vite"

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react(), TanStackRouterVite()],
  build: {
    target: 'esnext',
    minify: process.env.NODE_ENV === "production",
    cssMinify: process.env.NODE_ENV === "production",
    sourcemap: process.env.NODE_ENV !== "production",
  },
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  }
})
