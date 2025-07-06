# Resume

A clean, professional resume template built with [Typst](https://typst.app/), a modern markup-based typesetting system. This template generates a polished PDF resume from structured content.

## 📋 Overview

This project contains a customizable resume template that uses Typst's powerful typesetting capabilities to create a professional-looking resume. The template separates content from formatting, making it easy to update information while maintaining consistent styling.

## 📁 Project Structure

```
.
├── main.typ          # Main resume content
├── template.typ      # Resume template and styling functions
├── main.pdf          # Generated PDF output
└── README.md         # This file
```

## ✨ Features

- **Clean, Professional Design**: Modern layout with consistent typography
- **Modular Structure**: Separate template file for easy customization
- **Structured Content**: Organized sections for skills, experience, projects, education, and certifications
- **Responsive Layout**: Optimized for A4 paper size with proper margins
- **Hyperlinks**: Clickable links for email, phone, LinkedIn, GitHub, and project URLs
- **Easy Customization**: Simple functions for adding different types of content

## 🚀 Quick Start

### Prerequisites

- [Typst](https://typst.app/) installed on your system
- Or use the [Typst web app](https://typst.app/app)

### Local Setup

1. **Clone or download** this repository
2. **Edit content** in `main.typ` with your information
3. **Compile to PDF**:
   ```bash
   typst compile main.typ
   ```
4. **Watch for changes** (auto-recompile):
   ```bash
   typst watch main.typ
   ```

### Web App Usage

1. Upload `main.typ` and `template.typ` to the Typst web app
2. Edit `main.typ` with your information
3. Download the generated PDF

## 📄 Output

The template generates a professional PDF resume with:

- **A4 format** with 0.25-inch margins
- **Clean typography** with proper hierarchy
- **Clickable links** for contact information and projects
- **Consistent formatting** across all sections

## 🛠️ Development

### File Structure

- **`main.typ`**: Contains your personal information and resume content
- **`template.typ`**: Defines the resume layout, styling, and helper functions
- **`main.pdf`**: The compiled PDF output

### Adding New Sections

1. Create a new helper function in `template.typ`
2. Use the function in `main.typ` with your content
3. Recompile to see changes

## 📋 Requirements

- Typst compiler or access to Typst web app
- Basic knowledge of Typst syntax for content editing

## 🤝 Contributing

Feel free to:

- Submit issues for bugs or feature requests
- Propose improvements to the template design
- Share additional helper functions or styling options

## 📄 License

This template is open source and available for personal and professional use.

---

**Built with ❤️ using [Typst](https://typst.app/)**
