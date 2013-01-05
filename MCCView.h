//
//  MCCView.h
//
//  Created by Thierry Passeron on 08/09/12.
//  Copyright (c) 2012 Monte-Carlo Computing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCCView : UIView

@property (copy, nonatomic) void(^drawBlock)(UIView *__v, CGRect rect);
@property (copy, nonatomic) void(^onSetFrame)(UIView *__v);

+ (id)viewWithFrame:(CGRect)frame drawBlock:(void(^)(UIView *__v, CGRect rect))block;
- (id)initWithFrame:(CGRect)frame drawBlock:(void(^)(UIView *__v, CGRect rect))block;

@end
