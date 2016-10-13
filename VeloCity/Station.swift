import Foundation

//{
//    "number": 123,
//    "contract_name" : "Paris",
//    "name": "stations name",
//    "address": "address of the station",
//    "position": {
//        "lat": 48.862993,
//        "lng": 2.344294
//    },
//    "banking": true,
//    "bonus": false,
//    "status": "OPEN",
//    "bike_stands": 20,
//    "available_bike_stands": 15,
//    "available_bikes": 5,
//    "last_update": <timestamp>
//}

struct Station {

    let number:Double;
    let contractName:String;
    let name:String;
    let address:String;
    let position:Position;
    let status:String;
    let bikeStands:Int;
    let availableBikeStands:Int;
    let availableBikes:Int;
    

    init(name: String) {
        self.number = 1
        self.contractName = ""
        self.name = name
        self.address = ""
        self.position = Position(lat: 20.34, lng: 20.34)
        self.status = "OPEN"
        self.bikeStands = 5
        self.availableBikeStands = 3
        self.availableBikes = 2
    }
    
    static func getList() -> [Station] {
        return [
            Station(name: "CUSTOM HOUSE QUAY"),
            Station(name: "THE POINT"),
            Station(name: "CONVENTION CENTRE")
        ]
    }
    
}

struct Position {
    let lat:Double;
    let lng:Double;
}
