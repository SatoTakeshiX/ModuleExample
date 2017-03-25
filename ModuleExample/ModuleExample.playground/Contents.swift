

import UIKit

//: # 再利用可能かつ配布可能なプログラム
//: モジュール:配布可能なプログラムの単位。他プログラムへインポートできる。Swiftではプログラムの名前空間の単位。
//: 公開するインターフェイスを絞ることでモジュール外からの想定外の利用を防ぐことができる。

//: # モジュールの作成方法

//: ２つのモジュール提供方法
//: * フレームワーク
//: * アプリケーション

//: p235-236

//: # 名前空間
//: p238
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

//: # 不要になった3文字接頭辞
//: Objective-Cでは名前空間がなかったため、Cocoaのクラス名にはNSなどの2文字の接頭辞がつけられ、デベロッパーのクラス名にはABCなどの3文字の接頭辞を追加することが推奨されていた。
//: Swiftは名前空間によって名前衝突を回避できるので3文字接頭辞の規則に従う必要はない

//: # 9.4 アクセスコントール
//: p240

//: ## アクセスレベル - 公開範囲の分類
//: * open
//:     * モジュール内外のすべてのアクセスを許可する
//: * public 
//:     * モジュール内外のすべてのアクセスを許可するが、モジュール外で継承したりオーバーライドすることはできない
//: * internal
//:     * 同一モジュール内のアクセスのみを許可する
//: * fileprivate
//:     * 同一ソースファイル内のアクセスのみを許可する
//: * private
//:     * 対象の要素が属しているスコープ内のアクセスのみを許可する

//: FrameworkAで定義を確認

//: ## デフォルトのアクセスレベル
//: 何も指定しなかった場合のアクセスレベルはデフォルトになる
//: 型全体のデフォルトのアクセスレベルはinternal
//: 型を構成する要素のデフォルトのアクセスレベルは型全体のアクセスレベルによる。
//: 型全体がprivate, fileprivateなら要素のデフォルトのアクセスレベルも同じ
//: 型全体がopen, public, internalなら要素のデフォルトのアクセスレベルは**internal**
//: ->デフォルトでopne,publicにならないので注意！！  
//: FrameworkAで定義を確認
//: FrameworkBで定義を確認

//let a = FrameworkA.SomeStruct() //プロパティが外部に公開されていないのでインスタンス化できない。
let b = FrameworkB.SomeStruct(id: 10)//プロパティが外部に公開されているのでインスタンス化できる
print(b.id)

//: # モジュールヘッダ
//: Objective-Cとは違いSwiftはインターフェースを記述するヘッダファイルをプログラマーが記述する必要はない。  
//: Xcodeを通じて外部からアクセス可能なインターフェースのみが記述されたモジュールヘッダを閲覧できる  
//: モジュールにカーソルをあわせて*command + クリック*
//: FrameworkAのSomeStruct2を確認

//: # ドキュメントコメント
//: ドキュメントコメントはインターフェースに対するコメント。モジュールの利用者が閲覧できるようにモジュールヘッダにも表示される

/// メソッドの説明です
/// **太字**や[リンク](https://example.com/)が使用できます
/// - parameter arg1: 第一引数の説明です。
/// -  parameter arg2: 第二引数の説明です。
/// - returns: 戻り値の説明です。
/// - throws: エラーの説明です。
func someMethod(arg1: String, arg2: String){}
