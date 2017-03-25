import UIKit

//: # フレームワークの使い所
//: * SDKなどサードパーティライブラリーを作成するとき
//: * リファクタリング
//:    * クリーンアーキテクチャによる責務の分離にフレームワークを使う

//: [OK、理想のアーキテクチャは分かった。で、どこから手をつけんの？](https://speakerdeck.com/takasek/ok-li-xiang-falseakitekutiyahafen-katuta-de-dokokarashou-wotukenfalse)

//: # Playgroundで独自フレームワークを利用する方法
//: * Applicationプロジェクトを作成する。
//: * File -> Save as Workspace...を選択
//: * ![](fig1.jpg)

//: * Playgroundファイルを追加。File -> New -> File...からPlaygroundを選択
//: * ![](fig2.jpg)
//: * ![](fig3.jpg)

//: * Frameworkを追加。File -> New -> Projectを選択
//: * ![](fig4.jpg)
//: * ![](fig5.jpg)
//: * Add to にworkspaceを選択する
//: * ![](fig6.jpg)

//: * ApplicationのGeneralのEmbedded BinariesとLinked Frameworks and Librariesに該当フレームワークをインポートする
//: * ![](fig7.jpg)
