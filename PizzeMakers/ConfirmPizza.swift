//
//  ConfirmPizza.swift
//  PizzeMakers
//
//  Created by Joselyn Rodriguez on 7/2/16.
//  Copyright © 2016 Joselyn Rodriguez. All rights reserved.
//

import UIKit

class ConfirmPizza: UIViewController {
    @IBOutlet weak var showT: UILabel!

    @IBOutlet weak var showM: UILabel!
  
    @IBOutlet weak var showQ: UILabel!
    @IBOutlet weak var showI: UILabel!
    
    @IBOutlet weak var order: UIButton!
    var selectedQueso = ""
    var selectedMasa = ""
    var selectedSize = ""
    var selectedIngredientes : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    override func viewWillAppear(animated: Bool) {
        //result.text = String(indiceIM)
        if(selectedSize.isEmpty){
        showT.text = "Regresar y seleccionar tamaño"
            showM.text = selectedMasa
            showQ.text = selectedQueso
            showI.text = selectedIngredientes.joinWithSeparator(", ")
        order.enabled = false
        } else if(selectedMasa.isEmpty) {
            showT.text = selectedSize
            showM.text = "Regresar y seleccionar la masa"
            showM.text = selectedMasa
            showQ.text = selectedQueso
            showI.text = selectedIngredientes.joinWithSeparator(", ")
            order.enabled = false
        } else if(selectedQueso.isEmpty) {
            showT.text = selectedSize
            showM.text = selectedMasa
            showQ.text = "Regresar y seleccionar el queso"
            showI.text = selectedIngredientes.joinWithSeparator(", ")
            order.enabled = false
        } else if(selectedIngredientes.isEmpty) {
            showT.text = selectedSize
            showM.text = selectedMasa
            showQ.text = selectedQueso
            showI.text = "Regresar y seleccionar ingredientes"
            order.enabled = false
        } else {
        showT.text = selectedSize
        showM.text = selectedMasa
        showQ.text = selectedQueso
        showI.text = selectedIngredientes.joinWithSeparator(", ")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
