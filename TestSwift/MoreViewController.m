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
@property (nonatomic, weak) IBOutlet UILabel *detailLabel;

@end

@implementation MoreViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.textLabel.text = self.text;
	ViewController *root = self.navigationController.viewControllers[0];
	self.detailLabel.text = [NSString stringWithFormat:@"Root data: %@", [root dataDescription]];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
}

@end
