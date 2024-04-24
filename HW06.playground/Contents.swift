import Cocoa


// 1

var arrayString: [String] = ["123 hello","other","no name","custom number", "111", "", "345 and 1112"]
arrayString.map {$0.components(separatedBy: .whitespacesAndNewlines).first ?? ""}.compactMap({Int($0)}).forEach({print("\($0) * 2 = \($0 * 2)")})

print(arrayString)

// 2

let storeDictionary: [String:Double] = [
    "milk": 100.00,
    "eggs": 75.00,
    "bread": 155.00,
    "cheese": 1430.00,
    "chocolate": 1070.00,
    "ice cream": 1720.00

]
let productArray = storeDictionary.keys
print(productArray)
var productSum = storeDictionary.values.reduce(0) { partialResult, element in
    partialResult + element
}
//let productSum = storeDictionary.values.reduce(0, +)
let productQuantity = storeDictionary.keys.count
print("Total number of products:",productArray, productQuantity,"-" ,productSum)
print("Product list:", productArray)
print("Total number of products:", productQuantity, "-", "Total sum of product prices:", productSum)
