//
//  UIViewController.swift
//  Pods-AstanaTap
//
//  Created by Rystem Asqar on 1/24/24.
//

import Foundation

public struct User: Codable {
    public let id: String
    public let name: String
    
    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

