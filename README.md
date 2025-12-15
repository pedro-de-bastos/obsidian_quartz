# Obsidian Quartz 4.0 Setup

This repository is set up to publish your Obsidian notes using [Quartz 4.0](https://quartz.jzhao.xyz/) and GitHub Pages.

## 🚀 Getting Started

### 1. Add your Obsidian Content
Copy your Obsidian vault contents (markdown files, images, etc.) into the `content/` folder of this repository.

> **Tip:** You can set the `content` folder as your Obsidian Vault directly to edit files in place.

### 2. Preview Locally
To preview your site locally before publishing:
```bash
npx quartz build --serve
```
Open `http://localhost:8080` in your browser.

### 3. Deploy to GitHub Pages
Deployment is automated via GitHub Actions.

1.  **Commit and Push**:
    ```bash
    git add .
    git commit -m "Add my notes"
    git push origin v4
    ```
2.  **Enable GitHub Pages**:
    *   Go to your repository **Settings** on GitHub.
    *   Go to **Pages**.
    *   Under **Build and deployment**, set **Source** to **GitHub Actions**.

### 4. Configuration
Edit `quartz.config.ts` to customize:
*   `pageTitle`: The title of your site.
*   `theme`: Colors and fonts.
*   `plugins`: Enable/disable features.

## ⚠️ Important Note
This repository was initialized with a fresh Git history. You need to link it to your GitHub repository:
```bash
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin v4
```

## Requirements
*   Node.js v20+ (v22 recommended)
*   npm v10+
