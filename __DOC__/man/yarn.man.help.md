# YARN

- GLOBAL INSTALL

```bash
  yarn global add ndb
```

- UPDATE YARN

```bash
  brew upgrade yarn
```

- PB modules (unmet dep)

```bash
remove yarn.lock
remove nodes_modules
```

- z

```bash
#? yarn global list
#// alias globals="yarn global upgrade-interactive"
#// yarn global add typescript@latest
#// yarn global remove typescript
#? yarn upgrade typescript
#! LATEST GLOBAL : yarn global upgrade --latest firebase-tools@latest
```

- ⭐ know all outdated libs

```bash
yarn outdated
```

- ⭐ UPGRADE DEPs

```bash
yarn upgrade --latest
```

- know latest version

```bash
yarn info firebase versions
```

- node engine = 10

```bash
yarn info puppeteer versions

yarn add [package]@[version]
yarn add firebase@7.16.0
yarn add puppeteer@5.0.0

yarn add [package]@[tag]
```

# -0 YARN

# alias y='yarn'

# alias yb='y build'

# alias y-build='y build'

# alias yd='ECHOO && y dev; ECHO'

# alias y-dev='y dev'

# alias y-emu='y emu'

# alias y-emu--import-prod='y emu--import-prod'

# alias ys='y start'

# alias y-start='y start'

# alias y-deploy='y deploy'

# alias ya='y add'

# alias y-add='y add'

# alias y-global-add='y global add'

# alias y-add-dependency='y add -D'

# alias y-install='yarn install'

# alias y-upgrade-interactive--latest='yarn upgrade-interactive --latest'

# alias y-global-list='yarn global list'
