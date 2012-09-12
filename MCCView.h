//
//  MCCView.h
//
//  Created by Thierry Passeron on 08/09/12.
//  Copyright (c) 2012 Monte-Carlo Computing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCCView : UIView

@property (copy, nonatomic) void(^drawBlock)(UIView *_self, CGRect rect);

@end
