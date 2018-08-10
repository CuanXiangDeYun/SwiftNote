//
//  StringsAndCharacters.swift
//  Swift4.2
//
//  Created by 王浩兵 on 2018/8/10.
//  Copyright © 2018年 爨乡的云. All rights reserved.
//

import UIKit

class StringsAndCharacters: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "字符串和字符"
        
        // 字符串字面量的创建
        let aString = "a const string"
        print(aString)
        // aString 通过字符串字面量进行初始化后,Swift会推断其类型为String类型
        
        // 多行字符串字面量
        // 创建跨行的字符串,只需要用一对 三个双引号包裹,如下:
        let multilineString = """
        this is a multiline string:

        var year = 0
        repeat {
            year += 1
            print("i love you")
        }
        while(year <= 10000)
        mean : Love you a \"million\" years
        """
        print(multilineString)
        
        
        // 特殊字符
        /*
         转义字符:
         \0 : 空字符
         \\ : 反斜线
         \t : 水平制表符
         \n : 换行符
         \r : 回车符
         \" : 双引号
         \' : 单引号
         
         Unicode标量:
         表示为: \u{n} , 其中u为小写,n为任意一到八位十六进制数且可用的Unicode位码
         如下:
        
        */
        
        let dollarSign = "\u{24}"   //$, Unicode 标量 U+0024
        let cleverHeart = "\u{1F60A}" // 😊, Unicode 标量 U+1F60A
        // to see : http://punchdrunker.github.io/iOSEmoji/table_html/ios6/index.html
        print(dollarSign, cleverHeart)
        
        // 由于多行字符串字面量使用了三个双引号，而不是一个，所以你可以在多行字符串字面量里直接使用双引号（"）而不必加上转义符（\）。要在多行字符串字面量中使用 """ 的话，就需要使用至少一个转义符（\）
        let threeDoubleQuotes = """
        Escaping the "first" quote \"""
        Escaping all three quotes \"\"\"
        """
        print(threeDoubleQuotes)
        
        
        // 初始化空字符串
        // 可以将一个空字符串赋值给变量/常量
        let emptyString1 = ""
        // 也可以初始化一个新的示例
        let emptyString2 = String()
        /// 通过传递一个值类型为Character的数组进行初始化
        let nameCharacters: [Character] = ["C", "u", "a", "n"];
        let nameString = String(nameCharacters)
        print(nameString)
        
        // 如何检查空字符串
        if emptyString1.isEmpty {
            print("emptyString1 is empty")
        }
        if emptyString2.isEmpty {
            print("emptyString2 is empty")
        }
        
        
        // 字符串的可变性
        // 字符串常量
        let constantString = "CuanXiangDeYun is a iOS coder"
        //constantString += "is studying swfit" 常量字符串不可以被修改
        
        var variableString = "CuanXiangDeYun"
        variableString += " is a iOS coder"
        variableString += ", and studying swfit"
        print(constantString, "\n\(variableString)")
        
        // 字符串是值类型
        // Swift中的String是值类型,如果创建了一个新的字符串,那么对其进行常量,变量赋值操作, 或者是在函数/方法中传递时,会进行值拷贝. 任何情况下,都会对已有字符串创建新副本,并对该新副本进行传递或者赋值操作.
        
        // 获取字符串中的字符
        let string = "CuanXiangDeYun"
        for character in string {
            print(character)
        }
        
        let firstCharacter = string.first;
        let lastCharacter = string.last;
        print(firstCharacter!, lastCharacter!)
        
        // 连接字符串和字符
        // 使用 + 连接
        let stringA = "hello"
        let stringB = " swift"
        var stringC = stringA + stringB
        print(stringC)
        
        // 使用 += 连接
        stringC += ", it's interesting"
        print(stringC)
        
        // 使用 append() 方法连接
        stringC.append(", do you like it ?")
        print(stringC)
        
        // 字符串插值
        // 
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
