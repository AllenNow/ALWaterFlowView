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
    func waterFlowViewItemHeight(_ view: MOLAWaterFlowView, at indexPath: MOLAIndexPath) -> CGFloat
    
    /// 返回 cell 的间距，可根据类型分别返回，默认为 8 个点
    /// - Parameters:
    ///   - flowView:   提供瀑布流视图给外部使用
    ///   - marginType: 间距的类型，分别有：上，左，下，右，每一行，每一列
    func waterFlowViewMargin(_ view: MOLAWaterFlowView, in section: Int, for marginType: MOLAWaterFlowViewCellMarginType) -> CGFloat
    
    ///  返回整体内边距
    /// - Parameters:
    ///   - flowView:   提供瀑布流视图给外部使用
    func waterFlowViewInset(_ view: MOLAWaterFlowView) -> UIEdgeInsets
    
    /// 点击 cell 时的回调
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - index:    cell 的索引
    func waterFlowView(_ view: MOLAWaterFlowView, didSelect indexPath: MOLAIndexPath)
    
    /// 分区头视图
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - sectionIndex: 分区索引
    func waterFlowView(_ view: MOLAWaterFlowView, viewForSectionHeaderIn section: Int) -> MOLAWaterFlowHeaderFooterView?
    
    /// 分区尾视图
    /// - Parameters:
    ///   - flowView: 提供瀑布流视图给外部使用
    ///   - sectionIndex: 分区索引
    func waterFlowView(_ view: MOLAWaterFlowView, viewForSectionFooterIn section: Int) -> MOLAWaterFlowHeaderFooterView?
    
    func waterFlowViewDidScroll(_ view: MOLAWaterFlowView)
}

public extension MOLAWaterFlowViewDelegate {
    func waterFlowViewItemHeight(_ view: MOLAWaterFlowView, at indexPath: MOLAIndexPath) -> CGFloat {DEFAULT_CELL_HEIGHT}
    
    func waterFlowViewMargin(_ view: MOLAWaterFlowView, in section: Int, for marginType: MOLAWaterFlowViewCellMarginType) -> CGFloat {DEFAULT_CELL_MARGIN}
    
    func waterFlowViewInset(_ view: MOLAWaterFlowView) -> UIEdgeInsets {UIEdgeInsets.zero}
    
    func waterFlowView(_ view: MOLAWaterFlowView, viewForSectionHeaderIn section: Int) -> MOLAWaterFlowHeaderFooterView? {nil}
    
    func waterFlowView (_ view: MOLAWaterFlowView, viewForSectionFooterIn section: Int) -> MOLAWaterFlowHeaderFooterView? { nil }
    
    func waterFlowViewDidScroll(_ view: MOLAWaterFlowView) {}
    
    func waterFlowView(_ view: MOLAWaterFlowView, didSelect indexPath: MOLAIndexPath) {}
}
