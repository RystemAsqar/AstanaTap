//
//  UIViewController.swift
//  Pods-AstanaTap
//
//  Created by Rystem Asqar on 1/24/24.
//

import UIKit

public class UIViewControllerf: UIViewController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        fetchData()
    }
    
    func fetchData() {
        if let path = Bundle.main.path(forResource: "countries", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                if let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                    let names = jsonArray.map { $0["name"] as? String ?? "" }
                    print(names.count)
                }
            } catch {
                print("Error reading JSON file: \(error)")
            }
        }
    }
}
