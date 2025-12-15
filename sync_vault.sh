#!/bin/bash

# Configuration
VAULT_PATH="/Users/pedromartinsdebastos/Documents/Palaneum"
QUARTZ_CONTENT="./content"

# Ensure we are in the project root
cd "$(dirname "$0")"

echo "🔄 Syncing Obsidian vault to Quartz content..."

# Handle the symlink case (remove it so we can copy files)
if [ -L "$QUARTZ_CONTENT" ]; then
    echo "⚠️  Removing symlink to replace with actual files..."
    rm "$QUARTZ_CONTENT"
    mkdir -p "$QUARTZ_CONTENT"
fi

# Use rsync to copy files
# --delete: removes files in content that were deleted in vault
# --exclude: skips hidden observatory config
rsync -av --delete \
    --exclude '.git' \
    --exclude '.obsidian' \
    --exclude '.trash' \
    --exclude '.DS_Store' \
    "$VAULT_PATH/" "$QUARTZ_CONTENT/"

echo "✅ Sync complete!"
echo "Now you can run:"
echo "  git add ."
echo "  git commit -m 'Update content'"
echo "  git push origin v4"
