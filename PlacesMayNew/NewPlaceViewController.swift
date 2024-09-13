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
            let actioncheet = UIAlertController(title: nil,
                                             message:nil,
                                             preferredStyle: .actionSheet)
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                //TODO: здесь нужно будет создать метод для выбора изо-func chooseImagePicker
                self.chooseImagePicker(sourse: .camera)
            }
                let foto = UIAlertAction(title: "Фото", style: .default) { _ in
                    self.chooseImagePicker(sourse: .photoLibrary)
                   
            }
                    
            let cansel = UIAlertAction(title: "Cansel", style: .cancel)
                    
            actioncheet.addAction(camera)
            actioncheet.addAction(foto)
            actioncheet.addAction(cansel)
        present(actioncheet, animated: true)
            
        }else{
            view.endEditing(true)
        }
        
    }
    
}

//MARK: Work with image kklj

extension NewPlaceViewController {
    func chooseImagePicker(sourse: UIImagePickerController.SourceType) {//sourse:-параметр источник для выбора изо
        if UIImagePickerController.isSourceTypeAvailable(sourse) {
            let imagePicker = UIImagePickerController()//создали экз класса
            imagePicker.allowsEditing = true//рудактирование изо пользователем
            imagePicker.sourceType = sourse
            present(imagePicker, animated: true )
        }
    }
}
    // MARK: - TextFiald delegate
   
    extension NewPlaceViewController: UITextFieldDelegate {
      //скрываем клавиатуру по нажатию на дано
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            
            return true
        }
        
    }

   
