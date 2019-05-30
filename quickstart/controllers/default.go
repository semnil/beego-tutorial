package controllers

import (
	"github.com/astaxie/beego"
	"context"
	"github.com/aws/aws-xray-sdk-go/xray"
	_ "github.com/aws/aws-xray-sdk-go/plugins/beanstalk"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	_, seg := xray.BeginSegment(context.Background(), "/")
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
	seg.Close(nil)
}
