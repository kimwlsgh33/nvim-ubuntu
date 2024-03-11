# Requirements {#top}

## Git
You should install latest version of git
```sh
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
```
---

## neovim

you should use neovim >= 0.9

```sh
# Ubuntu
sudo snap install neovim
```

### Telescope.nvim

#### ripgrep (rg)
```sh
# Debian stable
sudo apt install ripgrep
```

```sh
# Debian
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
```

#### fd (fd-find)
```sh
sudo apt install fd-find
```
---

#### fzf
```sh
sudo apt install fzf
```

#### vim-dadbod

# How to move from packer to lazy
| packer | lazy |
|---     |---   |
| requires | dependencies |
| run | build |
---

# How to use Netrw
| command | function |
|---      |---       |
| % | create a new file |
| d | create a new directory |
| D | delete a file or directory |
| R | rename a file or directory |
| mt | mark a target at a current cursur |
| mf | mark a file at a current cursor |
| mc | copy a marked file at a target |

# How to use mark down

==what is this==
emoji :joy:
Subscript : H~2~O
Superscript : X^2^
https://www.example.com
`https://www.example.com`

[Top](#top)
