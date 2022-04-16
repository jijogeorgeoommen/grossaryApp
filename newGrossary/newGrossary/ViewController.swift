//
//  ViewController.swift
//  newGrossary
//
//  Created by Jijo G Oommen on 16/04/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet var segmentedCtrl: UISegmentedControl!
    @IBOutlet var tableViewgrossary: UITableView!
    
    var grossaryArrayList : [GrossaryArray] = [
        GrossaryArray(id: 0,name: "Carrot", category: "Vegis", color: .red),
        GrossaryArray(id: 1,name: "Potato", category: "Vegis", color: .blue),
        GrossaryArray(id: 2,name: "Tomato", category: "Vegis", color: .green),
        GrossaryArray(id: 3,name: "Brinjal", category: "Vegis", color: .yellow),
        GrossaryArray(id: 4,name: "Cabbage", category: "Vegis", color: .red),
        GrossaryArray(id: 5,name: "Radish", category: "Vegis", color: .blue),
        GrossaryArray(id: 6,name: "Onion", category: "Vegis", color: .green),
        GrossaryArray(id: 7,name: "Bitter Gourd", category: "Vegis", color: .yellow),
        GrossaryArray(id: 8,name: "Lady’s finger", category: "Vegis", color: .red),
        GrossaryArray(id: 9,name: "Cauliflower", category: "Vegis", color: .blue),
        GrossaryArray(id: 10,name: "Pumpkin", category: "Vegis", color: .green),
        GrossaryArray(id: 11,name: "Ginger", category: "Vegis", color: .yellow),
        GrossaryArray(id: 12,name: "Chilli", category: "Vegis", color: .red),
        GrossaryArray(id: 13,name: "Capsicum", category: "Vegis", color: .blue),
        GrossaryArray(id: 14,name: "Spinach", category: "Vegis", color: .green),
        GrossaryArray(id: 15,name: "Mushroom", category: "Vegis", color: .yellow),
        GrossaryArray(id: 16,name: "Sweet Potato", category: "Vegis", color: .red),
        GrossaryArray(id: 17,name: "Beetroot", category: "Vegis", color: .blue),
        GrossaryArray(id: 18,name: "Cucumber", category: "Vegis", color: .green),
        GrossaryArray(id: 19,name: "Coriander", category: "Vegis", color: .yellow),
        GrossaryArray(id: 20,name: "Green bean", category: "Vegis", color: .yellow),
        
        GrossaryArray(id: 21,name: "Apple", category: "Fruits", color: .blue),
        GrossaryArray(id: 22,name: "Banana", category: "Fruits", color: .green),
        GrossaryArray(id: 23,name: "Cherry", category: "Fruits", color: .yellow),
        GrossaryArray(id: 24,name: "Grapefruit", category: "Fruits", color: .red),
        GrossaryArray(id: 25,name: "Guava", category: "Fruits", color: .blue),
        GrossaryArray(id: 26,name: "Lychee", category: "Fruits", color: .green),
        GrossaryArray(id: 27,name: "Mango", category: "Fruits", color: .yellow),
        GrossaryArray(id: 28,name: "Orange", category: "Fruits", color: .red),
        GrossaryArray(id: 29,name: "Papaya", category: "Fruits", color: .blue),
        GrossaryArray(id: 30,name: "Pineapple", category: "Fruits", color: .green),
        GrossaryArray(id: 31,name: "Pomegranate", category: "Fruits", color: .yellow),
        GrossaryArray(id: 32,name: "Watermelon", category: "Fruits", color: .red),
        
        GrossaryArray(id: 33,name: "Beef", category: "Meat", color: .blue),
        GrossaryArray(id: 34,name: "Goat", category: "Meat", color: .green),
        GrossaryArray(id: 35,name: "Lamb", category: "Meat", color: .yellow),
        GrossaryArray(id: 36,name: "Chicken", category: "Meat", color: .red),
        GrossaryArray(id: 37,name: "Turkey", category: "Meat", color: .green),
        GrossaryArray(id: 38,name: "Pork", category: "Meat", color: .yellow),
    
      ]

    var displayArray : [GrossaryArray] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedCtrl.selectedSegmentIndex = 0
        showVegiesList(category: "Vegis")
        tableViewgrossary.delegate = self
        tableViewgrossary.dataSource = self
    }

    
    @IBAction func segmentedTapped(_ sender: UISegmentedControl) {
        
        switch segmentedCtrl.selectedSegmentIndex {
        case 0:
            print("0")
            showVegiesList(category: "Vegis")
        case 1 :
            print("1")
            showVegiesList(category: "Fruits")
        case 2 :
            showVegiesList(category: "Meat")
            print("2")
        default:
            print("Nothing :)")
        }
    }
    
    func showVegiesList (category : String) {
        displayArray.removeAll()
        self.displayArray.append(contentsOf: grossaryArrayList.filter({$0.category.contains(category)}))
        tableViewgrossary.reloadData()
        print(displayArray.count)
        
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return displayArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableViewgrossary.dequeueReusableCell(withIdentifier: "GrossaryTableViewCell") as! GrossaryTableViewCell
        tableCell.lbl_grossaryItem.text = displayArray[indexPath.row].name
        return tableCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    

}

class GrossaryArray: Identifiable {
  var id    : Int
  var name  : String
  var category  : String
  var color : UIColor
    
    init(id : Int, name : String, category : String, color : UIColor ) {
        self.id = id
        self.name = name
        self.category = category
        self.color = color
    }
}

