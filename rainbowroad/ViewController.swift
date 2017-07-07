//
//  ViewController.swift
//  rainbowroad
//
//  Created by Placoderm on 7/6/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit
//UIColor(red: (1.0), green: (0.5), blue: (0.0), alpha: 1.0)
class ViewController: UIViewController, UITableViewDelegate {
    let colors = [
                //red
                UIColor(red: (244.0/255.0), green: (66.0/255.0), blue: (66.0/255.0), alpha: 1.0),
                //orange
                UIColor(red: (244.0/255.0), green: (143.0/255.0), blue: (66.0/255.0), alpha: 1.0),
                //yellow
                UIColor(red: (244.0/255.0), green: (223.0/255.0), blue: (66.0/255.0), alpha: 1.0),
                //green
                UIColor(red: (119.0/255.0), green: (244.0/255.0), blue: (66.0/255.0), alpha: 1.0),
                //blue
                UIColor(red: (66.0/255.0), green: (131.0/255.0), blue: (244/255.0), alpha: 1.0),
                //purple
                UIColor(red: (146.0/255.0), green: (66.0/255.0), blue: (244.0/255.0), alpha: 1.0)]
    
    @IBOutlet weak var tableView: UITableView!
    
    //func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        //cell.contentView.backgroundColor = colors[indexPath.row]
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = self.colors[indexPath.row]
        return cell
    }
}
