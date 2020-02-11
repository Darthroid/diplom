//
//  TrackerListCoordinator.swift
//  getlocation
//
//  Created by Oleg Komaristy on 10.02.2020.
//  Copyright © 2020 Darthroid. All rights reserved.
//

import Foundation
import UIKit

class TrackerListCoordinator: Coordinator {
	var childCoordinators = [Coordinator]()
	var navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func start() {
		let viewController = TrackerListViewController.instantiate()
		viewController.coordinator = self
        navigationController.viewControllers = [viewController]

		let viewModel = TrackerListViewModel()
		viewController.viewModel = viewModel
	}
	
	func showDetail(with viewModel: TrackerViewModel) {
		let viewController = TrackerDetailViewController.instantiate()
		viewController.viewModel = viewModel
		navigationController.showDetailViewController(viewController, sender: nil)
	}
	
}
