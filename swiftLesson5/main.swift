//
//  main.swift
//  swiftLesson5
//
//  Created by Olga Chumakova on 08.06.2021.
//

import Foundation

protocol Car: class, CustomStringConvertible{
    
    var carBrand: String {get}
    var yearOfProduction: Int {get}
    var engineState: EngineState {get set}
    var doorsState: DoorsState {get set}
    var windowsState: WindowsState {get set}
   
    func changeWindowsState(to: WindowsState)
    func changeEngineState(to: EngineState)
    func changeDoorsState(to: DoorsState)
    func printInfo()
}

enum EngineState: String {
    case started = "started", stopped = "stopped"
}
enum DoorsState: String {
    case opened = "opened", closed = "closed"
}
enum WindowsState: String{
    case opened = "opened", closed = "closed"
}
enum Roof: String {
    case installed = "installed", removed = "removed"
}
enum Trunk: String {
    case loaded = "loaded", emptied = "emptied"
}

extension Car {
    func changeWindowsState(to: WindowsState) {
        windowsState = to
        print("Now windows are \(windowsState.rawValue).")
    }
    func changeEngineState(to: EngineState) {
        engineState =  to
        print("Now engine is \(engineState.rawValue).")
    }
    func changeDoorsState(to: DoorsState){
        doorsState =  to
        print("Now doors are \(doorsState.rawValue).")
    }
    

    var description: String {
        return "CarBrand: \(carBrand), yearOfProduction: \(yearOfProduction), engineState:\(engineState), windowsState:\(windowsState), doorsState:\(doorsState)"
    }
}

class SportCar: Car {
    func printInfo() {
          print("Brand - is \(self.carBrand)")
          print("Year -  is \(self.yearOfProduction)")
          print("Engine - is \(engineState.rawValue)")
          print("Windows - are \(windowsState.rawValue)")
          print("Doors - are \(doorsState.rawValue)")
          print("Roof - is \(roof.rawValue)")
    }
    
    var carBrand: String
    var yearOfProduction: Int
    var engineState: EngineState
    var doorsState: DoorsState
    var windowsState: WindowsState
    var roof: Roof
    
    init(carBrand: String, yearOfProduction: Int, engineState: EngineState, doorsState: DoorsState, windowsState: WindowsState, roof: Roof){
        
        self.carBrand = carBrand
        self.yearOfProduction = yearOfProduction
        self.engineState = engineState
        self.doorsState = doorsState
        self.windowsState = windowsState
        self.roof = roof
    }
}
extension SportCar {
    var description: String{
        "roofState:\(roof)"
    }
    func changeRoofState(to: Roof) {
        roof = to
        print("Now roof is \(roof.rawValue).")
    }
}

class TrunkCar: Car {
 
    func printInfo() {
        print("Brand - is \(self.carBrand)")
        print("Year - is \(self.yearOfProduction)")
        print("Engine - is \(engineState.rawValue)")
        print("Windows - are \(windowsState.rawValue)")
        print("Doors - are \(doorsState.rawValue)")
        print("Trunk - are \(trunk.rawValue)")
  }
    var carBrand: String
    var yearOfProduction: Int
    var engineState: EngineState
    var doorsState: DoorsState
    var windowsState: WindowsState
    var trunk: Trunk
    
    init(carBrand: String, yearOfProduction: Int, engineState: EngineState, doorsState: DoorsState, windowsState: WindowsState, trunk: Trunk){
        
        self.carBrand = carBrand
        self.yearOfProduction = yearOfProduction
        self.engineState = engineState
        self.doorsState = doorsState
        self.windowsState = windowsState
        self.trunk = trunk
     }
}

extension TrunkCar {
    var description: String {
        "trunkState:\(trunk)"
    }
    func changeTrunkState(to: Trunk) {
        trunk = to
        print("Now trunk is \(trunk.rawValue).")
    }
}

var sportcar1 = SportCar(carBrand: "Mercedes", yearOfProduction: 2020, engineState: .started, doorsState: .closed, windowsState: .closed, roof: .installed)

var sportcar2 = SportCar(carBrand: "Ford", yearOfProduction: 2010, engineState: .stopped, doorsState: .opened, windowsState: .opened, roof: .removed)
var trunk1 = TrunkCar(carBrand: "Volvo", yearOfProduction: 2018, engineState: .started, doorsState: .closed, windowsState: .closed, trunk: .loaded)

var trunk2 = TrunkCar(carBrand: "ZIL", yearOfProduction: 2015, engineState: .stopped, doorsState: .opened, windowsState: .opened,trunk: .emptied)

sportcar1.changeRoofState(to: .removed)
sportcar1.changeDoorsState(to: .opened)
sportcar1.changeEngineState(to: .stopped)
sportcar1.changeWindowsState(to: .opened)

sportcar2.changeRoofState(to: .installed)
sportcar2.changeDoorsState(to: .closed)
sportcar2.changeEngineState(to: .started)
sportcar2.changeWindowsState(to: .closed)


trunk1.changeTrunkState(to: .loaded)
trunk1.changeDoorsState(to: .opened)
trunk1.changeEngineState(to: .stopped)
trunk1.changeWindowsState(to: .opened)

trunk2.changeTrunkState(to: .emptied)
trunk2.changeDoorsState(to: .closed)
trunk2.changeEngineState(to: .started)
trunk2.changeWindowsState(to: .closed)

print("--------------------")
sportcar1.printInfo()
print("--------------------")
sportcar2.printInfo()
print("--------------------")
trunk1.printInfo()
print("--------------------")
trunk2.printInfo()




