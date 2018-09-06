//
//  Observer.swift
//  ZylDesignPattern
//
//  Created by oneDemo on 2018/9/5.
//  Copyright © 2018年 oneDemo. All rights reserved.
//

import Foundation

protocol Observer {
    //MARK: - 更新操作
    func update(temperture: Double, humifity: Double, pressure: Double)
}
