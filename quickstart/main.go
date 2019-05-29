package main

import (
	_ "quickstart/routers"
	"github.com/astaxie/beego"
	_ "github.com/aws/aws-xray-sdk-go/plugins/ecs"
)

func main() {
	beego.Run()
}

