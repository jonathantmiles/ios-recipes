//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by Jonathan T. Miles on 8/6/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Custom functions
    
    private func updateViews() {
        guard let name = recipe?.name, let instructions = recipe?.instructions, isViewLoaded else { return }
        recipeTitleLabel.text = name
        recipeBodyTextView.text = instructions
    }

    // MARK: - Properties
    
    var recipe: Recipe? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var recipeBodyTextView: UITextView!
}
