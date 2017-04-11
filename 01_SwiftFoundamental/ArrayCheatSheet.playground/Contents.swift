//********************************************************************
//********************************************************************
//************************ Array Cheat Sheet *************************
//********************************************************************
//********************************************************************

//生成陣列的方法
var emptyArray1 = [String]()
var emptyArray2:[String] = []
var emptyArray3:[String] = [String]()
var emptyArray4 = Array<String>()
let arrayWithSomeString = ["zero","one","two"]

//計算陣列內含多少元素
let arrayToTest = ["eins","zwei","drei","vier"]
arrayToTest.count

//加入元素到陣列中
var animalArray = ["mouse","cow","tiger"]
animalArray.append("rabbit")
animalArray += ["dragon"]
animalArray.insert("new animal", at: 2)

//兩個陣列相加
var numberArray = [1,2,3,4,5,6,7,8,9,10]
let moreNumberArray = [11,12,13,14,15]
numberArray += moreNumberArray

//移除陣列中的元素
var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l"]
alphabet.removeFirst(3)
alphabet
alphabet.removeFirst()
alphabet.removeLast()
alphabet.remove(at: 3)

//分割陣列
var numberStringArray = ["1","2","3","4","5","6","7","8"]
numberStringArray[2...6]
numberStringArray[1..<7]

//排序陣列
var unorderedArray = [1,3,5,7,9,2,4,6,8,10]
unorderedArray.sort()

//反轉陣列
let highscoreArray = [999,780,650,340,220,100]
let reverseArray = Array(highscoreArray.reversed())

//攪亂陣列順序
import Foundation
func shuffleArray<T>(originalArray:[T]) -> [T]{
    var n = originalArray.count
    var finalArray = originalArray
    while n >= 1{
        let k = Int(arc4random_uniform(UInt32(n)))
        let tempThing = finalArray[n-1]
        finalArray[n-1] = finalArray[k]
        finalArray[k] = tempThing
        n = n - 1
    }
    return finalArray
}

let sampleArray = [1,2,3,4,5,6,7,8,9]
shuffleArray(originalArray: sampleArray)






