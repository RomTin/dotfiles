# dotfiles

## usage

```bash
$ sh ./initialize.sh
$ sh ./setup.sh
```

## VSCode

```bash
$ code --list-extensions > extensions.txt
$ for extension in $extensions; do
  echo "install $extension ..."
  code --install-extension $extension
  done
```
