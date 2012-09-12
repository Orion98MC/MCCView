//
//  MCCView.m
//
//  Created by Thierry Passeron on 08/09/12.
//  Copyright (c) 2012 Monte-Carlo Computing. All rights reserved.
//

#import "MCCView.h"

@implementation MCCView
@synthesize drawBlock;

//#define DEBUG_MCCView

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (!self) return nil;
  
  self.contentMode = UIViewContentModeRedraw; /* So that a frame change triggers the re-drawing */
  return self;
}

- (void)dealloc {
  self.drawBlock = nil;
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

@end
