//
//  BasicGrammar.swift
//  Swift4.2
//
//  Created by 王浩兵 on 2018/8/8.
//  Copyright © 2018年 爨乡的云. All rights reserved.
//

import UIKit

class BasicGrammar: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "基础语法"
        
        // 11.13
        print("Hello, world!")
        
        // var & let
        // 范类型
        var variableValue = 42
        variableValue = 50
        print(variableValue)
        
        let constantValue = 100
        print(constantValue)
        // 声明多个用,隔开
        let x = 0.0, y = 0.0, z = 0.0
        print(x, y, z)
        
        
        // 类型标注
        let expDouble: Double = 70
        print(expDouble)
        
        
        // 08.08 输出
        // 值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显式转换。
        let text = "The width is "
        let width = 94.0
        let textWidth = text + String(width)
        print(textWidth)
        
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples"
        let fruitSummary = "I have \(apples + oranges) pieces of fruit"
        print(appleSummary, fruitSummary)
        
        // 08.09
        // 整形 提供了8位, 16位, 32位, 64位的整数, 分为有符号型 Int , 无符号型 UInt
        let min = Int8.min
        let max = Int8.max
        print("8位有符号数值范围: \(min) ~ \(max)")
        
        let umin = UInt8.min
        let umax = UInt8.max
        print("8位无符号数值范围: \(umin) ~ \(umax)")
        
        // 浮点型
        // Swift提供了两种浮点数: 64位浮点数: Double, 32位浮点数: Float
        // 快捷获取两个值的最大值和最小值
        let minFloat = Float.minimum(12, 1)
        let maxFloat = Float.maximum(12, 1)
        print(minFloat, maxFloat)
        
        
        // 类型安全与类型推断
        let age = 42 // age 会被推测为 Int 类型
        let pi = 3.14159 // pi 会被推测为 Double 类型
        let anotherPi = 3 + 0.14159
        print(age, pi, anotherPi)
        
        
        // 数值型字面量
        // 1. 整数字面量
        // 下面的所有整数字面量的十进制值都是18
        let decimalInteger = 18         //十进制
        let binaryInteger = 0b10010     //二进制
        let octonaryInteger = 0o22      //八进制
        let hexaDecimalInteger = 0x12   //十六进制
        print(decimalInteger, binaryInteger, octonaryInteger, hexaDecimalInteger)
        
        // 2. 浮点字面量
        // 下面的这些浮点字面量都等于十进制的12.1875
        let decimalDouble = 12.1875     //十进制
        let exponentDouble = 1.21875e1  //十进制指数型
        let hexadecimalDouble = 0xC.3p0 //十六进制指数型
        print(decimalDouble, exponentDouble, hexadecimalDouble)

        let oneMillion = 1_000_000
        let justoverMillion = 1_000_000.000_000_1
        print(oneMillion, justoverMillion)
        
        
        // 数值型类型转换
        // 整数转化
        let twoThousand: UInt16 = 2000
        let one: UInt8 = 1
        // 类型不同,不能直接相加
        // let twoThousandOne = twoThousand + one
        // 转化类型后可以相加
        let twoThousandAndOne = twoThousand + UInt16(one)
        print(twoThousandAndOne)
        
        // 整数和浮点数转换
        let three = 3
        let point = 0.1415926
        //let pi1 = three + point
        let pi1 = Double(three) + point
        print(pi1)
        
        let intPi = Int(pi1)
        print(intPi)
        
        
        // 类型别名, 使用关键字: typealias
        typealias AliasSample = UInt16
        // AliasSample被定义为UInt16的一个别名
        let maxAliasSample = AliasSample.max;
        print(maxAliasSample)
        
        // bool值 Swift 有两个布尔常量，true 和 false：
        let isok = true
        if isok {
            print("this is ok")
        }
        
