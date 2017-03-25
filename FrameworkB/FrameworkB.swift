//
//  FrameworkB.swift
//  FrameworkB
//
//  Created by satoutakeshi on 2017/03/23.
//  Copyright © 2017年 Personal Factory. All rights reserved.
//

import Foundation

public let globalIntConstant = 100

public struct SomeStruct{
    //SomeStructはpublic
    //idプロパティ、someMethod()メソッドがモジュール外からみれる
    //SomeStructはモジュール外からインスタンス化できる
    public var id: Int//アクセスレベルpublic
    
    public init(id:Int) {//アクセスレベルpublic
        self.id = id
    }
    public func someMethod(){}//アクセスレベルpublic
}
