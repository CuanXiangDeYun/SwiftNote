//
//  CollectionTypes.swift
//  Swift4.2
//
//  Created by 王浩兵 on 2018/8/14.
//  Copyright © 2018年 爨乡的云. All rights reserved.
//

import UIKit

class CollectionTypes: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "集合类型"
        
        // Swift 提供了 `Arrays`, `Sets`, `Dictionaries` 三种基本的集合类型用来存储集合数据. 存储的时候,数据的值类型必须明确,不能把不同类型的数据插入其中.
        
        // - 数组 Arrays : 有序数据的集合
        // - 集合 Sets : 无序无重复数据的集合
        // - 字典 Dictionaries : 无序的键值对的集合
        
        //### 集合的可变性
        // 如果我们把 `Arrays`, `Sets`, `Dictionaries` 声明为变量,那么这个集合是可变的. 如果将其声明为常量,那么它将是不可变的,大小和内容都不能被改变.

        //### 数组 Arrays
        // 创建空数组
        var someInts = [Int]()
        print("\(someInts.count) items")
        
        someInts.append(10)
        print("\(someInts.count) items")
        
        someInts = []
        print("\(someInts.count) items")
        
        // 创建一个带有默认值的数组
        // Swift 的 Array 类型还提供了一个可以创建特定大小且所有数据都被默认的构造方法. 我们可以准备加入新数据的数据项和合适类型的初始值(repeat)传入数组构造函数:
        let threeDouble = Array(repeating: 0.0, count: 3)
        print(threeDouble) //[0.0, 0.0, 0.0]
        
        // 通过两个数组相加减创建一个数组
        let anotherThreeDouble = Array(repeating: 2.5, count:3)
        print(anotherThreeDouble) //[2.5, 2.5, 2.5]
        
        let sixDouble = threeDouble + anotherThreeDouble;
        print(sixDouble) //[0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
        
        // 通过使用数组字面量来构造数组
        // 数组字面量是一系列由逗号分割并由方括号包含的数值.
        
        // 如下:创建一个名为fruitList并储存String的数组
        var fruitList: [String] = ["apple", "orange"]
        print(fruitList)
        
        // 由于Swift的类型推断机制,所以当我们用字面量来构造只拥有相同数值类型的数组的时候,我们不必把数组的类型定义清除,因此,上面的fruitList数组也能这样写:
        //var fruitList = ["apple", "orange", "banner"]
        // 因为所有数组字面量中的值都是相同的类型,Swift可以推断出[String]是fruitList中变量的正确类型
        
        // 访问和修改数组
        /**
         count 获取数组元素的数量
         isEmpty 判断数组是否为空
         append() 在数组后面添加新的数据项
         insert(at:) 在某个索引之前添加数据
         remove(at:) 移除某个索引位置的数据
         removeLast() 移除数组的最后一个元素
         removeFirst() 移除第一个元素
         removeFirst(n) 移除前n项元素
         removeLast(n) 移除后n项元素
         removeAll() 移除所有元素
         
         for-in 循环遍历数组中的所有数据项
         enumerated() 返回一个由每一个数据项索引值和数据值组成的元组
        **/
        // count 获取数组元素的数量
        print("\(fruitList.count)")
        
        // isEmpty 判断数组是否为空
        print("\(fruitList.isEmpty)")
        
        // append(_:) 在数组后面添加新的数据项
        fruitList.append("banner")
        
        // 或者使用加法赋值运算符也可以在数组后面添加一个或者多个拥有相同类型的数据项
        fruitList += ["grape"]
        fruitList += ["cherry", "lemon"]
        print(fruitList)
        
        // 使用下标语法来获取数组中的数据项,数组的索引是从0开始.
        let firstItem = fruitList[0]
        print("the first fruit is \'\(firstItem)\'")
        
        // 还可以利用下标来一次性修改一系列的数据项,即使和原来的数量是不一样的也可以做修改.
        // 如下: 把 "grape", "cherry", "lemon" 这三种水果改为 "watermelon", "mango" 两种.
        fruitList[3...5] = ["watermelon", "mango"]
        print(fruitList)
        
        // insert(at:) 在某个索引之前添加数据
        fruitList.insert("peach", at: 2)
        print(fruitList)
        
        // 删除元素
        /**
        // 移除某个索引位置的数据, 并返回被移除的数据项,不需要的时候可以选择无视它.
        let removedItem = fruitList.remove(at: 2)
        print(removedItem)
        print(fruitList)
        
        // 注意: 对索引越界的数据进行检索或者设置新的数据时,会引起一个运行时错误. 因此需要注意规避越界等情况.
        // Index out of range
        // fruitList.remove(at: fruitList.count)
        
        
        // removeLast() 移除最后一项
        fruitList.removeLast()
        
        // removeFirst() 移除第一项
        fruitList.removeFirst()
        
        // removeFirst(n) 移除前n项
        fruitList.removeFirst(2)
        
        // removeLast(n) 移除后n项
        fruitList.removeLast(2)
        
        // removeAll() 移除所有
        fruitList.removeAll()
         **/
 
        // 数组的遍历
        // 使用 for-in 循环遍历数组中的所有数据项
        for item in fruitList {
            print(item)
        }
        
        // 同时获取index和对应的值
        // enumerated()返回一个由每一个数据项索引值和数据值组成的元组
        for (index, value) in fruitList.enumerated() {
            print("Item \(index): \(value)")
        }
        
        
        //### 集合 Sets
        // 集合是用来存储相同类型没有确定顺序的值. 当集合元素不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组.
        
        //#### 集合类型语法
        // Swift中Set类型被写为 Set<Element> ,这里的Element表示Set中允许存储的类型,和数组不同的是,集合没有等价的简化形式
        // 创建和构造一个空的集合
        var letters = Set<Character>()
        print("\(letters.count) items")
        
        // 此外,如果上下文提供了类型信息,比如作为函数的参数或者已知类型的变量或常量,我们可以通过一个空的数组字面量创建一个空的Set
        letters.insert("a")
        print(letters) // ["a"] // letters 现在含有1个 Character 类型的值
        
        letters = []
        print(letters) // [] // letters 现在是一个空的 Set, 但是它依然是 Set<Character> 类型
        
        // 用数组字面量创建集合
        // 可以用数组字面量来构造集合,并且可以使用简化形式写一个或者多个值作为集合元素
        var languages: Set<String> = ["Objective-C", "Swift", "Java", "Java"]
        print(languages)
        
        // 一个 Set 类型不能从数组字面量中被单独推断出来,因此 Set 类型必须显式声明. 然而,由于Swift的类型推断功能,如果你想使用一个数组字面量构造一个Set并且该数组中的所有元素的类型相同,那么你无须写出Set的具体类型,如下,可以采用简化形式代替:
        // var ioslanguage: Set = ["Objective-C", "Swift"];
        // 由于数组字面量中的所有元素类型相同，Swift 可以推断出Set<String>作为ioslanguage变量的正确类型。
        
        // 访问和修改一个集合
        /**
         count 获取Set元素的个数
         isEmpty 检查集合是否为空
         insert() 插入一个新元素
         remove() 移除一个某个元素
         removeAll() 删除所有元素
         contains() 是否包含某个元素
         
         for-in 遍历一个集合
         sorted() 按照特定顺序来遍历一个set的值
        **/
        
        // count 获取Set元素数量
        print("\(languages.count)")
        // isEmpty 检查集合是否为空
        print("\(languages.isEmpty)")
        
        // insert() 插入一个新元素
        languages.insert("Html")
        print(languages)
        
        // remove 移除一个某个元素
        let removedItem = languages.remove("Html")
        print(removedItem ?? "j")
        // 如果该值是Set的一个元素则删除该元素,并且返回被删除的元素值. 否则如果该Set不包含该值,则返回nil.
        
        // removeAll() 删除所有元素
        //languages.removeAll()
        //print("languages count : \(languages.count)")
        
        // contains() 是否包含某个元素
        let contained = languages.contains("Html")
        print("\(contained ? "包含" : "不包含")")

        // 遍历一个集合
        // for-in 遍历
        for language in languages {
            print("\(language)")
        }
        print("")
        
        // 由于Set类型没有确定的顺序,为了按照特定顺序来遍历一个set的值,可以使用sorted() 方法,他将返回一个有序数组,这个数组的元素排列顺序由操作符 '<' 对元素进行比较的结果来确定
        for language in languages.sorted() {
            print(language)
        }
        
        
        //### 集合操作
        // 可以高效地完成Set的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，或者判断两个集合是否全包含，部分包含或者不相交。
        /**
         intersection() 根据两个集合中都包含的值创建一个新的集合
         symmetricDifference() 根据在一个集合中但不在两个集合中的值创建一个新的集合
         union() 方法根据两个集合的值创建一个新的集合
         subtracting() 根据不在该集合中的值创建一个新的集合
        **/
        
        let setA: Set = [1, 3, 5, 7, 9]
        let setB: Set = [0, 2, 4, 6, 8]
        let setC: Set = [2, 3, 5, 7]
        
        // intersection() 根据两个集合中都包含的值创建一个新的集合,求交集
