//
//  FortuneReceivedViewController.swift
//  Fortune
//
//  Created by Edward Smith on 10/20/17.
//  Copyright © 2017 Branch. All rights reserved.
//

import UIKit

class FortuneReceivedViewController: UIViewController {

    // MARK: - Member Variables

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    var name: String?
    var message: String?

    // MARK: - View Controller Lifecycle

    static func instantiate() -> FortuneReceivedViewController {
        let storyboard = UIStoryboard(name: "Fortune", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "FortuneReceivedViewController")
        return controller as! FortuneReceivedViewController
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.updateUI()
    }

    // MARK: - Update the UI

    func updateUI() {
        guard let messageLabel = self.messageLabel else { return }
        if let n = name, n.count > 0 {
            nameLabel.text = "Fortune from \(n):"
        } else {
            nameLabel.text = "Fortune received from beyond:"
        }
        if let m = message, m.count > 0 {
            messageLabel.text = m + "”"
        } else {
            messageLabel.text = "Spooky!”"
        }
    }

}
