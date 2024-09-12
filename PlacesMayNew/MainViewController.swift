//
//  MainViewController.swift
//  PlacesMayNew
//
//  Created by Valery on 11.09.2024.
//

import UIKit

class MainViewController: UITableViewController {
    let restauratnNames = ["Балкан Гриль", "Бочка",
                           "Вкусные истории", "Дастархан",
                           "Индокитай", "Классик", "Шок",
                           "Bonsai","Burger Heroes", "Kitchen","Love&Life","Morris Pub","Sherlock Holmes","Speak Easy","X.O"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    //здесь не нужно расширение так этот класс уже подписан под протоколы/ Eще нужно использованть команду comand + T-она позволяет закрепить нужные файлы сверху на вкладке
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restauratnNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restauratnNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restauratnNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.height/2
        cell.imageView?.clipsToBounds = true//обрезает или показывает наш круг
        
        return cell
        
    }
    //MARK: TableView delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        85
    }
}
  /*cell.textLabel?.text - это свойство отражает в ячейке текстовую информацию в нашем случае наименование ресторана. detailTextLabel-отображает более детальную информацию . imageView?- отображает изображение в нашей ячейке. Все эти штуки прикрепляютчся к contentview*/

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

