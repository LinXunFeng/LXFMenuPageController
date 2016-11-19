# LXFMenuPageController
快速创建菜单分类控制器

基于Swfit 3.0

## 使用

###初始化
1.创建LXFMenuPageController

2.设置代理(可选)

3.将创建的LXFPageViewController视图添加到当前控制器视图中

```
let menuVc = LXFMenuPageController(controllers: self.controllers, titles: self.subTitleArr)
menuVc.delegate = self
menuVc.view.frame = self.view.frame
self.view.addSubview(menuVc.view)
```

###代理方法

```
// MARK: 获取当前子控制器的角标
func lxf_MenuPageCurrentSubController( index: NSInteger, menuPageController: LXFMenuPageController)
```

###对外提供的属性
```
/// 代理
delegate: LXFMenuPageControllerDelegate?
/// 滑块颜色
sliderColor: UIColor
/// 子标题按钮未选中颜色
tipBtnNormalColor : UIColor
/// 子标题按钮选中颜色
tipBtnHighlightedColor : UIColor
/// 子标题按钮UIFont
tipBtnFontSize : CGFloat
/// 头部视图颜色
headerColor: UIColor
```


效果图

![image](https://github.com/LinXunFeng/LXFMenuPageController/raw/master/Screenshots/1.gif)
