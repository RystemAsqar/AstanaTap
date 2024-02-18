//
//  CollectionViewCell.swift
//  AppModel
//
//  Created by Rystem Asqar on 2/16/24.
//

import UIKit
import SnapKit

public class CollectionViewCell: UICollectionViewCell {
    static let IDENTIFIER = "CollectionViewCell"
    
    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(named: "asia")
        return icon
    }()
    public lazy var label: UILabel = {
        let label = UILabel()
        label.text = "adsf"
        label.textColor = .white
        return label
    }()
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
//        contentView.backgroundColor = UIColor(named: "MainColor")
        contentView.layer.cornerRadius = 10
        contentView.addSubview(icon)
        contentView.addSubview(label)
    }
    func setupConstraints() {
        icon.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().multipliedBy(0.7)
        }
        label.snp.makeConstraints {
            $0.top.equalTo(icon.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
        }
    }
}
