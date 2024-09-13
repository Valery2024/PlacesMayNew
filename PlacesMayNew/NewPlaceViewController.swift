//
//  NewPlaceViewController.swift
//  PlacesMayNew
//
//  Created by Valery on 13.09.2024.
//

import UIKit

class NewPlaceViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        
    }
    //MARK: TableView delegate
    //данный метод является методом таблевью
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //создаем условие
        if indexPath.row == 0 {//если это первая ячейка-тогда мы вызываем меню для того чтобы пользователь выбрал изо а иначе клава должна скрыться
         
            
        }else{
            view.endEditing(true)
        }
        
    }
    
}
    // MARK: - TextFiald delegate
    
    extension NewPlaceViewController: UITextFieldDelegate {
      //скрываем клавиатуру по нажадтию на дано
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            
            return true
        }
        
    }

   
