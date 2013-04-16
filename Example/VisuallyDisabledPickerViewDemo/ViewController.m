//
//  ViewController.m
//  VisuallyDisabledPickerViewDemo
//
//  Created by Jonathan Hogervorst on 16-04-13.
//  Copyright (c) 2013 Buzzera. All rights reserved.
//

#import "UIPickerView+VisuallyDisabled.h"

#import "ViewController.h"

@implementation ViewController

@synthesize pickerView;

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
	
	UIButton *enableButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	enableButton.frame = CGRectMake(20, 20, self.view.bounds.size.width - 40, 80);
	[enableButton setTitle:@"Enable" forState:UIControlStateNormal];
	[enableButton addTarget:self action:@selector(enablePickerView) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:enableButton];
	
	UIButton *disableButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	disableButton.frame = CGRectMake(20, 120, self.view.bounds.size.width - 40, 80);
	[disableButton setTitle:@"Disable" forState:UIControlStateNormal];
	[disableButton addTarget:self action:@selector(disablePickerView) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:disableButton];
	
	self.pickerView = [[UIPickerView alloc] initWithFrame:CGRectZero];
	self.pickerView.frame = CGRectMake(0, self.view.bounds.size.height - self.pickerView.bounds.size.height, self.view.bounds.size.width, self.pickerView.bounds.size.height);
	self.pickerView.delegate = self;
	self.pickerView.dataSource = self;
	self.pickerView.showsSelectionIndicator = YES;
	[self.view addSubview:self.pickerView];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return 10;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
	return [NSString stringWithFormat:@"Test %d%d", component, row];
}

- (void)enablePickerView
{
	[self.pickerView visuallySetEnabled:YES];
}

- (void)disablePickerView
{
	[self.pickerView visuallySetEnabled:NO];
}

@end