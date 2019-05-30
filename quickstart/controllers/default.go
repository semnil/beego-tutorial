package controllers

import (
	"github.com/astaxie/beego"
	"github.com/aws/aws-xray-sdk-go/xray"
	_ "github.com/aws/aws-xray-sdk-go/plugins/ecs"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	_, subSeg := xray.BeginSubsegment(c, "/")
	subSeg.Close(nil)
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}


type UserController struct {
	beego.Controller
}

func (c *UserController) Get() {
	_, subSeg := xray.BeginSubsegment(c, "/user")
	subSeg.Close(nil)
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.Data["Title"] = "Welcome to User page"
	c.Data["Description"] = "This is /user page."
	c.TplName = "user.tpl"
}
