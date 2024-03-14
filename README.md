<div align="center">
  
# [GoDot.](https://github.com/BrenoFariasdaSilva/GoDot) <img src="https://github.com/BrenoFariasdaSilva/GoDot/blob/main/.assets/Icons/GoDot.svg"  width="3%" height="3%">

</div>

<div align="center">
  
---

Welcome to my GoDot Repository!
This repository is dedicated to showcasing my journey through game development using the powerful and open-source Godot Engine. Here, you'll find a collection of both 2D and 3D games, each stored in its own subdirectory and numerically ordered by creation date for easy navigation.
  
---

</div>

<div align="center">

![GitHub Code Size in Bytes Badge](https://img.shields.io/github/languages/code-size/BrenoFariasdaSilva/GoDot)
![GitHub Last Commit Badge](https://img.shields.io/github/last-commit/BrenoFariasdaSilva/GoDot)
![GitHub forks](https://img.shields.io/github/forks/BrenoFariasdaSilva/GoDot)
![GitHub language count](https://img.shields.io/github/languages/count/BrenoFariasdaSilva/GoDot)
![GitHub License Badge](https://img.shields.io/github/license/BrenoFariasdaSilva/GoDot)
![Wakatime Badge](https://wakatime.com/badge/github/BrenoFariasdaSilva/GoDot.svg)

</div>

<div align="center">
  
![RepoBeats Statistics](https://repobeats.axiom.co/api/embed/3c3d7b46b9dea4697afbab06ed9a9afbbf3f52be.svg "Repobeats analytics image")

</div>

## Table of Contents
- [GoDot. ](#godot-)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Requirements](#requirements)
  - [Setup](#setup)
    - [Clone the repository](#clone-the-repository)
    - [GoDot Installation](#godot-installation)
  - [Usage](#usage)
  - [Contributing](#contributing)
    - [Step 1: Set Up Your Environment](#step-1-set-up-your-environment)
    - [Step 2: Make Your Changes](#step-2-make-your-changes)
    - [Crafting Your Commit Messages](#crafting-your-commit-messages)
    - [Navigating Commits](#navigating-commits)
    - [Step 3: Submit Your Contribution](#step-3-submit-your-contribution)
    - [Step 4: Stay Engaged](#step-4-stay-engaged)
    - [Step 5: Celebrate Your Contribution](#step-5-celebrate-your-contribution)
  - [License](#license)
    - [Apache License 2.0](#apache-license-20)

## Introduction

Welcome to GoDot, a curated collection of my game development endeavors using the Godot Engine. This repository serves as a living portfolio, featuring a diverse array of games, experiments, and prototypes that I've developed. Ranging from simple 2D puzzles to complex 3D adventures, each game represents a step in my ongoing journey to master the art and science of game development.

## Requirements

- **Godot Engine**: Most recent stable version recommended. The games are developed with various versions, so the latest provides the best backward compatibility.
- **Git**: For cloning and managing contributions to the repository.
- **Basic Knowledge of Godot**: Familiarity with Godot's interface and scripting language (GDScript) will help you understand and run the projects.
- **A Compatible Device**: A computer capable of running the Godot Engine and the projects within this repository.

## Setup

### Clone the repository

1. Clone the repository with the following command:

```bash
git clone https://github.com/BrenoFariasdaSilva/GoDot.git
cd GoDot
```

### GoDot Installation

1. Install the project dependencies with the following command:

```bash
make install
```

This will install the Godot Engine and any other dependencies required to run the projects in this repository.

## Usage

In order to run the project, you must open the GoDot GUI and import the desired directory of this repository. Then, you can run the project by clicking the play button.

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**. If you have suggestions for improving the code, your insights will be highly welcome. Please follow these guidelines to make your contributions smooth and effective:

### Step 1: Set Up Your Environment

Before you can contribute, you need to set up your development environment. This steps are already explained in the [Setup](#setup) section.

### Step 2: Make Your Changes

Now that your environment is set up, you're ready to start making changes. It's a good idea to start with a clear goal in mind. Are you fixing a bug, adding a feature, or improving documentation?

1. **Create a Branch**: Before diving into code changes, start by creating a new branch for your updates. This strategy helps keep your modifications neatly organized and distinct from the main project line, facilitating a smoother integration and review process later on. Choose a branch name that is both descriptive and reflective of the changes you're proposing.
    ```sh
    git checkout -b feature/AmazingFeature
    ```

2. **Make Your Changes**: With your branch ready, you can now focus on implementing your proposed changes, be it additions, modifications, or fixes. Here are some key points to keep in mind during this stage:
   
   - **Test Thoroughly**: Ensure your changes work as intended and don't introduce new problems. Adequate testing is crucial for maintaining the integrity and reliability of the project.
   
   - **Commit Wisely**: Large changes can make the review process daunting. Aim to break down big updates into smaller, more manageable commits. This approach not only eases the review process but also keeps the project history clear and understandable.
   
   - **Follow Standards**: Adhere to the project's coding conventions and standards. Consistency in coding practices ensures code readability and eases maintenance for all contributors. If you want to know a great commit standards, read the convention below, which is very similar to the [Conventional Commits](http://conventionalcommits.org) specification.

### Crafting Your Commit Messages

Your commit messages play a vital role in documenting the project's development history. They should be clear, concise, and informative. Here are some common types of commits and how to format their messages effectively:

   - **Features**: Introducing new features.
     ```
     FEAT: Add <FeatureName>
     ```
   
   - **Bug Fixes**: Resolving issues or errors.
     ```
     FIX: Resolve <IssueDescription>. Closes #<IssueNumber>
     ```
   
   - **Documentation**: Updating or adding to the documentation, including both code comments and README files.
     ```
     DOCS: Update <Section/Topic> documentation
     ```
   
   - **Refactor**: Enhancing the code without changing its functionality, usually for readability, efficiency, or structure improvements.
     ```
     REFACTOR: Enhance <Component> for better <Aspect>
     ```
   
   - **Snapshot**: Temporarily saving the current state of the project. Useful for marking specific points in development or experimentation and save it into git instead of simply using your IDE Stash feature, which is not visible to others and can be lost if not properly managed.
     ```
     SNAPSHOT: Temporary commit to save the current state for later reference
     ```

### Navigating Commits

If you need to revert to a previous state after making a snapshot or any commit, you can use the following commands:

- To undo the last commit and return your workspace to the state just before that commit (keeping your changes in the working directory):
    ```sh
    git reset --soft HEAD^
    ```
- To completely remove the last commit, including all changes (use with caution):
    ```sh
    git reset --hard HEAD^
    ```

These commands are invaluable for refining your contributions, allowing you to adjust your approach before finalizing your commit.

By following these guidelines for your commits, you help ensure that your contributions are easily integrated and appreciated by the project team and community.

3. **Commit Your Changes**: After making sure your changes are thorough and well-organized, commit them to your branch. Use clear and concise commit messages that accurately describe the changes you've made and their impact on the project.
    ```sh
    git commit -m "FEAT: Add some AmazingFeature"
    ```
Remember, the quality of your commits and their messages significantly affects the review process and the overall development flow. It's always worth taking the extra time to review your changes and craft meaningful commit messages.

### Step 3: Submit Your Contribution

After making your changes, you're ready to contribute them back to the original project.

1. **Push to GitHub**: Push your changes to your fork on GitHub.
    ```sh
    git push origin feature/AmazingFeature
    ```
2. **Open a Pull Request**: Go to the original repository on GitHub, and you should see a prompt to open a pull request from your new branch. Click the "Compare & pull request" button to begin the process.
3. **Describe Your Changes**: Provide a title and detailed description of your changes in the pull request. Explain the rationale behind your changes, any issues they address, and any testing you've performed.
4. **Submit the Pull Request**: Submit your pull request. The project maintainers will then review your contribution. Be open to feedback and ready to make further tweaks or improvements based on their suggestions.

### Step 4: Stay Engaged

After submitting your pull request, stay engaged in the conversation. The project maintainers may have questions or request changes before your contribution can be merged.

- **Respond to Feedback**: Be responsive to comments and feedback from the project's maintainers. If changes are requested, make them promptly and update your pull request.
- **Update Your Branch if Needed**: If your pull request has conflicts with the base branch, you may need to update your branch. You can do this by merging or rebasing your branch with the latest version of the base branch.

### Step 5: Celebrate Your Contribution

Once your pull request has been reviewed and merged, your contribution is now part of the project! Be proud of your work and celebrate your contribution to the open-source community.

---

By following these steps, you can contribute effectively to projects and make a positive impact on the open-source ecosystem. Thank you for contributing!

## License

### Apache License 2.0

This project is licensed under the [Apache License 2.0](LICENSE). This license permits use, modification, distribution, and sublicense of the code for both private and commercial purposes, provided that the original copyright notice and a disclaimer of warranty are included in all copies or substantial portions of the software. It also requires a clear attribution back to the original author, [Breno Farias da Silva](https://github.com/BrenoFariasdaSilva), of the repository, in . For more details, see the [LICENSE](LICENSE) file in this repository.
