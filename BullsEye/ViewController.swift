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
  
  let sliderData: SliderData = SliderData(min: 1, max: 100)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    startNewRound()
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
      style: .default) { uiAction in
        self.startNewRound()
      }
    
    alert.addAction(action)
    present(alert, animated: true)
  }
  
  @IBAction func sliderMoved(_ slider: UISlider){
    currentValue = lroundf(slider.value)
  }
  
  private func startNewRound(){
    targetValue = Int.random(in: sliderData.min...sliderData.max)
    currentValue = sliderData.middle
    slider.value = Float(currentValue)
  }
}

struct SliderData{
  let min: Int
  let max: Int
  let middle: Int
  
  init(min: Int, max: Int){
    let middle = lroundf(Float((min + max) / 2))
    
    self.init(min: min, max: max, middle: middle)
  }
  
  init(min: Int, max: Int, middle: Int){
    self.min = min
    self.max = max
    self.middle = middle
  }
}

