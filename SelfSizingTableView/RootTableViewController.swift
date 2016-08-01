//
//  RootTableViewController.swift
//  SelfSizingTableView
//
//  Created by Marius Skalstad on 01.08.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {
    
    
    var heroes = ["Superman","Batman","Captain America","Spiderman"]
    var information = ["Supermann, eller Superman på engelsk, er en fiktiv superhelt i tegneserier utgitt av det amerikanske tegneserieforlaget DC Comics. Rolleskikkelsen ble skapt av Jerry Siegel og Joe Shuster og presentert i tegneserieheftet Action Comics nummer 1 i 1938. Supermann er blant de eldste og mest kjente superheltfigurene i moderne vestlig populærkultur. Det har blitt lagd en mengde tegneseriehistorier samt radioprogrammer, TV-serier og filmer med Supermann i hovedrollen.","Batman (tidligere kjent som Lynvingen i Norge) er en amerikansk tegneseriefigur skapt av Bill Finger og Bob Kane i 1939. Batman er en superhelt iført et flaggermusinspirert kostyme Tegneserien utgis av DC Comics.","Captain America er en tegneseriefigur skapt av Joe Simon og Jack Kirby i 1940.","Spider-Man (på norsk tidligere kjent som Edderkoppen) er en amerikansk tegneserie som ble skapt av Stan Lee og Steve Ditko i 1962. Spider-Man er en superhelt som har edderkoppbaserte evner. Den første historien stod på trykk i Amazing Fantasy #15 i 1962. Dette var siste utgave av Amazing Fantasy, men Spider-Man ble så populær at han fikk sitt eget blad, The Amazing Spider-Man, i 1963."]

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.estimatedRowHeight = 68
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return heroes.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! RootTableViewCell

        // Configure the cell...
        cell.heroesLabel.text = self.heroes[indexPath.row]
        cell.informationLabel.text = self.information[indexPath.row]

        return cell
    }


}
