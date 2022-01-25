//
//  PortalUIWevView.swift
//  IonicPortals
//
//  Created by Dan Giralté on 1/24/22.
//

import SwiftUI

struct PortalUIWebView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIViewController

    var portal: Portal?

    init(_ portal: Portal?) {
        self.portal = portal
    }

    func makeUIViewController(context: Context) -> UIViewController {
        let vc = UIViewController()

        let frame = vc.view.frame

        let uiView = PortalWebView(frame: frame, portal: self.portal!)
        uiView.translatesAutoresizingMaskIntoConstraints = false

        vc.view.addSubview(uiView)
        NSLayoutConstraint.activate([
            uiView.topAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.topAnchor,
                                        constant: 0),
            uiView.leadingAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.leadingAnchor,
                                            constant: 0),
            uiView.trailingAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.trailingAnchor,
                                             constant: 0),
            uiView.bottomAnchor.constraint(equalTo: vc.view.safeAreaLayoutGuide.bottomAnchor,
                                           constant: 0)
        ])

        return vc
    }

    func updateUIViewController(_ uiViewController: UIViewController,
                                context: Context) {
    }
}
