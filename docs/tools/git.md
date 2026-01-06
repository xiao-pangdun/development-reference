# Git

Git should be installed by default on macOS. Checkout [git official website](https://git-scm.com/) for more information.

## Setup user information

To set up your git user information, run the following commands in your terminal:

```sh
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

> You may refer to [Getting Started - First-Time Git Setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) for more details.

### Verify user information configuration

To verify your configuration as expected, run:
```sh
git config --global --list
```
Or check git config file located at `~/.gitconfig`.
You should see something like:

```ini
# ...
[user]
    name = Your Name
    email = your-email@example.com
# ...
```
