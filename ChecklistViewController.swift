//
//  ViewController.swift
//  checklist
//
//  Created by student on 13/2/2562 BE.
//  Copyright © 2562 Override. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    let row0text = "walk dog"
     let row1text = "teeth"
     let row2text = "learn ios"
     let row3text = "soccer"
     let row4text = "ice creacm"
    
    
    var row0checked = false
     var row1checked = false
     var row2checked = false
     var row3checked = false
     var row4checked = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int)->Int{
        return 5  //return ตามจำนวน index
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem",for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        
        var isChecked = false
        
        
        if indexPath.row  == 0 {
            row0checked  = !row0checked
            if row0checked{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            
        }else if indexPath.row == 1 {
            row1checked  = !row1checked
            if row1checked{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
        }else if indexPath.row == 2 {
            row2checked  = !row2checked
            if row2checked{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
        }else if indexPath.row == 3 {
            row3checked  = !row3checked
            if row3checked{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
        }else if indexPath.row == 4 {
            row4checked  = !row4checked
            if row4checked{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
        }  //สร้างลิส
        
        if isChecked {
            cell.accessoryType = .checkmark
        }else {
            cell.accessoryType = .none
        }
        
        
        tableView.deselectRow(at: indexPath, animated: true)
        return cell
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        if let cell = tableView.cellForRow(at: indexPath){
            if cell.accessoryType == .none{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            
        }  // ติ๊กถูก
        
      
       
        
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }// กลับมาเหมือนเดิม

   
    //MARK:-dddd
}

