# beego-tutorial

## STEP0

Install [Homebrew](https://brew.sh/index_ja) and run following commands:

```
# install anyenv
brew install anyenv
anyenv init
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
anyenv install --init https://github.com/foo/anyenv-install.git

# install goenv and go
anyenv install goenv
source ~/.bash_profile
goenv install -l
goenv install <latest version>
goenv global <latest version>
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bash_profile
source ~/.bash_profile

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

Refer to the document and install [Beego](https://beego.me/docs/install#installing-beego) and [bee tool](https://beego.me/docs/install/bee.md#installing-bee-tool).

## STEP3

Check GOPATH with following command:

```
echo $GOPATH
```

Refer to the [document](https://beego.me/docs/quickstart/#quickstart) and implement the contents of the quick start.
