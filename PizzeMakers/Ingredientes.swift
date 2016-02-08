//
//  Ingredientes.swift
//  PizzeMakers
//
//  Created by Joselyn Rodriguez on 7/2/16.
//  Copyright © 2016 Joselyn Rodriguez. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ingrediente: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    
    @IBOutlet weak var resultI: UILabel!
    var queso = ""
    var masa = ""
    var size = ""
    var taste = ""
    var selectedIngredientes : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto :CGPoint
        punto = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
        scroll.resignFirstResponder()
    }
    @IBAction func backgroupTap(sender:UIControl){
        ingrediente.resignFirstResponder()
    }
    @IBAction func textFieldDoneEditing(sender:UITextField){
        sender.resignFirstResponder()
        
    }
    
    
    @IBAction func addIngre(sender: AnyObject) {
        if(selectedIngredientes.count < 5){
        taste = ingrediente.text!
        selectedIngredientes.append(taste)
            resultI.text = "Ingredientes: \(selectedIngredientes.joinWithSeparator(","))"
            ingrediente.text = ""
        } else {
        resultI.text = "Ha excedido el maximo"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sizeS = size
        let masaS = masa
        let quesoS = queso
        let ingredientesS : [String] = selectedIngredientes
        let sigVista = segue.destinationViewController as! ConfirmPizza
        sigVista.selectedSize = sizeS
        sigVista.selectedMasa = masaS
        sigVista.selectedQueso = quesoS
        sigVista.selectedIngredientes = ingredientesS
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
