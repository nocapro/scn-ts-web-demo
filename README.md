# SCN TypeScript Web Demo

A web-based demo application for the SCN TypeScript Core library, showcasing code analysis and visualization capabilities.

## Features

- Interactive code analysis using tree-sitter
- Tokenization and syntax highlighting
- AST visualization
- TypeScript/JavaScript project analysis

## Tech Stack

- React 18
- TypeScript
- Vite
- TailwindCSS
- Tree-sitter
- SCN TypeScript Core

## Installation

```bash
npm install
```

## Development

```bash
npm run dev
```

## Building

```bash
# Build both app and library
npm run build

# Build only the app (Vite)
npm run build:app

# Build only the library (tsup)
npm run build:lib
```

## Deployment

This project is configured for deployment on Cloudflare Pages:

1. Connect your GitHub repository to Cloudflare Pages
2. Use the build command: `npm run build`
3. Set the publish directory to: `dist`

The project will be automatically deployed when you push to the main branch.

## License

MIT