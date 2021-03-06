import UIKit
import FrameworkA
import FrameworkB
//: # 9.4 アクセスコントール
//: p240をよむ

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
//: * 何も指定しなかった場合のアクセスレベルはデフォルトになる。
//: * 型全体のデフォルトのアクセスレベルはinternal
//: * 型を構成する要素のデフォルトのアクセスレベルは型全体のアクセスレベルによる。
//: * 型全体がprivate, fileprivateなら要素のデフォルトのアクセスレベルも同じ
//: * 型全体がopen, public, internalなら要素のデフォルトのアクセスレベルは**internal**
//: * ->デフォルトでopne,publicにならないので注意！！

//: * FrameworkAで定義を確認
//: * FrameworkBで定義を確認

//let a = FrameworkA.SomeStruct() //プロパティが外部に公開されていないのでインスタンス化できない。
let b = FrameworkB.SomeStruct(id: 10)//プロパティが外部に公開されているのでインスタンス化できる
print(b.id)

//: # モジュールヘッダ
//: Objective-Cとは違いSwiftはインターフェースを記述するヘッダファイルをプログラマーが記述する必要はない。
//: Xcodeを通じて外部からアクセス可能なインターフェースのみが記述されたモジュールヘッダを閲覧できる。
//: モジュールにカーソルをあわせて*command + クリック*

//: * FrameworkAのSomeStruct2を確認

//: # ドキュメントコメント
//: ドキュメントコメントはインターフェースに対するコメント。モジュールの利用者が閲覧できるようにモジュールヘッダにも表示される

/// メソッドの説明です
/// **太字**や[リンク](https://example.com/)が使用できます
/// - parameter arg1: 第一引数の説明です。
/// -  parameter arg2: 第二引数の説明です。
/// - returns: 戻り値の説明です。
/// - throws: エラーの説明です。
func someMethod(arg1: String, arg2: String){}
