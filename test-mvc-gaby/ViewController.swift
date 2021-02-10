//
//  ViewController.swift
//  test-mvc-gaby
//
//  Created by Baxten on 30/01/21.
//

import UIKit

class Person {
    let name: String
    let phoneNumber: Int
    
    init(name: String, phoneNumber: Int){
        self.name = name
        self.phoneNumber = phoneNumber
    }
}




class ViewController: UIViewController {

    //var arrayUsers = ["gaby", "Aleu", "Cheque", "Juan", "Geraldo", "Ines", "Eila", "Min", "Alex", "Alexito"]
    var arrayUsers = ["gaby", "Aleu"]
    var arrayEmails = ["gaby@gmail.com", "alex@gmail.com"]
    var arrayNumbers = [1, 2, 3, 4, 5, 6]
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //suma(num1: 2, num2: 5)
        //resta(num1: 10, num2: 5)
        //multiplicacion(num1: 1, num2: 6)
        //var res = division(num1: 8, num2: 4)
        //print("res: \(res)")
        //dato()
        //ciclos()
        //nombres()
        estructura()
    }

    func suma(num1: Int, num2: Int){
        
        let c = num1 + num2
        print("El resultado de la suma es: \(c)")
        
    
        
    }
    
    func resta(num1: Int, num2: Int){
        let c = num1 - num2
        print("El resultado de la resta es: \(c)")
    }
    
    func multiplicacion (num1: Int, num2: Int){
        let c = num1 * num2
        print("El resultado de la multiplicacion es: \(c)")
        statement(num: c)
    }

    func division (num1 : Int, num2 : Int)-> Int{
        let c = num1 / num2
        print("El resultado de la division es: \(c)")
        return num1
        
    }
    
    @IBAction func openNewTable(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "NewViewController") as! NewViewController
        //vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
}

extension ViewController{
    
    func statement(num: Int){
        
        if num > 10{
            print("El numero es mayor a 10")
        }else{
            print("El numero es menor o igual a 10")
        }
    }
    
    func ciclos(){
        let tamaño = self.arrayNumbers.count
        print("tamaño arreglo numbers: \(tamaño)")
        
        var array: [Int] = []
        for i in self.arrayNumbers {
            print(i)
            
            if i == 5 {
                array.append(i)
            }
        }
        
        for i in array {
            print(i)
        }
        
    }
    
    func nombres(){
        
        for m in arrayUsers{
            
            if m == "gaby" {
                print("Hola Gaby")
            }
        }
        
        
    }

    
    func estructura(){
        
        var arrayPersons:[Person] = []
        let person1 = Person(name: "Gaby", phoneNumber: 5535619357)
        let person2 = Person(name: "Alexito", phoneNumber: 12312312)
        //print("\(person1.name): \(person1.phoneNumber)")
        
        arrayPersons.append(person1)
        arrayPersons.append(person2)
        
        for i in arrayPersons {
            print("\(i.name): \(i.phoneNumber)")
        }
    }
    
    
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let elements = arrayUsers[indexPath.row]
        let emails = arrayEmails[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.titleLabel.text = elements
        cell.emailLabel.text = emails
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        vc.name = arrayUsers[indexPath.row]
        present(vc, animated: true, completion: nil)
        
    }
    
    
    
    
}

