# Create a web application with Beego framework and deploy an application with AWS Elastic Beanstalk
In this tutorial, you create a development environment that runs on docker container in the local environment.  
In addition, deploy the created application to AWS Elastic Beanstalk (from STEP3).

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
Please git clone this project.  
After moving into the project directory, execute the following command to build and start the container.

```
docker-compose up -d
```

## STEP2

The created container is empty.  
Create a new application with Beego web application framework.

```
# Go inside the container
docker-compose exec app bash
# Create a new application
# Enter "yes" to overwrite.
bee new quickstart
exit
# Load created application
docker-compose restart
```

Access `http://localhost:8080` and check running application.

## STEP3

Deploy to AWS Elastic Beanstalk.

### Make source bundle

```
./make_bundle.sh
```

Above command output a **bundle.zip** file.
This process means [create an application source bundle](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-sourcebundle.html).

### Create environment

Refer to an [AWS document](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications.html).
Select following options:

- Platform : Docker
- Application code : Upload your code
  - Source code origin : Local File (and select **bundle.zip** file)


## STEP4

Refer to the [document](https://beego.me/docs/quickstart/#quickstart) and implement the contents of the quick start.  
After making changes to the source code, check changes on the local environment and redeploy to Elastic Beanstalk.
If you want to see the log of local environment, please execute the following command:

```
docker-compose logs -f
```
