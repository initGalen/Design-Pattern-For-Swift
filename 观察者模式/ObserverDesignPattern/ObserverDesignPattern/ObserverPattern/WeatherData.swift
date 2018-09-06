//
//  WeatherData.swift
//  ZylDesignPattern
//
//  Created by oneDemo on 2018/9/5.
//  Copyright © 2018年 oneDemo. All rights reserved.
//

import Foundation

class WeatherData: NSObject {
    private var observerArray: [Observer]
        = [Observer]()
    private var temperture = 0.0
    private var humidity = 0.0
    private var pressure = 0.0

    //MARK: - 通知观察者
    func messurementsChanged() {
        notifyObserver()
    }
    
    func setMessurements(temperture: Double, humifity: Double, pressure: Double) {
        self.temperture = temperture
        self.humidity = humifity
        self.pressure = pressure
        messurementsChanged()
    }
}

//MARK: - 实现协议
extension WeatherData: Subject {
    //MARK: - 注册通知
    func registerObserver(observer: Observer) {
        observerArray.append(observer)
    }
    
    //MARK: - 删除通知
    func removeObserver(observer: Observer) {
        let index = NSArray(array: observerArray).index(of: observer)
        if index >= 0 {
            observerArray.remove(at: index)
        }
    }
    
    //MARK: - 通知观察者
    func notifyObserver() {
        for item in observerArray {
            item.update(temperture: temperture, humifity: humidity, pressure: pressure)
        }
    }
    
}
