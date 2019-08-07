Contents
-------
* [Conda](#Conda)
* [Vim](#Vim)
    * [Configuration](#configuration)
    * [Colon Commands](#colon-commands)
    * [Buffers](#buffers)
    * [AutoComplete](#autocomplete)
    * [Modes](#modes)
* [Tmux](#Tmux)

Conda
------
conda installations exist in filesystem folders. You can use a conda installation by adding the residing `bin/` folder to your path. i.e. `export PATH=/home/mike/workshop/miniconda/bin/:$PATH`. `bash` looks in your path, in order, for executables, so you always want to put the new path *before* the old one, seperating each path with `:`. To avoid exporting the path every new terminal session, you can add the export command to the bottom of your `~/.bashrc`. 

You can add channels like so:
```bash
conda config --add channels bioconda
```

Create an environment:
```bash
conda create --name myenv
```

Use it:
```bash
conda activate myenv
```

Quit it:
```bash
conda deactivate
```

List your environments:
```bash
conda env list
```

### Configuration
Neovim configuration file is `~/.config/nvim/init.vim`  
The vim configuration file is `~/.vimrc`  
A good example: [minimal vimrc](https://vim.fandom.com/wiki/Example_vimrc)

Our example configuration uses [vim-plug](https://github.com/junegunn/vim-plug) to manage plug-ins. These are installed with `:PlugInstall`.

### Colon Commands
*You must be in [normal mode](#Modes) to use colon commands*  

Run a bash command:  
`:!echo "foo"`  

Async version:  
`:term pip install click`  

Auto-completion for colon commands is available with `<TAB>`. History is avaiable with ⬆

Buffers
-----------------

### Creating Buffers
When you open a new file, you create a new buffer.

`:e <file>` opens a new file. `:e  ./ ` opens a directory.

`:split <file>` opens a new file, making a horizontal split

`:vs  <file>` opens a new file in a vertical split

`:Ex` `:Vex` and `:Sex` open the file explorer in a new buffer. 

Remember, auto-completion for colon commands is available with `<TAB>`.

`sp` is short hand for a horizontal split; `vs` for a vertical. 

### Manipulating Buffers
`:bd ` will close the current buffer; `:q` will close all buffers and exit vim.

`:b <buffer-name>` will switch the buffer to show the contents of that buffer. `buffer-name` is usual the name of a file you're editing. You can use tab-completion to choose between buffers.

`<ctrl-w>` followed by a direction moves you to a different buffer.


AutoComplete
-----------
Basic autocompletion is available with `<ctrl-N>`. This searches your buffers for a match.

You can also autocomplete filenames on your file system. For example, if the file `README.md` is in your current directory, typing `RE` and then hitting `<ctrl-X> f` will autocomplete! This works for all paths on your file system, e.g. `/usr/bin/`.

Python `auto-complete` is possible with [jedi-vim](https://github.com/davidhalter/jedi-vim) or [deocomplete-jedi](https://github.com/deoplete-plugins/deoplete-jedi).


Modes
-----
**Normal -> Insert:**  `i` / `o` / `a` / `A` / `I`  
**Insert -> Normal:**  `esc` / `ctrl+[` / `<TAB>`  
**Normal -> Visual:** `v` / `V` / `ctrl+v`



Navigation
----------

![img](https://i.stack.imgur.com/EmgN3.gif)

Your fingers help tell you the direction your heading;

__j__ is down  
__k__ is up  
__l__ is right   
__h__ is left  

**Line:**  
up / down `j` / `k`  
start of line: `0`  
end of line: `$`  


**Whole File:**  
**gg** is top  
**G**  is bottom  

**PgUp/PgDn** work as normal  

**Note:** These navigation commands work on `less`, `tmux`, and other linux utilties

## Language Integration
### Python

The following should work:
```bash 
pip install pylint
pip install pynvim
pip install jedi 
```
If you want to use static types:

```bash
pip intall git+https://github.com/python/mypy 
``` 

### Bash
This setup should give you some bash syntax-checking out of the box. For anything more sophisticated, install [shellcheck](https://github.com/koalaman/shellcheck#installing-a-pre-compiled-binary).




Tmux
-----
Tmux allows you to create and use buffers in your terminal. They behave similarly to vim buffers.

### Basic Usage
DoD setup:  
```bash
# from within the workshop/ directory
$ cp tmux.conf ~/.tmux.conf
$ module load tmux
```

On HJF, you can install via conda:

```bash
$ cp tmux.conf ~/.tmux.conf
$ conda install -c conda-forge tmux
```

Starting tmux:  

```bash
$ tmux 
```

### Tmux Navigation
Use `<ctrl-a>` before every tmux command.

`c`          new buffer  
`- `         horizontal split  
`| `         vertical split  

`←  ↑  →  ↓`   move to the buffer in that direction.  As in vim, you can also use `h`/`k`/`l`/`j`  
`0...9`      switch to the buffer assigned that number.  

`[`          to enter vim-mode. Then `v` to select text and `y` to copy it. `q` exist vim-mode.   
`]`          to paste what you've copied via the above.  

*Remember, each of these commands must  be preceded by `<ctrl-a>`*

### Closing/Reopening Sessions

`<ctrl-a>` `d`      detatches from the current session.  
To rejoin that session, run the commmand `tmux attach`. This will restore all the buffers to their previous state.

`<ctrl-d>` destroys a buffer. destroying all your buffers closes tmux.

