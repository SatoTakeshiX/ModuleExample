//
//  FrameworkA.swift
//  FrameworkA
//
//  Created by satoutakeshi on 2017/03/22.
//  Copyright © 2017年 Personal Factory. All rights reserved.
//

import Foundation

public let globalIntConstant = 10

// モジュール外から使用可能な型
open class SomeClass {}

// モジュール外から使用可能だが、モジュール外で継承不可能な型
public class SomePublicClass {
    //モジュール内でのみ使用可能なプロパティ
    internal let someInternalConstant = 1
    
    //　同一ソースファイル内でのみ使用可能なプロパティ
    fileprivate var someFileprivateVariable = 1
    
    // SomePublicClass内でのみ使用可能なメソッド
    private func somePrivateMethod() {}
}


public struct SomeStruct{
    //SomeStructはpublic
    //idプロパティ、someMethod()メソッドはモジュール外からは見れない
    //SomeStructはモジュール外からインスタンス化ができない
    var id: Int
    func someMethod(){}
}

public struct SomeStruct2{
    public let id: Int
    public let name: String
    
    public init?(dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? Int, let name = dictionary["name"] as? String else {
            return nil
        }
        
        self.id = id
        self.name = SomeStruct2.decorate(name: name)
    }
    
    private static func decorate(name: String) -> String {
        return "【\(name)】"
    }
    

}
