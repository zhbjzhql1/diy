## 使用关机功能方法：
系统的源码上修改，集成到系统源码菜单中，不需要另外选择和设置即可使用关机功能
 ```Brach 
    #在编译前,运行如下二条命令，集成到系统源码菜单中，不需要另外选择和设置即可使用关机功能。
	cd openwrt #进入源码目录
    curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/poweroff.htm > ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm 
    curl -fsSL  https://raw.githubusercontent.com/sirpdboy/other/master/patch/poweroff/system.lua > ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua

 ```
