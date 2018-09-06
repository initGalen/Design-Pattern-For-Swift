//
//  CurrentConditionsDisplay.swift
//  ZylDesignPattern
//
//  Created by oneDemo on 2018/9/5.
//  Copyright © 2018年 oneDemo. All rights reserved.
//

import Foundation

class CurrentConditionsDisplay: NSObject {
    private var temperture = 0.0
    private var humidity = 0.0
    private var weatherData: Subject?
    
    convenience init(weatherData: Subject) {
        self.init()
        self.weatherData = weatherData
        weatherData.registerObserver(observer: self)
    }
    //MARK: - 删除通知
    func removeObserver() {
        self.weatherData?.removeObserver(observer: self)
    }
}
//MARK: - 实现协议
extension CurrentConditionsDisplay: Observer {
    func update(temperture: Double, humifity: Double, pressure: Double) {
        self.temperture = temperture
        self.humidity = humifity
        display()
    }
}
extension CurrentConditionsDisplay: DisplayElement {
    //MARK: - 显示信息
    func display() {
        print("Currentconditions:\(temperture) F degree and humidity: \(humidity) H")
    }
}
