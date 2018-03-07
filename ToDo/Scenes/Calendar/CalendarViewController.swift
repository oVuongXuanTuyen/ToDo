//
//  CalendarViewController.swift
//  ToDo
//
//  Created by TuyenVX on 3/6/18.
//  Copyright © 2018 TuyenVX. All rights reserved.
//

import UIKit
import FSCalendar

class CalendarViewController: BaseViewController {
  @IBOutlet weak private var calendar: FSCalendar!
  @IBOutlet weak private var tableView: UITableView!
  var presenter: CalendarPresenter?
  var configurator: CalendarConfigurator?

  override func viewDidLoad() {
    super.viewDidLoad()
    configurator?.config(viewController: self)
    presenter?.configTableView(tableView)
    createRightButton()
  }
  // MARK: - Init
   override func setDefaults() {
    calendar.delegate = self
    calendar.dataSource = self
    let dateFormater = DateFormatter()
    dateFormater.dateFormat = "dd/MM/yyyy"
    let dates = [dateFormater.date(from: "01/03/2018"),dateFormater.date(from: "04/03/2018"),dateFormater.date(from: "08/03/2018"),dateFormater.date(from: "09/03/2018"),dateFormater.date(from: "20/03/2018"),dateFormater.date(from: "28/03/2018"),dateFormater.date(from: "30/03/2018")]
    for date in dates {
      calendar.select(date)
    }
  }
  func createRightButton() {
    setRightButton(icon: #imageLiteral(resourceName: "ic_search"))
  }
}

// MARK: - FSCalendar delegate + datasource
extension CalendarViewController: FSCalendarDelegate {
  //
}
extension CalendarViewController: FSCalendarDataSource {
  //
}

// MARK: - Calendar view
extension CalendarViewController: CalendarView {
  func reloadData() {
    tableView.reloadData()
  }
}
