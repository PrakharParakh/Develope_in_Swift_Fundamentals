//
//  FoodTableViewControlleTableViewController.swift
//  Tabel View
//
//  Created by Prakhar Parakh on 11/01/23.
//

import UIKit

class FoodTableViewControlleTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }
    
    var meals: [Meal]{
       var breakfast_1 =  Food(name: "Bread", descrpition: "with jam")
        var breakfast_2 =  Food(name: "Maggie", descrpition: "with cheese")
        var breakfast_3 =  Food(name: "Dosa", descrpition: "with masala")
        var breakfast = Meal(name: "Breakfast", food: [breakfast_1,breakfast_2,breakfast_3])
        
        var lunch_1 =  Food(name: "panner", descrpition: "with mutter")
         var lunch_2 =  Food(name: "dal", descrpition: "with roti")
         var lunch_3 =  Food(name: "rot", descrpition: "with sabji")
         var lunch = Meal(name: "Lunch", food: [lunch_1,lunch_2,lunch_3])
        
        var dinner_1 =  Food(name: "pasta", descrpition: "with cheese")
         var dinner_2 =  Food(name: "pizza", descrpition: "with panner")
         var dinner_3 =  Food(name: "roll", descrpition: "with masala")
         var dinner = Meal(name: "Dinner", food: [dinner_1,dinner_2,dinner_3])

        return [breakfast,lunch,dinner]
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        // Configure the cell...
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.descrpition

        return cell
    }
    

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
