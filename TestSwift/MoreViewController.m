//
//  MoreViewController.m
//  TestSwift
//
//  Created by Valentine on 03.06.14.
//  Copyright (c) 2014 silvansky. All rights reserved.
//

#import "MoreViewController.h"

#import "TestSwift-Swift.h"

@interface MoreViewController ()

@property (nonatomic, weak) IBOutlet UILabel *textLabel;

@end

@implementation MoreViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.textLabel.text = self.text;
	ViewController *root = self.navigationController.viewControllers[0];
	NSLog(@"Root data: %@", [root dataDescription]);
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
}

@end
