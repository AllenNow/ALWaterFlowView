//
//  TIMFlowViewDelegate.swift
//  TIMFlowView
//
//  Created by Allen Gao on 2023/1/10.
//  Copyright © 2023 Xiamen Rilla Technology Co., LTD. All rights reserved.
//

public protocol MOLAWaterFlowViewDelegate: UIScrollViewDelegate {
    /// 返回 cell 的高度
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - index:    cell 的索引
    func itemHeight(in flowView: MOLAWaterFlowView, at indexPath: MOLAIndexPath) -> CGFloat
    
    /// 返回 cell 的间距，可根据类型分别返回，默认为 8 个点
    /// - Parameters:
    ///   - flowView:   提供瀑布流视图给外部使用
    ///   - marginType: 间距的类型，分别有：上，左，下，右，每一行，每一列
    func margin(in flowView: MOLAWaterFlowView, at section: Int, for marginType: MOLAWaterFlowViewCellMarginType) -> CGFloat
    
    ///  返回整体内边距
    /// - Parameters:
    ///   - flowView:   提供瀑布流视图给外部使用
    func inset(in flowView: MOLAWaterFlowView) -> UIEdgeInsets
    
    /// 点击 cell 时的回调
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - index:    cell 的索引
    func didSelected(in flowView: MOLAWaterFlowView, at indexPath: MOLAIndexPath)
    
    /// 分区头视图
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - sectionIndex: 分区索引
    func viewForSectionHeader(in flowView: MOLAWaterFlowView, at section: Int) -> MOLAWaterFlowHeaderFooterView?
    
    /// 分区尾视图
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - sectionIndex: 分区索引
    func viewForSectionFooter(in flowView: MOLAWaterFlowView, at section: Int) -> MOLAWaterFlowHeaderFooterView?
}

public extension MOLAWaterFlowViewDelegate {
    func itemHeight(in flowView: MOLAWaterFlowView, at indexPath: MOLAIndexPath) -> CGFloat { DEFAULT_CELL_HEIGHT }
    func margin(in flowView: MOLAWaterFlowView, at section: Int, for marginType: MOLAWaterFlowViewCellMarginType) -> CGFloat { DEFAULT_CELL_MARGIN }
    func inset(in flowView: MOLAWaterFlowView) -> UIEdgeInsets {return UIEdgeInsets.zero}
    func didSelected(in flowView: MOLAWaterFlowView, at indexPath: MOLAIndexPath)  { }
    func viewForSectionHeader(in flowView: MOLAWaterFlowView, at section: Int) -> MOLAWaterFlowHeaderFooterView? { nil }
    func viewForSectionFooter(in flowView: MOLAWaterFlowView, at section: Int) -> MOLAWaterFlowHeaderFooterView? { nil }
}
