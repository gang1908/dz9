//
//  ViewController.swift
//  dz9
//
//  Created by Ангелина Голубовская on 15.12.24.
//

import UIKit

class ViewController: UIViewController {
    lazy var secondViewController: UIViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        print("MAKE")
        return storyboard.instantiateViewController(withIdentifier: "SecondViewController")
    }()
    
    override func loadView() {
        super.loadView()
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     //   present(UIViewController(), animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Home"
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController :\(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ViewController :\(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ViewController :\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController :\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController :\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController :\(#function)")
    }

    @IBAction func button(_ sender: Any) {
      //  let storyboard = UIStoryboard(name: "Main", bundle:nil)
    //    let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
     // present(secondViewController, animated: true)
      navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

