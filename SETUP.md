# Setup instructions

## Skills that require extra steps

- Run `./setup.sh` from the repository root to link the repository skills into `~/.agents/skills`.
- cua-driver: the setup script checks whether `cua-driver` is installed, finds its locally installed skill pack, and creates the repository link. If cua-driver is installed without its skill pack, run `cua-driver skills install` and then run the setup script again.
