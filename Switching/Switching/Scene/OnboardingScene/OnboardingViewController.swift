//
//  OnboardingViewController.swift
//  Switching
//
//  Created by JNGSJN on 2020/11/09.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = nextButton.frame.height/2
            nextButton.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var skipButton: UIButton!
    
    // MARK: - Actions

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
