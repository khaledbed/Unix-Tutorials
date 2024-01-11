#!/bin/bash
# Comprehensive Git Version Control Tutorial

# Step 1: Introduction to Version Control with Git
echo "Step 1: Introduction to Version Control with Git"
echo "-------------------------------------------------------------"
echo "Welcome to the Comprehensive Git Version Control Tutorial!"
echo "In this tutorial, we'll cover advanced topics in Git version control."
echo "Let's explore the powerful features of Git for source code management."
echo "-------------------------------------------------------------"

# Step 2: Setting Up Git
echo "Step 2: Setting Up Git"
echo "-------------------------------------------------------------"
echo "1. Install Git on your system:"
# Provide instructions based on the user's operating system
echo "-------------------------------------------------------------"
echo "2. Configure Git with your name and email:"
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
echo "-------------------------------------------------------------"

# Step 3: Creating and Initializing a Repository
echo "Step 3: Creating and Initializing a Repository"
echo "-------------------------------------------------------------"
echo "3. Create a new directory for your project:"
mkdir my_project
cd my_project
echo "-------------------------------------------------------------"
echo "4. Initialize a Git repository in the project directory:"
git init
echo "-------------------------------------------------------------"

# Step 4: Basic Git Commands
echo "Step 4: Basic Git Commands"
echo "-------------------------------------------------------------"
echo "5. Stage changes for commit:"
git add .
echo "-------------------------------------------------------------"
echo "6. Commit changes with a descriptive message:"
git commit -m "Initial commit"
echo "-------------------------------------------------------------"
echo "7. View the commit history:"
git log
echo "-------------------------------------------------------------"
echo "8. Check the status of your working directory:"
git status
echo "-------------------------------------------------------------"

# Step 5: Branching and Merging
echo "Step 5: Branching and Merging"
echo "-------------------------------------------------------------"
echo "9. Create a new branch for feature development:"
git branch feature_branch
echo "-------------------------------------------------------------"
echo "10. Switch to the feature branch:"
git checkout feature_branch
echo "-------------------------------------------------------------"
echo "11. Make changes and commit in the feature branch:"
# Make changes to files
git add .
git commit -m "Implement feature"
echo "-------------------------------------------------------------"
echo "12. Switch back to the main branch:"
git checkout main
echo "-------------------------------------------------------------"
echo "13. Merge the feature branch into the main branch:"
git merge feature_branch
echo "-------------------------------------------------------------"
echo "14. Delete the feature branch after merging:"
git branch -d feature_branch
echo "-------------------------------------------------------------"

# Step 6: Remote Repositories and Collaboration
echo "Step 6: Remote Repositories and Collaboration"
echo "-------------------------------------------------------------"
echo "15. Create a new remote repository on a Git hosting service (e.g., GitHub):"
# Provide instructions for creating a repository on the hosting service
echo "-------------------------------------------------------------"
echo "16. Connect your local repository to the remote repository:"
git remote add origin <remote_repository_url>
git push -u origin main
echo "-------------------------------------------------------------"
echo "17. Clone a repository from a remote server:"
git clone <remote_repository_url>
echo "-------------------------------------------------------------"
echo "18. Fetch changes from the remote repository:"
git fetch origin
echo "-------------------------------------------------------------"
echo "19. Pull changes from the remote repository into your local branch:"
git pull origin main
echo "-------------------------------------------------------------"
echo "20. Push changes to the remote repository:"
git push origin main
echo "-------------------------------------------------------------"

# Step 7: Advanced Git Operations
echo "Step 7: Advanced Git Operations"
echo "-------------------------------------------------------------"
echo "21. Cherry-pick specific commits into a branch:"
git cherry-pick <commit_hash>
echo "-------------------------------------------------------------"
echo "22. Amend the last commit with additional changes:"
git commit --amend
echo "-------------------------------------------------------------"
echo "23. Stash changes temporarily for later use:"
git stash
echo "-------------------------------------------------------------"
echo "24. Apply stashed changes back to the working directory:"
git stash apply
echo "-------------------------------------------------------------"
echo "25. View differences between branches or commits:"
git diff <branch_or_commit_1> <branch_or_commit_2>
echo "-------------------------------------------------------------"
echo "26. Create and apply patches for selective changes:"
git format-patch -1 <commit_hash>
git apply < patch_file
echo "-------------------------------------------------------------"

# Step 8: Git Hooks and Customization
echo "Step 8: Git Hooks and Customization"
echo "-------------------------------------------------------------"
echo "27. Use pre-commit hooks for code linting and formatting:"
# Create a pre-commit hook script
echo "-------------------------------------------------------------"
echo "28. Configure Git aliases for custom commands:"
git config --global alias.co checkout
echo "-------------------------------------------------------------"
echo "29. Use Git configuration options for customization:"
# Edit global or repository-specific Git configuration
echo "-------------------------------------------------------------"

# Step 9: Git Workflows and Strategies
echo "Step 9: Git Workflows and Strategies"
echo "-------------------------------------------------------------"
echo "30. Explore popular Git workflows (e.g., GitFlow, GitHub Flow):"
# Briefly explain different workflows and their advantages
echo "-------------------------------------------------------------"
echo "31. Rebase changes to maintain a clean commit history:"
git rebase -i <base_commit>
echo "-------------------------------------------------------------"
echo "32. Resolve merge conflicts during a rebase or merge:"
# Demonstrate conflict resolution steps
echo "-------------------------------------------------------------"

# Step 10: Git Tips and Tricks
echo "Step 10: Git Tips and Tricks"
echo "-------------------------------------------------------------"
echo "33. Use Git bisect for binary search to find a bug:"
git bisect start
git bisect bad <commit_hash>
git bisect good <commit_hash>
echo "-------------------------------------------------------------"
echo "34. View a Git log as a graph with branch and merge history:"
git log --graph --oneline --all
echo "-------------------------------------------------------------"
echo "35. View a file's history and changes over time:"
git log -p file.txt
echo "-------------------------------------------------------------"
echo "36. Use Git reflog to recover lost commits or branches:"
git reflog
echo "-------------------------------------------------------------"

# End of Tutorial
echo "End of Tutorial"
