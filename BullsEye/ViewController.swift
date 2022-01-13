//
//  ViewController.swift
//  BullsEye
//
//  Created by daniilZhuravlev on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var slider: UISlider!
  var targetValue: Int = 0
  var currentValue: Int = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    currentValue = lroundf(slider.value)
    targetValue = Int.random(in: 1...100)
  }
  
  @IBAction func showAlert() {
    let message =  "The value of the slider is: \(currentValue)" +
    "\nThe target value is: \(targetValue)"
    
    let alert = UIAlertController(
      title: "Hello, World",
      message: message,
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
}

