//
//  MOLAWaterFlowHeaderFooterView.swift
//  MOLAWaterFlowView
//
//  Created by Allen Gao on 2023/1/10.
//  Copyright © 2023 Xiamen Rilla Technology Co., LTD. All rights reserved.
//

import UIKit

open class MOLAWaterFlowHeaderFooterView: UIView {

   /// 重用标识符
    internal var reuseIdentifier: String
    
    public convenience init(with reuseIdentifier: String) {
        self.init()
        self.reuseIdentifier = reuseIdentifier
    }
    
    public override init(frame: CGRect) {
        reuseIdentifier = ""
        super.init(frame: frame)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
