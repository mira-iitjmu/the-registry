# Deployment Guide

This guide explains how to deploy the MIRA Resource Catalog website to GitHub Pages using Quarto's built-in publishing command.

## 🚀 Simple Deployment with Quarto CLI

The website can be deployed directly using Quarto's built-in `publish` command.

### How it works:

1. **Quarto Publish**: Uses `quarto publish gh-pages` to build and deploy
2. **Automatic Setup**: Creates and manages the `gh-pages` branch automatically
3. **GitHub Pages**: Publishes directly to GitHub Pages

### Steps to deploy:

1. **Make your changes** to the website files
2. **Commit your changes**:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```

3. **Publish to GitHub Pages**:
   ```bash
   quarto publish gh-pages
   ```

4. **Access your site**:
   - The site will be available at `https://mira-iitjmu.github.io/the-registry/`
   - GitHub Pages deployments take a few minutes to become visible

## 🔧 Manual Build and Preview

For local development and testing:

### Local Build:

```bash
# Build the website
./scripts/build.sh

# Or manually:
quarto render
```

### Local Preview:

```bash
# Preview the website locally
quarto preview
```

### GitHub Pages Setup:

1. Go to repository **Settings** → **Pages**
2. Under **Source**, select **Deploy from a branch**
3. Select **gh-pages** branch and **/ (root)** folder
4. Save the settings

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

## 🔄 Deployment Process

The `quarto publish gh-pages` command does the following:

1. **Render**: Builds the website using Quarto
2. **Create Branch**: Creates or updates the `gh-pages` branch
3. **Deploy**: Pushes the built site to GitHub Pages
4. **Configure**: Sets up the necessary GitHub Pages configuration

## 📞 Support

If you encounter issues:

1. Check the [GitHub Actions logs](https://github.com/mira-iitjmu/the-registry/actions)
2. Review the [Quarto documentation](https://quarto.org/)
3. Open an issue in the repository
4. Contact the MIRA Research Team

## 🌐 Live Site

Once deployed, your site will be available at:
**https://mira-iitjmu.github.io/the-registry/**
