//
//  TableViewController.swift
//  AppiumDemo
//
//  Created by BS on 12/21/18.
//  Copyright © 2018 BS. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var tableViewModel: TableViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewModel = TableViewModel()

        let cnt = ContainerView(frame: CGRect(x: 0, y: tableView.bounds.height / 2, width: tableView.bounds.width, height: tableView.bounds.height / 3))
        tableView.addSubview(cnt)
        cnt.layoutIfNeeded()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel?.cells.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "storyboardCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = tableViewModel?.cells[indexPath.row]
        if let maxIndex = tableViewModel?.cells.count, indexPath.row == maxIndex - 1 {
            cell.textLabel?.automationIdentifier = "bs.last.cell"
        }

        return cell
    }
}
