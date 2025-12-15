# Obsidian Quartz 4.0 Setup

This repository is set up to publish your Obsidian notes using [Quartz 4.0](https://quartz.jzhao.xyz/) and GitHub Pages.

## 🚀 Getting Started

### 1. Sync your Obsidian Vault
Because GitHub Pages cannot access files on your local computer, we need to copy them into the repository.

I have created a script `sync_vault.sh` to do this for you.

**To Update Your Site:**
1.  Run the sync script:
    ```bash
    ./sync_vault.sh
    ```
2.  Commit and push:
    ```bash
    git add .
    git commit -m "Update notes"
    git push origin v4
    ```

> **Note:** The script uses `rsync` to mirror your vault to the `content/` folder, excluding private folders like `.obsidian`.

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
