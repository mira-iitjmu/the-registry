# MIRA Resource Catalog

A comprehensive catalog of AI/ML datasets, architectures, and resources curated by the MIRA Research Team at IIT Jammu.

[![Live Website](https://img.shields.io/badge/Website-Live-brightgreen)](https://mira-iitjmu.github.io/the-registry/)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue)](https://github.com/mira-iitjmu/the-registry)
[![Quarto](https://img.shields.io/badge/Built%20with-Quarto-9cf)](https://quarto.org/)

## 🌟 Features

- **📊 Dataset Catalog**: Curated collection of datasets for AI/ML research
- **🏗️ Architecture Library**: Comprehensive model architecture documentation
- **🌐 Interactive Website**: Built with Quarto and Bootswatch Cosmo theme
- **🔍 Dataset Previews**: Integrated Hugging Face dataset viewer
- **📝 Blog System**: Support for Jupyter notebook blog posts
- **🚀 Easy Deployment**: One-command publishing to GitHub Pages
- **📱 Responsive Design**: Works seamlessly on all devices

## 📁 Project Structure

```
├── datasets/                    # Dataset catalog
│   ├── indic/                  # Indic language datasets (7 datasets)
│   ├── benchmarks/             # Benchmark datasets
│   ├── specialized/            # Specialized domain datasets
│   └── web/                    # Web-crawled datasets
├── architectures/              # Model architecture categories
│   ├── language-models/        # Language model architectures
│   ├── multimodal/             # Multimodal architectures
│   └── specialized/            # Specialized architectures
├── posts/                      # Blog posts and notebooks
├── assets/                     # Images and static files
├── scripts/                    # Build and development scripts
├── _quarto.yml                 # Quarto configuration
├── DEPLOYMENT.md               # Deployment documentation
└── README.md                   # This file
```

## 🎯 Current Content

### Datasets (7+ datasets)
- **Indic Languages**: AI4Bharat datasets for Indian languages
- **Benchmarks**: Standard evaluation datasets
- **Specialized**: Domain-specific datasets
- **Web**: Large-scale web-crawled datasets

### Architectures
- **Language Models**: Encoder-only, decoder-only, encoder-decoder
- **Multimodal**: Vision-language, audio-visual, cross-modal
- **Specialized**: RAG, domain-specific applications

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

5. **Deploy to GitHub Pages**:
   ```bash
   quarto publish gh-pages
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
