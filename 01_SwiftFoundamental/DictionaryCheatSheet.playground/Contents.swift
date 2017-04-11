//********************************************************************
//********************************************************************
//********************* Dictionary Cheat Sheet ***********************
//********************************************************************
//********************************************************************

//生成字典的方法
var emptyDictionary1 = [String:String]()
var emptyDictionary2 = Dictionary<String,String>()
var emptyDictionary3:[String:String] = Dictionary()
var emptyDictionary4:[String:String] = [:]
let fruitDictionary1 = ["red":"apple","yellow":"banana","green":"mango"]

//加入新的鍵值對
var fruitDictionary2 = ["red":"apple","yellow":"banana","green":"mango"]
fruitDictionary2["brown"] = "kiwi"

//修改資料
var numberDictionary = [1:"one",2:"two",3:"three"]
numberDictionary[3] = "drei"
numberDictionary.updateValue("trois", forKey: 3)

//移除資料
var mapDictionary = ["Taipei":"North","Tainan":"South","Taitung":"East"]
mapDictionary.removeValue(forKey: "Taipei")
mapDictionary["Tainan"] = nil
mapDictionary.removeAll()
mapDictionary = [:]
