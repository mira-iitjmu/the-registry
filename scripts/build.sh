#!/bin/bash

# Build script for MIRA Resource Catalog
# This script helps with local development and testing

echo "🚀 Building MIRA Resource Catalog..."

# Check if Quarto is installed
if ! command -v quarto &> /dev/null; then
    echo "❌ Quarto is not installed. Please install Quarto first:"
    echo "   https://quarto.org/docs/get-started/"
    exit 1
fi

# Clean previous build
echo "🧹 Cleaning previous build..."
rm -rf _site

# Render the website
echo "📝 Rendering website..."
quarto render

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build completed successfully!"
    echo "📁 Website files are in the _site directory"
    echo "🌐 To preview locally, run: quarto preview"
else
    echo "❌ Build failed. Please check the error messages above."
    exit 1
fi
