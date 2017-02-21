//
//  main.swift
//  swiftlearn
//
//  Created by mlibai on 2017/1/6.
//  Copyright © 2017年 yang. All rights reserved.
//

//import Foundation

print("Hello, World!")






if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) roots ")
}else{
    print("xxxxx")
}




var optional:String?="helo"

if let someOptionalConstant = optional
{
    if someOptionalConstant.hasPrefix("hel")
    {
        print("begin with hel")
    }
    else
    {
        print("Not begin with hel")
    }
    
}
else
{
    print("val is null")
}



//
// MARK: closure
//

let numbers = [4,3,2,8,7,6,9,10]

let new = numbers.map{number in 2*number}

let new1 = numbers.map({number in 2 * number})

let new2 = numbers.map({
    (number:Int) ->Int in
    
    return number * 2
})



print(new,new1,new2)

let new4 = numbers.map{ $0 * 2} // equal to new
print("new4",new4)




// MARK: struct
struct NamesTable
{
    let names:[String]
    
    subscript(index:Int) -> String
    {
        print("index \(index)")
        return names[index]
    }
    
}


let namesTable = NamesTable(names: ["me","You","them"])

let name = namesTable[1]

print("Nmae is \(name)")




