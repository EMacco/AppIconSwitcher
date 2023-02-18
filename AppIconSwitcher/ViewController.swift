//
//  ViewController.swift
//  AppIconSwitcher
//
//  Created by Emmanuel Okwara on 18.02.23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var catImageView: UIImageView!
  @IBOutlet weak var dogImageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let tapCat = UITapGestureRecognizer(target: self, action: #selector(self.didSelectCat))
    catImageView.addGestureRecognizer(tapCat)
    
    let tapDog = UITapGestureRecognizer(target: self, action: #selector(self.didSelectDog))
    dogImageView.addGestureRecognizer(tapDog)
  }
  
  @objc private func didSelectCat() {
    guard UIApplication.shared.supportsAlternateIcons else {
      print("App icon switching not supported")
      return
    }
    UIApplication.shared.setAlternateIconName(nil) { error in
      if let error = error {
        print(error.localizedDescription)
      } else {
        print("Success!")
      }
    }
  }
  
  @objc private func didSelectDog() {
    guard UIApplication.shared.supportsAlternateIcons else {
      print("App icon switching not supported")
      return
    }
    UIApplication.shared.setAlternateIconName("AppIcon-2") { error in
      if let error = error {
        print(error.localizedDescription)
      } else {
        print("Success!")
      }
    }
  }
}

