//
//  ViewController.swift
//  Exemplo Firebase Realtime
//
//  Created by Ricardo on 28/08/2018.
//  Copyright © 2018 Hands Midia. All rights reserved.
//

import UIKit
import Firebase
import Kingfisher


class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imgV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference()
        // Aqui conecta a label e a image view ao banco de dados do firebase
        ref.child("imgURLM").observe(.value, with: { (snapshot) in
            if let text = snapshot.value as? String {
                self.imgV.kf.setImage(with: URL(string: text)!)
                self.labelText.text = text
            }
        })
        
    }
    
}






