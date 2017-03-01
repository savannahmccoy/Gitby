//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by A on 2/28/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {
    
    
    
    @IBOutlet weak var starsSlider: UISlider!
    @IBOutlet weak var starsCountLabel: UILabel!
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    var settings: GithubRepoSearchSettings?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        self.delegate?.didSaveSettings(settings: settings!)
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.delegate?.didCancelSettings()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
