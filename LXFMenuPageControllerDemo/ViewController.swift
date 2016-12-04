//
//  ViewController.swift
//  LXFMenuPageControllerDemo
//
//  Created by LXF on 2016/11/19.
//  Copyright © 2016年 LXF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 子标题
    lazy var subTitleArr:[String] = {
        return ["推荐推荐", "分类", "广播", "榜单", "主播"]
    }()

    /// 子控制器
    var controllers:[UIViewController] = {
        // 创建5个子控制器
        var cons:[UIViewController] = [UIViewController]()
        for _ in 0..<5 {
            // 创建随机颜色
            let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
            let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
            let colorRun = UIColor.init(red:red, green:green, blue:blue , alpha: 1)
            
            let subController = UIViewController()
            subController.view.backgroundColor = colorRun
            cons.append(subController)
        }
        return cons
    }()
    
    
    /// 菜单分类控制器
    lazy var lxfMenuVc: LXFMenuPageController = {
        let pageVc = LXFMenuPageController(controllers: self.controllers, titles: self.subTitleArr, inParentController: self)
        pageVc.delegate = self
        self.view.addSubview(pageVc.view)
        return pageVc
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        lxfMenuVc.sliderColor = UIColor.blue
//        lxfMenuVc.tipBtnNormalColor = UIColor.yellow
//        lxfMenuVc.tipBtnHighlightedColor = UIColor.purple
//        lxfMenuVc.headerColor = UIColor.green
        lxfMenuVc.tipBtnFontSize = 12
        
        lxfMenuVc.view.frame = self.view.frame
    }
    
    
    /// 隐藏状态栏
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// MARK:- LXFMenuPageControllerDelegate
extension ViewController: LXFMenuPageControllerDelegate {
    func lxf_MenuPageCurrentSubController(index: NSInteger, menuPageController: LXFMenuPageController) {
        print("第\(index)个子控制器")
    }
}
