//
//  TIMFlowViewDataSource.swift
//  TIMFlowView
//
//  Created by Allen Gao on 2023/1/10.
//  Copyright © 2023 Xiamen Rilla Technology Co., LTD. All rights reserved.
//

import Foundation

public struct MOLAIndexPath: Hashable {
    
    /// 分区索引
    public var section: Int
    
    /// item 索引
    public var row: Int
    
    init(_ section: Int, _ item: Int) {
        self.section = section
        self.row = item
    }
}

public protocol TIMFlowViewDataSource: NSObjectProtocol {
    
    /// 返回分组数量，默认为 1
    /// - Parameter flowView: 提供视图给外面设置
    func numberOfSections(in flowView: MOLAWaterFlowView) -> Int
    
    
    /// 返回每个分区的 cell 数量
    /// - Parameters:
    ///   - flowView: 提供视图给外面设置
    ///   - section: 提供分区的索引
    func numberOfItems(in flowView: MOLAWaterFlowView, at section: Int) -> Int
    
    /// 返回列数，默认为两列
    /// - Parameter flowView: 提供视图给外面设置
    func numberOfColumns(in flowView: MOLAWaterFlowView, at section: Int) -> Int
    
    /// 返回 index 对应索引的 cell
    /// - Parameters:
    ///   - flowView: 提供视图给外面设置
    ///   - index:    提供索引给外面使用
    func flowViewItem(in flowView: MOLAWaterFlowView, at indexPath: MOLAIndexPath) -> MOLAWaterFlowViewItem?
}

public extension TIMFlowViewDataSource {
    func numberOfSections(in flowView: MOLAWaterFlowView) -> Int { 1 }
    func numberOfColumns(in flowView: MOLAWaterFlowView, at section: Int) -> Int { DEFAULT_COLUMN_COUNT }
}
