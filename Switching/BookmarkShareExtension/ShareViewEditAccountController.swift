//
//  ShareViewEditAccountController.swift
//  BookmarkShareExtension
//
//  Created by 김기훈 on 2020/10/29.
//

import UIKit

class ShareViewEditAccountController: UIViewController {
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBAction func cancelClicked(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    @IBAction func summitClicked(_ sender: Any) {
        guard let text = accountTextField.text else{ return }
        let newCharacter = Character()
        newCharacter.character = text

        let realm = SharedData.instance.realm
        do{
            try realm.write{
                realm.add(newCharacter)
            }
        } catch {
            print("Error Add \(error)")
        }
        NotificationCenter.default.post(name: Notification.Name("newCharacterCreated"), object: nil)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
