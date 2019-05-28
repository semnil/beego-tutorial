# beego-tutorial

## STEP0

Install [Homebrew](https://brew.sh/index_ja) and run following commands:

```
# install anyenv
brew install anyenv
anyenv init
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
exec $SHELL -l
anyenv install --init https://github.com/foo/anyenv-install.git

# install goenv and go
anyenv install goenv
exec $SHELL -l
goenv install -l
goenv install <latest version>
goenv global <latest version>
echo 'export GOPATH=$HOME/.go' >> ~/.bash_profile
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bash_profile
exec $SHELL -l

# install docker
brew install docker
brew cask install docker
open /Applications/Docker.app
```

Option:

```
brew install mysql
```

## STEP1

Start a database container.

```
docker-compose up -d
```

## STEP2

Refer to the [document](https://beego.me/docs/install#installing-beego) and install Beego.
