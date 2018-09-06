//
//  Subject.swift
//  ZylDesignPattern
//
//  Created by oneDemo on 2018/9/5.
//  Copyright © 2018年 oneDemo. All rights reserved.
//

import Foundation

protocol Subject {
    //MARK: - 注册通知
    func registerObserver(observer: Observer)
    //MARK: - 删除通知
    func removeObserver(observer: Observer);
    //MARK: - 通知观察者
    func notifyObserver()
}
