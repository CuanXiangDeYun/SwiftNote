//
//  TableViewCell.swift
//  Swift4.2
//
//  Created by 王浩兵 on 2018/8/8.
//  Copyright © 2018年 爨乡的云. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var title : UILabel!
    
    /// 初始化方法
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        if !self.isEqual(nil) {
            let rect = CGRect(x: 15, y: 5, width: self.frame.size.width-15*2, height: self.frame.size.height-10)
            title = UILabel(frame: rect)
            title.font = UIFont.boldSystemFont(ofSize: 16)
            self.contentView.addSubview(title)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
