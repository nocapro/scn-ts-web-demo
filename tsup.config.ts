import { defineConfig } from 'tsup'

export default defineConfig({
  entry: ['src/main.tsx'],
  format: ['esm', 'cjs'],
  target: 'es2020',
  treeshake: true,
  splitting: true,
  sourcemap: true,
  clean: true,
  minify: true,
  dts: true,
  external: [
    'react',
    'react-dom',
    'js-tiktoken',
    'picomatch'
  ],
  esbuildOptions: (options, context) => {
    options.inject = ['./scripts/react-shim.js']
  }
})