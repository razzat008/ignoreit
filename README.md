# ignoreit
based .gitignore generator 

## why?
didn't want to get into the github GUI to add .gitignores, when I can do that from my terminal

## Using

pass argument to the script for the project, it'll generate/create a .gitignore\
have fun

```bash
curl -fsSL https://raw.githubusercontent.com/razzat008/ignoreit/refs/heads/master/useit.sh | sh -s -- rust
```

or make an alias

```bash
alias ignoreit="curl -fsSL https://raw.githubusercontent.com/razzat008/ignoreit/refs/heads/master/useit.sh | sh -s -- "
```

## contributing

open a PR to make changes to gitignores for available language/tool inside `./gitignores/...`