//        let i = 1
//        if i {
//            print("isok ?")
//        }
//        
//        通过类型判断识别`i==1`的结果是bool值,可以通过编译
//        if i==1 {
//            print("isok ?")
//        }
        
        
        // 元组
        // 元组(tuples)把多个值组合成一个复合值. 元组内的值可以是任何类型.
        // 创建一个类型为 (Int, String) 的元组
        let http404Error = (404, "Not Found")
        print(http404Error)
        
        // 将一个元组的内容分解为单独的常量和变量
        let (code, message) = http404Error;
        print("the status code is \(code)")
        print("the status message is \(message)")
        
        // 如果只需要分解出一部分元组值,分解的时候可以把要忽略的部分用下划线 _ 进行标记 如下;
        let (justcode, _) = http404Error
        print("the status code is \(justcode)")
        
        // 此外,还可以通过下标访问元组中的单个元素,下标从0开始
        print("code : \(http404Error.0)")
        print("message : \(http404Error.1)")
        
        // 可以在定义元组的时候给单个元素命名,在获取的时候就可以通过这个名字进行获取
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status description is \(http200Status.description)")
        
        // 元组作为函数的返回值时非常有用,但并不适合创建复杂的数据结构。
        
        
        // 可选类型 用可选类型来处理值可能缺失的情况
         let possibleNumber = "123"
         let convertNumber = Int(possibleNumber)
        // print(convertNumber)
        // 上面的例子,convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int",  print(convertNumber) 输出: Optional(123)
        
        // 一个可选的Int被写作 Int? 而不是 Int. 问号表示包含的值是可选类型,也就是说可能包含Int值也可能不包含值.
        
        // nil
        // serverResponseCode 包含一个可选的 Int 值 404
        let serverResponseCode : Int? = 404
        // serverResponseCode 现在不包含值
        //serverResponseCode = nil;
        print("serverResponseCode: \(serverResponseCode!)")
        
//        nil不能用于非可选变量/常量, 如果代码中有常量/变量需要处理值缺失的情况,请将其声明为可选类型
//        var surveyAnswer: String?
//        print(surveyAnswer)
//
//        Objective-C 中的 nil 与 Swift 中的 nil 不一样.
//        Objective-C 中的 nil 是一个指向不存在的对象的指针,而Swift 中的 nil 不是一个指针,是一个确定的值,用于表示值缺失. 任何类型的可选状态都可以被设置为nil,不只是对象类型.
        
        // if语句以及强制解析
        // 可以使用 if语句 和 nil 比较来判断一个可选值是否包含值. 你可以使用等于(==)或不等(!=)来执行比较.
        if convertNumber != nil {
            print("contains some integer value")
        }
        
        // 当你确定可选类型确实包含有值得时候,可以在可选的名字的后面加一个感叹号(!) 来获取值. 这个感叹号表示"我知道这个可选一定有值,请使用它" 这被称之为可选值的强制解析. 需要注意的是如果强制解析convertNumber, 但是convertNumber中没有值时会引发一个运行时错误
        if convertNumber != nil {
            print("convertNumber has an integer value of \(convertNumber!)")
        }
        
        
        // 可选绑定
        // 使用可选绑定来判断可选类型是否包含值,如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在 if 和 while 语句中. 这条语句不仅可以用来判断可选类型中是否有值，同时可以将可选类型中的值赋给一个常量或者变量。
        if let actualNumber = Int(possibleNumber) {
            print(" \' \(possibleNumber) \' has an integer value of \(actualNumber)")
        } else {
            print(" \' \(possibleNumber) \' could not be converted to an integer")
        }
        // 上面这段代码的意思是: 如果 Int(possibleNumber) 返回的可选int包含一个值,那么就创建一个名为 actualNumber 的新常量,并将可选包含的值 赋值给它. 如果转换成功，actualNumber 常量可以在 if 语句的第一个分支中使用。
        
        // 你可以在可选绑定中使用常量和变量。如果你想在if语句的第一个分支中操作 actualNumber 的值，你可以改成 if var actualNumber，这样可选类型包含的值就会被赋给一个变量而非常量。
        
        if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
        
        // 隐式解析可选类型.
        // 例: 可选类型 String 和隐式解析可选类型 String 之间的区别
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // 需要 ! 来获取值.
        print(forcedString)
        
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // 不需要 ! 来获取值
        print(implicitString)
        
        // 因此,可以吧隐式解析的可选类型当做一个可以自动解析的可选类型, 我们要做的只是在声明的时候把 ! 放在类型的结尾,而不是每次取值的可选名字的结尾.
        
        // 注意: 在隐式解析可选类型 没有值的时候 尝试取值,会触发运行时错误.
//        let assumedStr: String!
//        let implicitStr: String = assumedStr // 不需要 ! 来获取值
//        print(implicitStr)
        
        // 在可选绑定中使用隐式解析可选类型检查并解析值
        if let defineString = assumedString {
            print(defineString)
        }
        
        
        // 错误处理
        // 使用断言进行调试
        // 调用 Swift 标准库的 assert(_:_:file:line:) 函数来写一个断言。向这个函数传入一个结果为 true 或者 false 的表达式以及一条信息，当表达式的结果为 false 的时候断言被触发, 这条信息会被显示，终止应用
//        let age1 = -3
//        assert(age1>0, "A person's age connot be less than zero")
//        assert(age1>0)
        
//        assertionFailure("failed")
    }

}
