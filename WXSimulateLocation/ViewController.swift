//
//  ViewController.swift
//  WXSimulateLocation
//
//  Created by Wuxi on 2019/3/20.
//  Copyright © 2019年 wuxi. All rights reserved.
//

import UIKit

//获取高德坐标：https://lbs.amap.com/console/show/picker
//获取百度坐标：http://api.map.baidu.com/lbsapi/getpoint/index.html
//对应语言飘逸还原算法：https://github.com/googollee/eviltransform
/**
 1. 去上面的地方获取你想要的位置对应的国产坐标
 2. 用本程序LocationTransform对应的方法转换成原始坐标
 3. 修改gpx文件中的坐标，改为你转换后的原始坐标
 4. 运行程序，不要杀掉进程，直接打开你的其他定位软件


*/

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /// 龙光大厦A栋：22.548586, 113.887059 || 22.551631043945314: 113.88217069433593
        // 深圳：22.543847, 113.912316
        let (lat, lng) = LocationTransform.gcj2wgs_exact(gcjLat: 22.548586, gcjLng: 113.887059)
        print("\(lat): \(lng)")
    }


}

