//
//  ViewController.h
//  VisuallyDisabledPickerViewDemo
//
//  Created by Jonathan Hogervorst on 16-04-13.
//  Copyright (c) 2013 Buzzera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) UIPickerView *pickerView;

@end