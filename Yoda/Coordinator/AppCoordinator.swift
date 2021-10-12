//
//  AppCoordinator.swift
//  Yoda
//
//  Created by Chris Myers on 10/11/21.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
	let window: UIWindow
	let rootViewController: UINavigationController
	
	init(window: UIWindow) {
		self.window = window
		rootViewController = UINavigationController()
		
		let overviewVC = OverviewViewController()
		overviewVC.view.backgroundColor = .red
		overviewVC.title = "Star Wars Overview"
		rootViewController.pushViewController(overviewVC, animated: true)
	}
	
	func start() {
		print("Start Main VC or child coordinator")
		window.rootViewController = rootViewController
		window.makeKeyAndVisible()
	}
}
