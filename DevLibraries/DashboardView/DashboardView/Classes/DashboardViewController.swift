//
//  DashboardViewController.swift
//  Pods
//
//  Created by Rystem Asqar on 2/5/24.
//
//

import UIKit
import SnapKit

class DashboardViewController: UIViewController {
    
    var continents = ["All", "Asia", "Europe", "Africa", "North America", "South America", "Oceania"]
    var backColors = ["MainColor", "blue", "pink", "yellow", "green", "MainColor", "MainColor"]
    
    let titleView: UIView = {
        let titleView = UIView()
        return titleView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Hi, good morning \nRustem👋🏻"
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    private lazy var profileNav: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "profileNav")
        return image
    }()
    private lazy var dividerView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(named: "mint")
        return view
    }()
    private lazy var dividerView2: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(named: "mint")
        return view
    }()
    
    
    private lazy var headerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = UIColor(named: "MainColor")
        return view
    }()
    private lazy var headerViewLabel: UILabel = {
        let label = UILabel()
        label.text = "Let’s play with friends 📌"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    private lazy var headerViewSecondaryLabel: UILabel = {
        let label = UILabel()
        label.text = "Invite friends and get more points"
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 16)
        label.layer.opacity = 0.8
        return label
    }()
    private lazy var capitalsLabel: UILabel = {
        let label = UILabel()
        label.text = "Quiz by Capitals"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    private lazy var flagsLabel: UILabel = {
        let label = UILabel()
        label.text = "Quiz by Flag"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    private lazy var bottomView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = UIColor(named: "MainColor")
        return view
    }()
    private lazy var bottomViewLabel: UILabel = {
        let label = UILabel()
        label.text = "What country flag is it? 🇰🇿"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    private lazy var bottomViewSecondaryLabel: UILabel = {
        let label = UILabel()
        label.text = "Tap to play quiz.. "
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 16)
        label.layer.opacity = 0.8
        return label
    }()
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.IDENTIFIER)
        //        collectionView.contentInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDelegates()
        setupNavBar()
        setupViews()
        setupConstraints()
        
    }
    
    // MARK: - Properties
    var presenter: ViewToPresenterDashboardProtocol?
    
}

extension DashboardViewController: PresenterToViewDashboardProtocol, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func setupNavBar() {
        self.navigationItem.titleView = titleView
    }
    func setupViews() {
        view.backgroundColor = .white
        titleView.addSubview(titleLabel)
        titleView.addSubview(profileNav)
        view.addSubview(headerView)
        headerView.addSubview(headerViewLabel)
        headerView.addSubview(headerViewSecondaryLabel)
        view.addSubview(dividerView)
        view.addSubview(dividerView2)
        view.addSubview(collectionView)
        view.addSubview(capitalsLabel)
        view.addSubview(flagsLabel)
        view.addSubview(bottomView)
        bottomView.addSubview(bottomViewLabel)
        bottomView.addSubview(bottomViewSecondaryLabel)
    }
    func setupDelegates() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    func setupConstraints() {
        titleView.snp.makeConstraints {
            $0.width.equalTo(343)
            $0.height.equalTo(70)
        }
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(20)
            $0.leading.equalToSuperview().offset(10)
        }
        profileNav.snp.makeConstraints {
            $0.top.equalToSuperview().offset(30)
            $0.right.equalToSuperview().offset(10)
        }
        headerView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(140)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(343)
            $0.height.equalTo(174)
        }
        headerViewLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview().inset(10)
            $0.leading.equalToSuperview().offset(20)
        }
        headerViewSecondaryLabel.snp.makeConstraints {
            $0.top.equalTo(headerViewLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
        }
        dividerView.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom).offset(20)
            $0.left.right.equalToSuperview()
            $0.height.equalTo(0.3)
        }
        capitalsLabel.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom).offset(40)
            $0.left.equalTo(headerView.snp.left)
        }
        collectionView.snp.makeConstraints {
            $0.top.equalTo(capitalsLabel.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(343)
            $0.height.equalTo(115)
        }
        dividerView2.snp.makeConstraints {
            $0.top.equalTo(collectionView.snp.bottom).offset(20)
            $0.left.right.equalToSuperview()
            $0.height.equalTo(0.3)
        }
        flagsLabel.snp.makeConstraints {
            $0.top.equalTo(dividerView2.snp.bottom).offset(20)
            $0.left.equalTo(headerView.snp.left)
        }
        bottomView.snp.makeConstraints {
            $0.top.equalTo(flagsLabel.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(343)
            $0.height.equalTo(154)
        }
        bottomViewLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview().inset(10)
            $0.leading.equalToSuperview().offset(20)
        }
        bottomViewSecondaryLabel.snp.makeConstraints {
            $0.top.equalTo(bottomViewLabel.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        continents.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 134, height: 115)
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.IDENTIFIER, for: indexPath) as! CollectionViewCell
        cell.label.text = continents[indexPath.item]
        cell.backgroundColor = UIColor(named: backColors[indexPath.item])
        cell.layer.cornerRadius = 10
        switch backColors[indexPath.item] {
            case "yellow": cell.label.textColor = .black
            case "green": cell.label.textColor = .black
            default:
            cell.label.textColor = .white
        }
        
        return cell
    }
}

