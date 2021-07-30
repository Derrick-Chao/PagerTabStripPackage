//
//  ButtonBarView.swift
//  PagerTabStrip
//
//  Created by DerrickChao on 2021/7/29.
//

import UIKit

public struct ButtonBarViewSettings {
    public static let defaultSetting = ButtonBarViewSettings()
    
    public var buttonBarBackgroundColor: UIColor = .white
    public var barInteritemSpacing: CGFloat = 12.0
    public var viewHeight: CGFloat = 70.0
    public var itemTextFont: UIFont = UIFont.systemFont(ofSize: 16.0, weight: .regular)
    public var itemLeftRightPadding: CGFloat = 20.0
    public var itemBorderColor: UIColor = .lightGray
    public var itemUnselectedBackgroundColor: UIColor = .white
    public var itemSelectedBackgroundColor: UIColor = .black
    public var itemSelectedTextColor: UIColor = .white
    public var itemUnselectedTextColor: UIColor = .black
    public var itemShadowColor: UIColor = .black
    public var barLeftRightInset: CGFloat = 12.0
}

class ButtonBarView: UICollectionView {
    // MARK:- Outlets
    
    // MARK:- Public property
    
    // MARK:- Private property
    
    // MARK:- Initialization
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initView()
    }
    
    // MARK:- Layouts
    private func initView() {
     
        let cellNib = UINib(nibName: "ButtonBarCell", bundle: .module)
        register(cellNib, forCellWithReuseIdentifier: "ButtonBarCell")
        showsHorizontalScrollIndicator = false
    }
    
    // MARK:- Public methods
    
    // MARK:- Private methods
    
    // MARK:- Actions

}
