//
//  UIPickerView+VisuallyDisabled.m
//
//  Created by Jonathan Hogervorst on 15-04-13.
//  Copyright (c) 2013 Buzzera. All rights reserved.
//
//  This code is licensed under MIT license.
//  See LICENSE.txt for details.
//

#import "UIPickerView+VisuallyDisabled.h"

@implementation UIPickerView (VisuallyDisabled)

- (void)visuallySetEnabled:(BOOL)_enabled
{
	self.userInteractionEnabled = _enabled;
	
	for (UIView *subview in self.subviews) {
		NSString *subviewClassName = NSStringFromClass([subview class]);
		
		// _UIPickerWheelView is the component background
		if ([subviewClassName isEqualToString:@"_UIPickerWheelView"]) {
			subview.alpha = self.userInteractionEnabled ? 1 : 0.75;
		}
		
		// UIPickerTableView contains the component text
		else if ([subviewClassName isEqualToString:@"UIPickerTableView"]) {
			subview.alpha = self.userInteractionEnabled ? 1 : 0.5;
		}
		
		// _UIPickerViewSelectionBar is the selection indicator
		else if ([subviewClassName isEqualToString:@"_UIPickerViewSelectionBar"]) {
			subview.alpha = self.userInteractionEnabled ? 1 : 0.5;
		}
	}
}

@end