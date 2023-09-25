//
//  SampleViewController.swift
//  UIKitPreview
//
//  Created by harehare on 2023/09/21.
//

import UIKit
//Xcode14でプレビューを表示させる
//import SwiftUI


class SampleViewController: UIViewController {
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //コードでラベル表示させる
        label = UILabel()
        label.text = "鋼の錬金術師"
        label.textAlignment = .center
        label.backgroundColor = .systemGreen
        // オートレイアウト使用するためfalseにする
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        // コードでオートレイアウト制約
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

        ])
    }

}
//Xcode14でプレビューを表示させる
//struct ViewControllerPreview: PreviewProvider {
//    struct Wrapper: UIViewControllerRepresentable {
//        func makeUIViewController(context: Context) -> some UIViewController {
//            SampleViewController()
//        }
//        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//        }
//    }
//    static var previews: some View {
//        Wrapper()
//    }
//}
//Xcode15からプレビューを表示させるコード
#Preview("UIKit") {
    SampleViewController()
}
