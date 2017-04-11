//********************************************************************
//********************************************************************
//************************ XMLParserDelegate *************************
//********************************************************************
//********************************************************************

import Foundation

class ParseHelper:NSObject, XMLParserDelegate{
    var currentStudent: Student?     //準備儲存即時解析到的、跟學生相關的資訊
    var currentElementValue:String? = nil //準備儲存即時解析到的文字
    var resultArray = [Student]()  //儲存所有解析到的Student型別的物件
    
    //剛開始碰到某個標籤的時候會做的事
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        if elementName == "student"{
            currentStudent = Student()
        }else if elementName == "name"{
            currentElementValue = nil
        }else if elementName == "english"{
            currentElementValue = nil
        }else if elementName == "chinese"{
            currentElementValue = nil
        }
    }
    
    //某個標籤結束的時候會做的事
    func parser(_ parser: XMLParser, didEndElement
        elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "student"{
            resultArray.append(currentStudent!)
        }else if elementName == "name"{
            currentStudent?.studentName = currentElementValue
        }else if elementName == "english"{
            currentStudent?.englishScore = currentElementValue
        }else if elementName == "chinese"{
            currentStudent?.chineseScore = currentElementValue
        }
        currentElementValue = nil
    }
    
    //讀到文字會做的事
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if currentElementValue == nil{
            currentElementValue = string
        }else{
            currentElementValue = currentElementValue! + string
        }
    }
    
    //用這個方法可以回傳
    func getResult() -> [Student]{
        return resultArray
    }
}

