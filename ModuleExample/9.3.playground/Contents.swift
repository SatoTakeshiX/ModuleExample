//: Playground - noun: a place where people can play

import UIKit

//: # 9.3名前空間
//: p238を読む
//: ## import文
//: 別モジュールにアクセスするにはimport文でモジュールをインポートする必要がある
import FrameworkA
import FrameworkB
//ここではモジュールで公開されている要素に何も指定することなくアクセス可能

//: ## 名前の衝突の回避
//: モジュールは名前空間の単位。モジュール間で名前が重複しても問題ない。重複した名前を使用する際は曖昧さ回避のために先頭にモジュール名を明示する必要がある

//FrameworkAで定義されたglobalIntConstant
print(FrameworkA.globalIntConstant)
//FrameworkBで定義されたglobalIntConstant
print(FrameworkB.globalIntConstant)
//globalIntConstantが指すものがあいまいなのでコンパイルエラー
//print(globalIntConstant)

//: ## 不要になった3文字接頭辞
//: Objective-Cでは名前空間がなかったため、Cocoaのクラス名にはNSなどの2文字の接頭辞がつけられ、デベロッパーのクラス名にはABCなどの3文字の接頭辞を追加することが推奨されていた。
//: Swiftは名前空間によって名前衝突を回避できるので3文字接頭辞の規則に従う必要はない


