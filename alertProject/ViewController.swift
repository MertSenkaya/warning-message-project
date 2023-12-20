//
//  ViewController.swift
//  alertProject
//
//  Created by Macbook on 17.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var password2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        
        guard let enteredText = UserName.text, !enteredText.isEmpty else {
                   // Eğer metin boşsa veya nil ise, hata mesajını göster
                   showAlert(message: "Kullanıcı adını girin.")
                   return
               }

               // Metin boş değilse, diğer işlemleri burada gerçekleştir
               print("Girilen Kullanıcı Adı: \(enteredText)")
          
               guard let password = password.text, !password.isEmpty,
                  let password2 = password2.text, !password2.isEmpty else {
                // Eğer şifrelerden biri boşsa veya nil ise, hata mesajını göster
                showAlert(message: "Şifre alanı boş olmamalı.")
                return
          
    }
        guard password == password2 else {
            // Eğer şifreler eşleşmiyorsa, hata mesajını göster
            showAlert(message: "Kayıt başarılı.")
            return
            
            
          
            
        }
    }
    
    
    func showAlert(message: String) {
               let alert = UIAlertController(title: "Hata", message: message, preferredStyle: .alert)
               let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
               alert.addAction(okAction)
               present(alert, animated: true, completion: nil)
           }
       }
    
    
    

    
    
    
    


