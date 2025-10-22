# Deployment Guide

This guide explains how to deploy the MIRA Resource Catalog website to GitHub Pages using Quarto's built-in publishing command.

[![Live Website](https://img.shields.io/badge/Website-Live-brightgreen)](https://mira-iitjmu.github.io/the-registry/)
[![GitHub Pages](https://img.shields.io/badge/Deployed%20on-GitHub%20Pages-blue)](https://pages.github.com/)

## 🚀 Quick Deployment

The website can be deployed with a single command using Quarto's built-in `publish` functionality.

### One-Command Deployment:

```bash
quarto publish gh-pages
```

That's it! The command will:
- ✅ Build the website
- ✅ Create/update the `gh-pages` branch
- ✅ Deploy to GitHub Pages
- ✅ Configure everything automatically

### Complete Workflow:

1. **Make your changes** to the website files
2. **Commit your changes**:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```

3. **Deploy to GitHub Pages**:
   ```bash
   quarto publish gh-pages
   ```

4. **Access your site**:
   - 🌐 **Live URL**: [https://mira-iitjmu.github.io/the-registry/](https://mira-iitjmu.github.io/the-registry/)
   - ⏱️ **Deployment time**: Usually 2-3 minutes
   - 🔄 **Auto-updates**: Every time you run the publish command

## 🔧 Development Workflow

### Local Development:

```bash
# Preview the website locally (recommended for development)
quarto preview

# Build the website for testing
quarto render

# Use the build script for automated building
./scripts/build.sh
```

### GitHub Pages Setup (One-time):

1. Go to repository **Settings** → **Pages**
2. Under **Source**, select **Deploy from a branch**
3. Select **gh-pages** branch and **/ (root)** folder
4. Save the settings

**Note**: This is only needed once. After the initial setup, `quarto publish gh-pages` handles everything automatically.

## 📋 Deployment Checklist

Before deploying, ensure:

- [ ] All changes are committed to the `main` branch
- [ ] Quarto files (`.qmd`) have valid syntax
- [ ] All referenced files exist and are accessible
- [ ] Images and assets are properly linked
- [ ] No broken links in the content

### Pre-deployment Testing:

```bash
# Check Quarto configuration
quarto check

# Test local build
quarto render

# Preview locally
quarto preview
```

## 🛠️ Troubleshooting

### Common Issues:

1. **Build Failures**:
   - Check for syntax errors in `.qmd` files
   - Ensure all referenced files exist
   - Verify Quarto configuration in `_quarto.yml`
   - Check for missing dependencies

2. **Site Not Updating**:
   - Verify GitHub Pages settings are correct
   - Ensure `gh-pages` branch exists and is up to date
   - Wait a few minutes for GitHub Pages to propagate changes
   - Clear browser cache and try again

3. **Missing Content**:
   - Ensure all files are committed to the repository
   - Check that paths in navigation are correct
   - Verify file permissions and case sensitivity
   - Check for typos in file names and paths

4. **Deployment Issues**:
   - Ensure you have push permissions to the repository
   - Check if the `gh-pages` branch exists
   - Verify Quarto is properly installed
   - Check for network connectivity issues

### Debug Commands:

```bash
# Check Quarto installation and configuration
quarto check

# Test local build with debug info
quarto render --debug

# Preview locally with verbose output
quarto preview --debug

# Check for broken links
quarto render --validate-links

# Verify GitHub Pages branch
git branch -a | grep gh-pages
```

### Getting Help:

If you encounter issues:

1. **Check the logs**: Look for error messages in the terminal output
2. **Verify setup**: Ensure GitHub Pages is properly configured
3. **Test locally**: Use `quarto preview` to test changes before deploying
4. **Check documentation**: Review [Quarto documentation](https://quarto.org/)
5. **Open an issue**: Create an issue in the repository with error details

## 📝 Configuration

### GitHub Pages Settings:

- **Repository**: `mira-iitjmu/the-registry`
- **Source Branch**: `gh-pages` (auto-managed by Quarto)
- **Source Folder**: `/ (root)`
- **Custom Domain**: (Optional)

### Quarto Configuration:

The site is configured in `_quarto.yml`:
- **Output Directory**: `_site`
- **Theme**: Cosmo (Bootswatch)
- **GitHub Integration**: Enabled
- **Search**: Enabled
- **Navigation**: Docked sidebar

## 🔄 Deployment Process

The `quarto publish gh-pages` command automatically:

1. **🔨 Render**: Builds the website using Quarto
2. **🌿 Create Branch**: Creates or updates the `gh-pages` branch
3. **🚀 Deploy**: Pushes the built site to GitHub Pages
4. **⚙️ Configure**: Sets up the necessary GitHub Pages configuration
5. **✅ Verify**: Ensures the deployment is successful

## 🎯 Best Practices

### Development:
- Use `quarto preview` for local development
- Test changes locally before deploying
- Commit changes to `main` branch before publishing

### Deployment:
- Run `quarto publish gh-pages` after making changes
- Check the live site after deployment
- Monitor for any issues or broken links

### Maintenance:
- Regularly update dependencies
- Keep content fresh and relevant
- Monitor site performance and accessibility

## 📞 Support & Resources

### Documentation:
- [Quarto Documentation](https://quarto.org/)
- [GitHub Pages Documentation](https://pages.github.com/)
- [Bootswatch Themes](https://bootswatch.com/)

### Getting Help:
- **Repository Issues**: [GitHub Issues](https://github.com/mira-iitjmu/the-registry/issues)
- **Quarto Community**: [Quarto Discussions](https://github.com/quarto-dev/quarto-cli/discussions)
- **MIRA Research Team**: Contact for project-specific questions

## 🌐 Live Site

**🔗 Website URL**: [https://mira-iitjmu.github.io/the-registry/](https://mira-iitjmu.github.io/the-registry/)

The website is automatically updated whenever you run `quarto publish gh-pages`. Changes typically appear within 2-3 minutes of deployment.
