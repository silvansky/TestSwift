//
//  DetailViewController.swift
//  TestSwift
//
//  Created by Valentine on 03.06.14.
//  Copyright (c) 2014 silvansky. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	var text : String!

	@IBOutlet var textLabel : UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		self.textLabel.text = self.text
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
		var mvc : MoreViewController! = segue.destinationViewController as MoreViewController
		mvc.text = self.text;
	}
}
