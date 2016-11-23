//
//  ListListViewController.swift
//  TestTask
//
//  Created by Shemshur Oksana on 17/11/2016.
//  Copyright © 2016 mozy. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, ListViewInput, TransitionHandler {
    

    @IBOutlet weak var tableView: UITableView!
    var output: ListModuleInput!
//    var note: Note!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "Cell")
        output.handleViewDidLoad()
    }
    
    func reloadData() {
        tableView?.reloadData()
    }
    
    @IBAction func newButton(_ sender: AnyObject) {
        
        output.handleNewTap()
    }

}

extension ListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return output.numberOfNotes()
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomCell
        cell?.configure(with: output.notesList(for: indexPath))
        cell?.selectionStyle = .blue
        return cell!
    }
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.showPopUp(for: indexPath)
 //       self.note = output.notesList(for: indexPath)
    }
}


