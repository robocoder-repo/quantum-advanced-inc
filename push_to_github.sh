#!/bin/bash

# Check if a URL was provided
if [ -z "$1" ]
then
    echo "Please provide the GitHub repository URL as an argument."
    echo "Usage: ./push_to_github.sh <GITHUB_REPO_URL>"
    exit 1
fi

# Add the remote repository
git remote add origin $1

# Set the branch to main
git branch -M main

# Push to GitHub
git push -u origin main

echo "Pushed to GitHub successfully!"
