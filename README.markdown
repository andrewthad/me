# Drew's Linux Configuration

This repo should be cloned, and then you will need to symlink
all your config files to the ones in here. So far the links
you need are:

- `ln -s /home/$USER/me/.bashrc /home/$USER/.bashrc`
- `ln -s /home/$USER/me/.tmux.conf /home/$USER/.tmux.conf`
- `ln -s /home/$USER/me/.dircolors /home/$USER/.dircolors`
- `ln -s /home/$USER/me/.config/nvim /home/$USER/.config/nvim`

There's also a file named `install` that contains several `apt-get`
repositories that you probably want to add.

