# docker-three-project

To save your Dockerfile and README file on a GitHub repository from an EC2 instance,
you can follow these steps. This guide will walk you through creating a new repository,
adding your files, and pushing the changes to GitHub.

Prerequisites
You need to have Git installed on your EC2 instance.
You should have a GitHub account.
You need to create a GitHub repository (you can do this from the GitHub website).


Steps to Push Dockerfile and README to GitHub from EC2

1. Install Git on EC2 (if not already installed):

` sudo apt-get update          # For Ubuntu/Debian
  sudo apt-get install git     # For Ubuntu/Debian `

` sudo yum update              # For Amazon Linux/CentOS
  sudo yum install git         # For Amazon Linux/CentOS `

2. Configure Git with your GitHub credentials: Replace your_name and your_email with your GitHub name and email.

` git config --global user.name "your_name"
git config --global user.email "your_email@example.com" `



3. Clone the GitHub repository to your EC2 instance: Replace your_github_username and your_repository_name with your GitHub username and repository name.


`  git clone https://github.com/your_github_username/your_repository_name.git  `


This will create a directory with the name of your repository.

4. Navigate to the repository directory:
`  cd your_repository_name  `

5. Copy or create your Dockerfile and README.md in this directory: You can use any text editor to create or edit these files. If you already have them, copy them into this directory.


6. Check the status of your repository: This will show you which files are being tracked, which have been modified, and which are new.

`  git status  `

7. Add the Dockerfile and README.md to the staging area:

` git add Dockerfile README.md `

8. Commit the changes with a message: Replace "Added Dockerfile and README" with a meaningful commit message.

` git commit -m "Added Dockerfile and README" `

9. Push the changes to the GitHub repository:
` git push origin main `

Replace main with your branch name if your repository uses a different branch (e.g., master, development).


Additional Steps: Merging Branches (if needed)

If you need to merge branches, you can do so as follows:

1. Check out the branch you want to merge into (e.g., main):
` git checkout main `

2. Merge another branch into main: Replace feature-branch with the branch you want to merge.
` git merge feature-branch `

3. Push the merged changes to GitHub:
` git push origin main `

Example Commands
To summarize, here is the sequence of commands you might use:

`
# Install Git (if not installed)
sudo apt-get update
sudo apt-get install git

# Configure Git
git config --global user.name "your_name"
git config --global user.email "your_email@example.com"

# Clone the GitHub repository
git clone https://github.com/your_github_username/your_repository_name.git

# Navigate to the repository
cd your_repository_name

# Copy or create your files
cp /path/to/your/Dockerfile .
cp /path/to/your/README.md .

# Check the status
git status

# Stage the files
git add Dockerfile README.md

# Commit the changes
git commit -m "Added Dockerfile and README"

# Push to GitHub
git push origin main

`
