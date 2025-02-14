 # Git

## Introduction
Git is a distributed version control system that allows multiple people to work on a project simultaneously without overwriting each other's changes. It helps in tracking changes, coordinating work, and maintaining the history of the project.

## Installation
To install Git, follow the instructions for your operating system:

- **Windows**: Download and install Git from git-scm.com.

## Configuration
Before using Git, it's important to configure your user information. This information will be used in your commits.

### Set Your Username
```sh
git config --global user.name "Your Name"
```

### Set Your Email
```sh
git config --global user.email "your.email@example.com"
```

### Check Your Configuration
To verify your configuration settings, use:
```sh
git config --list
```

## Basic Git Operations

### 1. Initialize a Repository
To start a new Git repository, navigate to your project directory and run:
```sh
git init
```

### 2. Clone a Repository
To clone an existing repository, use:
```sh
git clone <repository-url>
```

### 3. Check Repository Status
To check the status of your repository, use:
```sh
git status
```

### 4. Add Files to Staging Area
To add files to the staging area, use:
```sh
git add <file-name>
```
To add all files, use:
```sh
git add .
```

### 5. Commit Changes
To commit changes with a message, use:
```sh
git commit -m "Your commit message"
```

### 6. View Commit History
To view the commit history, use:
```sh
git log
```

### 7. Create a New Branch
To create a new branch, use:
```sh
git branch <branch-name>
```

### 8. Switch to a Branch
To switch to a different branch, use:
```sh
git checkout <branch-name>
```

### 9. Merge Branches
To merge a branch into the current branch, use:
```sh
git merge <branch-name>
```

### 10. Push Changes to Remote Repository
To push changes to a remote repository, use:
```sh
git push origin <branch-name>
```

### 11. Pull Changes from Remote Repository
To pull changes from a remote repository, use:
```sh
git pull origin <branch-name>
```