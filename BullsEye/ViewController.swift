//
//  ViewController.swift
//  BullsEye
//
//  Created by daniilZhuravlev on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var slider: UISlider!
  var currentValue: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    currentValue = lroundf(slider.value)
  }
  
  @IBAction func showAlert() {
    let alert = UIAlertController(
      title: "Hello, World",
      message: getMessage(),
      preferredStyle: .alert)
    let action = UIAlertAction(
      title: "Awesome",
      style: .default)
    
    alert.addAction(action)
    present(alert, animated: true)
  }
  
  @IBAction func sliderMoved(_ slider: UISlider){
    currentValue = lroundf(slider.value)
  }
  
  private func getMessage()-> String{
    "The value of the slider is: \(currentValue)"
  }
  
}

