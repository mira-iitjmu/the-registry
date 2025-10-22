# MIRA Data Catalog

A comprehensive catalog of AI/ML datasets and resources curated by the MIRA Research Team at IIT Jammu.

## 🚀 Features

- **📊 Dataset Catalog**: Curated collection of datasets for AI/ML research
- **🌐 Interactive Website**: Built with Quarto and Bootswatch LUX theme
- **🔍 Dataset Previews**: Integrated Hugging Face dataset viewer
- **📝 Blog System**: Support for Jupyter notebook blog posts
- **🏗️ Architecture Categories**: Organized by model types and applications

## 📁 Project Structure

```
├── datasets/           # Dataset catalog
│   ├── indic/         # Indic language datasets
│   ├── benchmarks/    # Benchmark datasets
│   ├── specialized/   # Specialized domain datasets
│   └── web/          # Web-crawled datasets
├── architectures/     # Model architecture categories
├── posts/            # Blog posts and notebooks
├── assets/           # Images and static files
└── _quarto.yml       # Quarto configuration
```

## 🛠️ Setup and Development

### Prerequisites

- [Quarto](https://quarto.org/) - For building the website
- [Python](https://python.org/) - For Jupyter notebook support
- [Git](https://git-scm.com/) - For version control

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/mira-iitjmu/the-registry.git
   cd the-registry
   ```

2. **Set up Python environment** (optional, for Jupyter notebooks):
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   pip install jupyter pandas matplotlib plotly
   ```

3. **Preview the website**:
   ```bash
   quarto preview
   ```

4. **Build the website**:
   ```bash
   quarto render
   ```

## 📖 Usage

### Adding New Datasets

1. Create a new `.qmd` file in the appropriate dataset category
2. Include YAML frontmatter with metadata:
   ```yaml
   ---
   title: "Dataset Name"
   categories: [category1, category2]
   thumbnail: /assets/thumbs/placeholder.png
   ---
   ```
3. Add dataset description and Hugging Face viewer link
4. Commit and push changes

### Adding Blog Posts

1. Create a new directory in `posts/`
2. Add either:
   - A `.qmd` file for markdown posts
   - A `.ipynb` file for Jupyter notebook posts
3. Include metadata in the file

### Dataset Preview Integration

The catalog uses Hugging Face's built-in dataset viewer for interactive previews:

```markdown
**🔗 [View Dataset on Hugging Face](https://huggingface.co/datasets/dataset-name)**
```

## 🎨 Customization

### Theme

The website uses the Bootswatch LUX theme. To change themes, modify `_quarto.yml`:

```yaml
format:
  html:
    theme: lux  # Change to: cosmo, flatly, etc.
```

### Navigation

Update the sidebar navigation in `_quarto.yml`:

```yaml
website:
  sidebar:
    contents:
      - text: "Section Name"
        href: path/to/section.qmd
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Commit with descriptive messages
5. Push to your fork
6. Create a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- **MIRA Research Team** - IIT Jammu
- **Contributors** - See [CONTRIBUTORS.md](CONTRIBUTORS.md)

## 📞 Contact

For questions or suggestions, please:
- Open an issue on GitHub
- Contact the MIRA Research Team
- Visit our [website](https://mira-iitjmu.github.io/the-registry)

## 🔗 Links

- **Live Website**: [https://mira-iitjmu.github.io/the-registry](https://mira-iitjmu.github.io/the-registry)
- **GitHub Repository**: [https://github.com/mira-iitjmu/the-registry](https://github.com/mira-iitjmu/the-registry)
- **MIRA Research**: [IIT Jammu](https://iitjammu.ac.in/)
