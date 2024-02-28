# Requirements

## Git
You should install latest version of git
```sh
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git
```
---

## neovim
```sh
sudo apt install neovim
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
