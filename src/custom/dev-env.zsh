DEV_ENV_HOME="$HOME/.dev-env"

dev-env() {
  case "$1" in
    setup)
      echo "Setting up dev-env..."

      # Initialize and clone submodules
      git -C "$DEV_ENV_HOME" submodule update --init --recursive \
        && echo "  submodules initialized"

      # Run setup scripts
      for setup_script in "$DEV_ENV_HOME"/src/config/**/.setup.zsh; do
        source "$setup_script"
      done

      echo "Done. Restart your shell or run: source ~/.zshrc"
      ;;
    upgrade)
      echo "Upgrading dev-env..."

      # Pull latest changes
      git -C "$DEV_ENV_HOME" pull --rebase \
        && echo "  repo updated"

      # Update submodules
      git -C "$DEV_ENV_HOME" submodule update --init --recursive \
        && echo "  submodules updated"

      echo "Done. Restart your shell or run: source ~/.zshrc"
      ;;
    *)
      echo "Usage: dev-env <command>"
      echo ""
      echo "Commands:"
      echo "  setup    Run setup scripts and initialize plugins"
      echo "  upgrade  Pull latest changes and update plugins"
      ;;
  esac
}
