//
//  MCCView.m
//
//  Created by Thierry Passeron on 08/09/12.
//  Copyright (c) 2012 Monte-Carlo Computing. All rights reserved.
//

#import "MCCView.h"

@implementation MCCView
@synthesize drawBlock, onSetFrame;

//#define DEBUG_MCCView

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (!self) return nil;
  self.contentMode = UIViewContentModeRedraw; /* So that a frame change triggers the re-drawing */
  return self;
}

- (id)initWithFrame:(CGRect)frame drawBlock:(void(^)(UIView *__v, CGRect rect))block {
  self = [super initWithFrame:frame];
  if (!self) return nil;
  self.drawBlock = block;
  return self;
}

+ (id)viewWithFrame:(CGRect)frame drawBlock:(void(^)(UIView *__v, CGRect rect))block {
  return [[[self alloc]initWithFrame:frame drawBlock:block]autorelease];
}

- (void)dealloc {
#ifdef DEBUG_MCCView
  NSLog(@"dealloc %@", NSStringFromClass([self class]));
#endif
  self.drawBlock = nil;
  self.onSetFrame = nil;
  [super dealloc];
}

- (void)drawRect:(CGRect)rect {
  if (drawBlock) {
#ifdef DEBUG_MCCView
    NSLog(@"drawRect block");
#endif
    drawBlock(self, rect);
  }
  else [super drawRect:rect];
}

- (void)setFrame:(CGRect)frame {
  [super setFrame:frame];
  if (onSetFrame) onSetFrame(self);
}

@end
