## Description

MCCView lets you create a custom view with a block for it's drawRect: method.
This allows you to avoid custom class creation and put the drawing calls where they are used for better clarity.

## Example

```objective-c
MCCView *shadowFrame = [[MCCView alloc]initWithFrame:CGRectMake(5, 5, 90, 70)];
[shadowFrame setDrawBlock:^(UIView *_self, CGRect rect) {
  [[UIColor blackColor]setFill];
  CGContextSetShadowWithColor(UIGraphicsGetCurrentContext(), (CGSize){0.0f, 2.0f}, 2.0f, [UIColor blackColor].CGColor);
  UIRectFill((CGRect){{5.0, 5.0}, {80.0, 60.0}});
}];
shadowFrame.backgroundColor = nil;
shadowFrame.opaque = NO;
```

## License terms

Copyright (c), 2012 Thierry Passeron

The MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.