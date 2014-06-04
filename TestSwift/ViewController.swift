//
//  ViewController.swift
//  TestSwift
//
//  Created by Valentine on 03.06.14.
//  Copyright (c) 2014 silvansky. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

	var data : Array<(String, String)>!

	override func viewDidLoad() {
		self.data = [ ("Meat", "Tasty"), ("Cheese", "Not bad"), ("Salad", "Boooooo")];
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}

	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
		var vc : DetailViewController! = segue.destinationViewController as DetailViewController
		vc.text = self.data[sender as Int].0
	}

	@objc func dataDescription() -> String {
		return "Data: \(self.data)"
	}

	// - UITableViewDataSource

	override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return self.data.count
	}

	override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		var cell : UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
		cell.textLabel.text = self.data[indexPath.row].0
		cell.detailTextLabel.text = self.data[indexPath.row].1
		return cell;
	}

	// - UITableViewDelegate

	override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
		self.performSegueWithIdentifier("detail", sender: indexPath.row)
	}
}

