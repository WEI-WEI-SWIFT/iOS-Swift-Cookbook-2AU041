//********************************************************************
//********************************************************************
//*********************** String Cheat Sheet *************************
//********************************************************************
//********************************************************************

//連接兩個字串用加號
let helloString = "Hello"
let worldString = " World"
let combinedString = helloString + worldString

//用反斜線跟括弧把要代換的變數或常數的值包起來
let number = 7
let theTruth = "My lucky number is \(number)"

//字串轉換成數字
let oneString = "1"
Int(oneString)  //字串變成整數
let pi = "3.1416"
Float(pi)       //字串變成浮點數
Double(pi)      //字串變成雙精度浮點數

//數字轉換成字串
let sixNumber = 6
let sixString = "\(sixNumber)"

//把字串全部變大寫或是小寫
let mixString = "AbcDEfghiJKLmnOP"
mixString.uppercased() //字串變大寫
mixString.lowercased() //字串變小寫

//計算字串的字數
let whatILove = "I love Swift"
whatILove.utf8.count
whatILove.utf16.count

//打出符號 😀
//ctrl+command+空白鍵

//切分字串
/*
let originalString = "Developers are so cool"

let developerString = String(originalString.characters.prefix(9))
let coolString = String(originalString.characters.suffix(4))
let dropFirstString = String(originalString.characters.dropFirst(11))
let dropLastString = String(originalString.characters.dropLast(12))
*/

//使用range切分字串
import Foundation
let originalString = "Developers are so cool"
let myRange = NSMakeRange(0, 9)
let rangeString =
        NSString(string: originalString).substring(with: myRange)

//找尋字串
let longString = "iPhone, iPad, iPod, and Apple TV"
let keyWord = "iPad"
if longString.contains(keyWord){
    "Bingo"
}else{
    "Can't find this keyword"
}

