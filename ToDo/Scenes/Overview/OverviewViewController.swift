//
//  OverviewViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/7/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit

class OverviewViewController: BaseViewController {
    @IBOutlet weak private var snoozedCircleView: CircleView!
    @IBOutlet weak private var overdueCircleView: CircleView!
    @IBOutlet weak private var completedCircleView: CircleView!

    var presenter: OverviewPresenterImplement?
    var configurator: OverviewConfigurator?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        completedCircleView.type = .completed
        completedCircleView.addCircle(percent: 0.6, total: 100)
        overdueCircleView.type = .overdue
        overdueCircleView.addCircle(percent: 0.4, total: 120)
        snoozedCircleView.type = .snoozed
        snoozedCircleView.addCircle(percent: 0.85, total: 50)
        completedCircleView.animateCircle(1.5)
        overdueCircleView.animateCircle(1.5)
        snoozedCircleView.animateCircle(1.5)
    }
    // MARK: - Init
    func createRightButton() {
        setRightButton(icon: #imageLiteral(resourceName: "ic_search"))
    }
}
extension OverviewViewController: OverviewView {

}