//        let tempA = setA.intersection(setB)
//        print(tempA) // []
        
        let tempA = setA.intersection(setC).sorted()
        print(tempA) // [3, 5, 7]
        
        // symmetricDifference() 根据在一个集合中但不在两个集合中的值创建一个新的集合
        let tempB = setA.symmetricDifference(setC).sorted()
        print(tempB) // [1, 2, 9]
        
        // union() 方法根据两个集合的值创建一个新的集合
        let tempC = setA.union(setB).sorted();
        print(tempC) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        
//        let tempC = setA.union(setC).sorted()
//        print(tempC) // [1, 2, 3, 5, 7, 9]
        
        // subtracting() 根据不在该集合中的值创建一个新的集合
//        let tempD = setA.subtracting(setB).sorted()
//        print(tempD) // [1, 3, 5, 7, 9]
 
        let tempD = setA.subtracting(setC).sorted()
        print(tempD) // [1, 9]
        
        // 集合成员关系和相等
        /***
         == 判断两个集合是否包含全部相同的值
         isSubset(of:) 判断一个集合中的值是否也被包含在另外一个集合中, 即A是否是B的子集
         isStrictSubset(of:) 判断一个集合是否是另外一个集合的子集, 并且两个集合并不相等, 即A是否是B的真子集
         isSuperset(of:) 判断一个集合中包另一个集合中所有的值,即A是否是B的超集
         isStrictSuperset(of:) 判断一个集合是否是另外一个集合的父集, 并且两个集合并不相等,即A是否是B的真超集
        ***/
        
        // == 判断两个集合是否包含全部相同的值
        let setX: Set = [1, 2, 3]
        let setY: Set = [1, 2, 3, 4, 5, 6]
        let setZ: Set = [7, 8, 9]
        
        if setX==setY {
            print("setX == setY")
        } else {
            print("setX != setY")
        }
        
        // isSubset(of:) 判断一个集合中的值是否也被包含在另外一个集合中, 即A是否是B的子集
        if setX.isSubset(of: setY) {
            print("isSubset")
        } else {
            print("not Subset")
        }
        
        // isSuperset(of:) 判断一个集合中包另一个集合中所有的值
        if setY.isSuperset(of: setX) {
            print("isSuperset")
        } else {
            print("not Superset")
        }
        
        // isStrictSubset(of:) 判断一个集合是否是另外一个集合的子集, 并且两个集合并不相等,
        if setX.isStrictSubset(of: setY) {
            print("isStrictSubset")
        } else {
            print("not StrictSubset")
        }
        
        // isStrictSuperset(of:) 判断一个集合是否是另外一个集合的父集, 并且两个集合并不相等
        if setX.isStrictSuperset(of: setZ) {
            print("isStrictSuperset")
        } else {
            print("not StrictSuperset")
        }
        
        // isDisjoint(with:) 判断两个集合是否不含有相同的值(是否没有交集)
        if setX.isDisjoint(with: setZ) {
            print("setX 和 setZ 没有交集")
        } else {
            print("setX 和 setZ 有交集")
        }
        
        //### 字典
        // 字典是一个存储多个相同类型的值得容. 每个值(value)都有一个唯一关联的键(key). 和数组的数据不一样,字典中的数据项并没有具体的顺序.
        
        // 字典类型简化语法
        // Swift 的字典使用Dictionary<Key, Value>定义，其中Key是字典中键的数据类型，Value是字典中对应于这些键所存储值的数据类型。也可以用[Key: Value]这样简化的形式去创建一个字典类型。
        // 创建一个空字典
        var dict = [Int: String]()
        // 如上,创建了一个 `[Int: String]` 类型的空字典,它的键是Int型, 值是String型
        
        // dict 包含一个键值对
        dict[10] = "ten"
        print(dict) // [10: "ten"]
        
        // 现在是一个空字典
        dict = [:]
        print(dict) // [:]
        
        // 当然,也可以使用字面量来创建字典.
        // [key 1: value 1, key 2: value 2, key 3: value 3]
        let dic: [Int: String] = [1: "one", 2:"two", 3:"three", 4: "four", 5: "five"]
        print(dic)
        
        // 当然,如果它的键和值都有各自一致的类型，那么就不必写出字典的类型。Swift 可以推断出Dictionary<Int, String>是dictionary字典的正确类型。 dictionary字典也可以用这种简短方式定义：
        var dictionary = [1: "one", 2:"two", 3:"three", 4: "four", 5: "five"]
        print(dictionary)
        
        // 访问和字典
        /**
         count 获取键值对的数量
         isEmpty 判断字典是否为空
         dictionary[key] = value 使用下标语法来添加新的数据项
         updateValue(_:forKey:) 设置或者更新特定键对应的值
         let value = dictionary[key] 使用下标语法来在字典中检索特定键对应的值
         dictionary[value] = nil 使用下标语法来通过给某个键对应的值赋值为nil来从字典里移除一个键值对
         removeValue(forKey:) 用来在字典中移除键值对
         removeAll() 移除所有键值对
         
         for-in 循环遍历字典中的键值对,每个数据项以 (key, value) 的元组形式返回
         访问 keys 或者 value 也可以遍历字典的键或值
        **/
        print("\(dictionary.count)")
        print("\(dic.isEmpty ? "是空字典" : "不是空字典")")
        
        // 我们也可以使用下标语法来添加新的数据项
        dictionary[6] = "six"
        print(dictionary)
        
       
        // updateValue(_:forKey:) 设置或者更新特定键对应的值,使用该方法更新时: 如果这个键不存在对应的值就会设置新值, 存在时就更新已存在的值.
        // updateValue(_:forKey:) 方法会返回更新之前的原值,这样我们就可以检查是否更新成功.
