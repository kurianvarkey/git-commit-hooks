# Validate Commit Messages Using Git Hooks

This repository contains a set of Git hooks that can be used in your projects.

## Installation

You can install the hooks in one of two ways:

### Option 1: Using the Setup Script

1. Clone this repository into your project's root directory.
```bash
git clone https://github.com/kurianvarkey/git-commit-hooks.git
```
2. Run the setup script:

```bash
bash ./setup.sh
```
### Option 2: Manual Setup

1. Copy the .githooks directory into your project's root directory.
2. Run the following commands:
```bash
git init
git config core.hooksPath .githooks
chmod +x .githooks/commit-msg
chmod +x .githooks/pre-commit
```

## Configuration

The Git hooks can be configured by modifying the `pre-commit` and `commit-msg` files in the `.githooks` directory.

## Features

### Pre-Commit Hook

* Example usage is to checks for code formatting issues. For example, in this repository, it is using [Laravel Pint](https://github.com/laravel/pint) to check for code formatting issues in PHP files. Please amend the `pre-commit` file to your needs.
* Exits with a non-zero status code if any issues are found.

### Commit Message Hook

* Checks the commit message for compliance with the [Conventional Commits](https://conventionalcommits.org/) specification.
* Exits with a non-zero status code if the commit message does not comply with the specification.
* Supports the following commit types:
	+ `feat`: New feature.
	+ `fix`: Bug fix.
	+ `refactor`: Refactoring.
	+ `chore`: Updating dependencies, etc.
	+ `revert`: Reverting a change.
	+ `db`: Database related tasks.
	+ `docs`: Changes to documentation.
	+ `build`: Building new release.
	+ `ci`: CI/CD pipeline tasks.
	+ `perf`: Performance tasks.
	+ `style`: Formatting, missing semi-colons, etc.
	+ `test`: Adding or refactoring tests.
	+ `wip`: Work in progress commit to be squashed.

### Example Commit Message

```bash
[version][type][Jira ticket id]: Commit message
* Commit message line 2 (optional)
```
 Or
 ```bash
[version][type]: Commit message
```

## Usage

When committing changes to your repository, the hooks will be executed automatically. If you type an invalid commit message, you will see an error message like the one below:

![error](invalid_commit_messages.png)

## License

The code in this repository is licensed under the MIT License.
