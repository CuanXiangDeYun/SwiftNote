//
//  ViewController.swift
//  Swift4.2
//
//  Created by 王浩兵 on 2018/8/8.
//  Copyright © 2018年 爨乡的云. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    /// 创建tableView和数组
    var tableView : UITableView!
    
    var dataSource = NSMutableArray.init()
    var titleArray = NSMutableArray.init()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// navi属性
        title = "Swift Note"
        
        tableView = UITableView(frame: self.view.frame)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "BaseTableViewCellID")
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
        addViewController(title: "前言", className: "ForewordViewController")
        addViewController(title: "基础语法", className: "BasicGrammar")
        addViewController(title: "基本运算符", className: "BasicOperators")
        addViewController(title: "字符和字符串", className: "StringsAndCharacters")
        addViewController(title: "集合类型", className: "CollectionTypes")
        addViewController(title: "控制流", className: "ControlFlow")
    }
    
    /// UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let str : String = "BaseTableViewCellID"
        var cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: str, for: indexPath) as! TableViewCell
        if cell.isEqual(nil) {
            cell = TableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: str)
        }
        
        cell.title.text = titleArray[indexPath.row] as? String
        return cell
    }
    
    /// UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let className : String = dataSource[indexPath.row] as! String
        
        let vc = ForewordViewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
        
        print(titleArray[indexPath.row], dataSource[indexPath.row])
    }
    
    /// 自定义方法
    private func addViewController(title:String, className:String) {
        
        dataSource.add(className)
        titleArray.add(title)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