//        let oldValue = dictionary.updateValue("sixxx", forKey: 6)
//        print(oldValue ?? "可选String") // 返回对应值的类型的可选值.
        
        // 如果存在旧值,那么这个可选值就包含旧值;如果不存在,将会是nil
        if let oldValue = dictionary.updateValue("sixxx", forKey: 6) {
            print("the oldValue of '6' is \(oldValue)")
        }
        
        print(dictionary)
        
        // 也可以使用下标语法来在字典中检索特定键对应的值.
        // 因为有可能请求的键没有对应的值存在,字典的下标访问会返回对应值的类型的可选值. 如果这个字典包含请求键所对应的值,下标会返回一个包含这个存在值的可选值,否则返回nil
        if let name = dictionary[6] {
            print("The name of '6' is \(name)")
        } else {
            print("The value is not in this dictionary")
        }
        
        // 也可以使用下标语法来通过给某个键对应的值赋值为nil来从字典里移除一个键值对
        dictionary[6] = nil
        print(dictionary)
        
        // removeValue(forKey:) 用来在字典中移除键值对.
        // 使用这个方法在键值对存在的情况下会移除该键值对并返回被移除的值, 在没有值的情况下会返回nil
        if let removedValue = dictionary.removeValue(forKey: 5) {
            print("the removed value is \(removedValue)")
        } else {
            print("does not exist a value")
        }
        
//        // removeAll() 移除所有键值对
//        dictionary.removeAll()
//        print(dictionary)
        
        // 字典的遍历
        // 使用 for-in 循环遍历字典中的键值对, 每个数据项以 (key, value) 的元组形式返回
        for (key, value) in dictionary {
            print("\(key) : \(value)")
        }
        
        // 通过访问 keys 或者 value 也可以遍历字典的键或值
        for key in dictionary.keys {
            print("\(key)")
        }
        for value in dictionary.values {
            print("\(value)")
        }
        
        // 可以使用 keys 或者 values 属性构造一个新的数组
        // Swift 的字典类型是无序集合类型。为了以特定的顺序遍历字典的键或值，可以对字典的keys或values属性使用sorted()方法。
        let keysArr = [Int](dictionary.keys.sorted())
        let valuesArr = [String](dictionary.values.sorted())
        print("\(keysArr) \n \(valuesArr)")
        
    }

}
