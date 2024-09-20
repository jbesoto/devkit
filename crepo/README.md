# Create Repository

A interactive script that helps initialize a repository given a set of templates.

Features:

- [ ] Allow user to create custom templates and add them to `templates/`
- [ ] Allow user to select which template to use
- [ ] Allow user to select the license of the project (have license templates)

Usage:

```sh
# Initializes a Git repository in PATH
crepo [FLAGS] <PATH>
```

- Not sure which `FLAGS` can be implemented (TBD)

Prerequisites:
- yq

Design:
Select template -> create folder structure -> copy blueprints
