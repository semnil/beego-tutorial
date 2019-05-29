# beego-tutorial

## STEP0

Install [Homebrew](https://brew.sh/index_ja) and run following commands:

```
# install docker
brew install docker
brew cask install docker
open /Applications/Docker.app

# install cocker-compose
brew install docker-compose
```

## STEP1

Start and initialize containers.

```
docker-compose up -d
docker-compose exec app bash
rm -rf quickstart
```

## STEP2

Create a new application.

bee api quickstart -driver=mysql -conn=root:password@tcp(127.0.0.1:3306)/quickstart

Refer to the [document](https://beego.me/docs/quickstart/#quickstart) and implement the contents of the quick start.
