# GitHub Setup Guide

Your local Git repository has been initialized and is ready to connect to GitHub.

## Steps to Connect to GitHub

### 1. Create a GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Enter a repository name (e.g., `tonkatsu-injeong` or `ij-restaurant`)
5. Choose Public or Private
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

### 2. Connect Your Local Repository to GitHub

After creating the repository, GitHub will show you commands. Use these commands in your terminal:

```bash
# Add the remote repository (replace YOUR_USERNAME and REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Verify the remote was added
git remote -v

# Push your code to GitHub
git push -u origin main
```

### 3. Alternative: Using SSH (if you have SSH keys set up)

```bash
git remote add origin git@github.com:YOUR_USERNAME/REPO_NAME.git
git push -u origin main
```

## Current Repository Status

- ✅ Git repository initialized
- ✅ .gitignore file created
- ✅ Initial commit completed
- ✅ README.md added
- ✅ Branch set to 'main'

## Next Steps After Connecting

Once connected, you can:

- **Push changes**: `git push`
- **Pull changes**: `git pull`
- **Check status**: `git status`
- **View commits**: `git log`

## Useful Git Commands

```bash
# Check repository status
git status

# Add files to staging
git add .
git add specific-file.php

# Commit changes
git commit -m "Your commit message"

# Push to GitHub
git push

# Pull from GitHub
git pull

# View commit history
git log --oneline

# Create a new branch
git checkout -b feature-branch-name

# Switch branches
git checkout main
```

