# I will restart my neovim configuration from scratch, to a better organized and clean build. CUrrently I'm ussing the "vim" regular format on my configuration file and formatting, and recently came across the lua language and how to implemented on neovim for better/faster/clean workflow, aldo I'm using "vim-plug" for the plugins and some of those plugins are only for vim and other ones just for neovim and I hate to see error messages pop up, so I decided to start from scratch and exclusively only use neovim.

# I'll push my old and new configuration files so they will be available if anyone wishes to compare and/or finds them useful. They are not that long so dont expect to find thousands of line on the configuration files or many plugins, from personal experience it only slows down or creates lots of error messaging when writing.

# Directory Tree for Neovim and Lua Workflow

## First of all and to clarify, I'll not be working or coding in lua, the intention right here is to make use of this light weight language, syntax and common structure to take my regular text editor from just being a simple text editor into an almost IDE, having that in mind let's continue. So in using lua language needs a structure and syntax, like all other coding/programming languages but lua is very simple to give stracture and enables the user/developer to further create a more extensible framework to code with or edit.

## Structure Directory

## In order to create or extend capabilities of the tet editor we already have into something more powerfull we need to separate key parts what is now the edtiro to take out weight of calls and system tasks we put the editor to, a simple way is to fracture the parts of the whole "engine" to make them smaller and by doing that the work load gets distributed and as a result will be auto managed. Directory  layout/tree:

1. Origin Directory, this will be the directory and global place where all will be administrated to pass on tasks or calls to make use of other parts. this directory cannot be mispalced or changed and will always need to be at "$HOME/.config/nvim"

2. In this directory the leader file that will be working as a bridge to the other parts/tools will take place, has to be named as "init.lua" inside the "$HOME/.config/nvim/" directory

** $ mkdir -p $HOME/.config/nvim
** $ touch $HOME/.config/nvim/init.lua

3. Once that's been taken care of we will create the directory of the framework and name it "lua" and in here place the file that will administrate the plugins to use with the plugin manager you choose, I'll be setting up "packer" instead of "vim-plug" just to try something new and has very good support and reviews over the community. So create inside the "$HOME/.config/nvim/lua/" directory the "plugins.lua" file

**  $ mkdir -p $HOME/.config/nvim/lua
**  $ touch $HOME/.config/nvim/lua/plugins.lua

4. Add the bootstrap script to the plugins.lua to auto install itself, and at the same time you can add the plugins that come on "https://github.com/wbthomason/packer.nvim" Repository, as for me I'm only leaving the auto installation script part and a function to make packer the default plugin adminnstrator to manage itself.

** Go to Repo and get what you like  https://github.com/wbthomason/packer.nvim

5. Now we will create another directory to call upon or "require" for only key bindings or key mapping whatever you want to call them, and we will place it inside the "lua" direcotry"

** touch $HOME/.config/nvim/lua/keybindings.lua

6. And add some key bindings or key mappings here are some examples read them to get the idea of how the syntax is done and create your own:

** vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
** vim.g.mapleader = " "
** vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch<CR>', { noremap = true, silent = true })
