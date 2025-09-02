# tmux-vim-mappings

Most of the work is copied from Franck Pachot's [tmux-interactive-demo](https://github.com/FranckPachot/tmux-interactive-demo).

## Setup

* Save the current configuration files if you have them already:

    ```bash
    mv ~/.tmux.conf ~/.tmux.conf.save
    mv ~/.vimrc ~/.vimrc.save
    ```

* Copy the configuration files and command executor:

    ```bash
    git clone https://github.com/ludovicocaldara/tmux-vim-mappings.git
    cp tmux-vim-mappings/tmux.conf ~/.tmux.conf
    cp tmux-vim-mappings/vimrc ~/.vimrc
    cp tmux-vim-mappings/runFromVim.sh ~/.runFromVim.sh
    cp tmux-vim-mappings/sendBuffer.sh ~/.sendBuffer.sh
    ```

## Usage

* Start a tmux session (or attach an existing one):

    ```bash
    tmux new-session
    ```

* Open the demo script with `vi`:

    ```bash
    vi test.bash
    ```

    ![two terminals, one with tmux and one with vi, show the demo using test.bash](demo.gif)

* Go through the demo by pressing `PgDown`:

    If you are on Mac and you don't have `PgDown` on your keyboard, you can edit `~/.vimrc` and remap to another keypress.

## Notes

* On Windows, it works like a charm with most clickers. Logitech pointers come with a software to customize the buttons.
* On MacOS, you might find [Karabiner-Elements](https://karabiner-elements.pqrs.org/) useful to remap device keys.
* Not tested with clickers on Linux. Let me know if that works for you! `tmux` via `ssh` and using cloud shells work perfectly.
