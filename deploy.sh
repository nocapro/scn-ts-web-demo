#!/bin/bash

# Manual deployment script for GitHub Pages
echo "Building project..."
npm run build

if [ $? -eq 0 ]; then
    echo "Build successful! Deploying to GitHub Pages..."

    # Create a temporary branch for deployment
    git checkout -b gh-pages-temp

    # Remove everything except the dist folder
    git rm -rf .

    # Move dist contents to root
    mv dist/* .
    rmdir dist

    # Add .nojekyll file to enable root directory serving
    touch .nojekyll

    # Commit changes
    git add .
    git commit -m "Deploy to GitHub Pages

🤖 Generated with [Claude Code](https://claude.com/claude-code)

Co-Authored-By: Claude <noreply@anthropic.com}"

    # Push to gh-pages branch
    git push origin HEAD:gh-pages --force

    # Clean up
    git checkout main
    git branch -D gh-pages-temp

    echo "Deployment complete! Your site should be available at: https://nocapro.github.io/scn-ts-web-demo"
else
    echo "Build failed! Please fix the errors before deploying."
    exit 1
fi