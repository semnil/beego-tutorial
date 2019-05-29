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
```

## STEP2

Create a new application.

docker-compose exec app bash
bee api quickstart -driver=mysql -conn=root:password@tcp(db:3306)/quickstart

Refer to the [document](https://beego.me/docs/quickstart/#quickstart) and implement the contents of the quick start.
