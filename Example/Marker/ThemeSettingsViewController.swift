//
//  ThemeSettingsViewController.swift
//  Marker
//
//  Created by Htin Linn on 6/9/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

internal final class ThemeSettingsViewController: UIViewController {
    
    // MARK: - Properties
    
    weak var theme: AppTheme!
    
    // MARK: - Private properties

    private let fontNames = ["Helvetica Neue", "Avenir Next"]

    // MARK: - Instance functions
    
    @IBAction private func didTapCloseButton(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}

extension ThemeSettingsViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("ThemeSettingsTableViewCell") else {
            fatalError("Cannot dequeue reusable cell...")
        }
        
        cell.textLabel?.text = fontNames[indexPath.row]

        if cell.textLabel?.text == "Helvetica Neue" {
            cell.textLabel?.font = HelveticaNeueFont().regularFont(17)
        } else if cell.textLabel?.text == "Avenir Next" {
            cell.textLabel?.font = AvenirNextFont().regularFont(17)
        }
        
        cell.accessoryType = (cell.textLabel?.text == theme.font.familyName) ? .Checkmark : .None

        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Font"
    }
    
}

extension ThemeSettingsViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        if cell?.textLabel?.text == "Helvetica Neue" {
            theme.font = HelveticaNeueFont()
        } else if cell?.textLabel?.text == "Avenir Next" {
            theme.font = AvenirNextFont()
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
