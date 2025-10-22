# Deployment Guide

This guide explains how to deploy the MIRA Resource Catalog website to GitHub Pages.

## 🚀 Automatic Deployment (Recommended)

The website is automatically deployed to GitHub Pages whenever changes are pushed to the `main` branch.

### How it works:

1. **GitHub Actions**: A workflow (`.github/workflows/publish.yml`) automatically builds and deploys the site
2. **Quarto Rendering**: The workflow uses Quarto to render the website
3. **GitHub Pages**: The rendered site is automatically published to GitHub Pages

### Steps to deploy:

1. **Push changes** to the `main` branch:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```

2. **Monitor deployment**:
   - Go to the "Actions" tab in your GitHub repository
   - Watch the "Publish Quarto Website" workflow run
   - The site will be available at `https://mira-iitjmu.github.io/the-registry/`

## 🔧 Manual Deployment

If you need to deploy manually:

### Local Build:

```bash
# Build the website
./scripts/build.sh

# Or manually:
quarto render
```

### GitHub Pages Setup:

1. Go to repository **Settings** → **Pages**
2. Under **Source**, select **GitHub Actions**
3. The workflow will automatically deploy when triggered

## 🛠️ Troubleshooting

### Common Issues:

1. **Build Failures**:
   - Check the Actions tab for error logs
   - Ensure all required files are committed
   - Verify Quarto syntax in `.qmd` files

2. **Site Not Updating**:
   - Check if GitHub Actions workflow completed successfully
   - Verify GitHub Pages settings are correct
   - Wait a few minutes for deployment to complete

3. **Missing Content**:
   - Ensure all files are committed to the repository
   - Check that paths in navigation are correct
   - Verify file permissions

### Debug Commands:

```bash
# Test local build
quarto render --debug

# Preview locally
quarto preview

# Check configuration
quarto check
```

## 📝 Configuration

### GitHub Pages Settings:

- **Repository**: `mira-iitjmu/the-registry`
- **Branch**: `main`
- **Source**: GitHub Actions
- **Custom Domain**: (Optional)

### Quarto Configuration:

The site is configured in `_quarto.yml`:
- **Output Directory**: `_site`
- **Theme**: Cosmo (Bootswatch)
- **GitHub Integration**: Enabled

## 🔄 Workflow Details

The deployment workflow (`.github/workflows/publish.yml`) does the following:

1. **Checkout**: Gets the latest code
2. **Setup Quarto**: Installs Quarto CLI
3. **Render**: Builds the website
4. **Deploy**: Publishes to GitHub Pages

## 📞 Support

If you encounter issues:

1. Check the [GitHub Actions logs](https://github.com/mira-iitjmu/the-registry/actions)
2. Review the [Quarto documentation](https://quarto.org/)
3. Open an issue in the repository
4. Contact the MIRA Research Team

## 🌐 Live Site

Once deployed, your site will be available at:
**https://mira-iitjmu.github.io/the-registry/**
