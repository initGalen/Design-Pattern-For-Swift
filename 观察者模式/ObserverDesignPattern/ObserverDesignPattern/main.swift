//
//  main.swift
//  ObserverDesignPattern
//
//  Created by oneDemo on 2018/9/6.
//  Copyright © 2018年 oneDemo. All rights reserved.
//

import Foundation

private func test() {
    let weatherData = WeatherData()
    _ = CurrentConditionsDisplay(weatherData: weatherData)
    _ = StatisticsConditionsDisplay(weatherData: weatherData)
    //        currentDispaly.removeObserver()
    weatherData.setMessurements(temperture: 80, humifity: 65, pressure: 34)
    weatherData.setMessurements(temperture: 82, humifity: 70, pressure: 29.2)
    weatherData.setMessurements(temperture: 78, humifity: 90, pressure: 29.2)
}
test()

