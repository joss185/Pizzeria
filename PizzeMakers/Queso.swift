//
//  Queso.swift
//  PizzeMakers
//
//  Created by Joselyn Rodriguez on 7/2/16.
//  Copyright © 2016 Joselyn Rodriguez. All rights reserved.
//

import UIKit

class Queso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var pickerQueso: UIPickerView!
    
    let tiposQueso = ["", "Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    var selectedQueso = ""
    var selectedMasa = ""
    var selectedSize = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tiposQueso.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tiposQueso[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedQueso = tiposQueso[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sizeS = selectedSize
        let masaS = selectedMasa
        let quesoS = selectedQueso
        let sigVista = segue.destinationViewController as! Ingredientes
        sigVista.size = sizeS
        sigVista.masa = masaS
        sigVista.queso = quesoS
        print(sizeS)
        print(masaS)
        print(quesoS)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
