Note to self: Get win32yank

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |

<summary> To Clone (Mac, Linux)</summary>

```sh
git clone git@github.com:JoeyGarber/nvim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```
<summary> To Clone (Windows, cmd.exe)</summary>

```sh
git clone git@github.com:JoeyGarber/nvim-config.git "%localappdata%\nvim"
```

<summary> To Clone (Windows, powershell.exe)</summary>

```sh
git clone git@github.com:JoeyGarber/nvim-config.git "${env:LOCALAPPDATA}\nvim"
```

### Install Recipes

<summary> Get these too (WSL)</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
