//
//  PlacesViewController.swift
//  ClothesAssistant
//
//  Created by Stepan Vasiljeu on 1/7/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

var places = [Dictionary<String, String>()]
var activePlaces = -1

class PlacesViewController: UITableViewController {
    
    @IBOutlet var tablePlaces: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        if let tempPleces = UserDefaults.standard.object(forKey: "places") as? [Dictionary<String, String>] {
            places = tempPleces
        }
        
        if places.count == 1 && places[0].count == 0 {
            places.remove(at: 0)
            places.append(["name":"SC Nemiga 3","lat":"53.904087","lon":"27.552454"])
            UserDefaults.standard.set(places, forKey: "places")
        }
        activePlaces = -1
        tablePlaces.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            places.remove(at: indexPath.row)
            UserDefaults.standard.set(places, forKey: "places")
            tablePlaces.reloadData()
        }
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        if places[indexPath.row]["name"] != nil {
            cell.textLabel?.text = places[indexPath.row]["name"]
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        activePlaces = indexPath.row
        performSegue(withIdentifier: "toMap", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonCell", for: indexPath) as! ButtonCell
        cell.placesLabelLoc.text = "\(indexPath.row)"
        if places[indexPath.row]["name"] != nil {
            cell.placesLabelLoc?.text = places[indexPath.row]["name"]
        }
        cell.tapAction = { (cell) in
            //self.alertViewController(titleAlert: "Places location coordinate", messageAlert: places[indexPath.row]["lat"]!)
            self.showAlertForRow(row: tableView.indexPath(for: cell)!.row, titleAlert: "Places location coordinate", messageAlert: places[indexPath.row]["lat"]! + ", " + places[indexPath.row]["lon"]!)
        }
        return cell
    }
    
    func showAlertForRow(row: Int, titleAlert: String, messageAlert: String) {
        let alert = UIAlertController(title: titleAlert, message: messageAlert, preferredStyle: .alert)
        let actionSave = UIAlertAction(title: "Save", style: .default) { (action) in
            UIPasteboard.general.string = messageAlert
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        alert.addAction(actionSave)
        alert.addAction(actionCancel)
        //        alert.addAction(UIAlertAction(title: "Gotcha!", style: UIAlertAction.Style.default, handler: { (test) -> Void in
        //            self.dismiss(animated: true, completion: nil)
        //        }))
        
        self.present(
            alert,
            animated: true,
            completion: nil)
    }
}
