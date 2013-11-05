/*
The MIT License (MIT)

Copyright (c) 2013 Benjamin Michotte <bmichotte@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

#import <UIKit/UIKit.h>

@interface UIDevice (BENCategory)

/**
 Check if the device is an iPad

 @return YES if it is an iPad
 */
+ (BOOL)ben_isPad;

/**
 Check if the device is an iPhone or iPod

 @return YES if it is an iPhone or iPod
 */
+ (BOOL)ben_isPhone;

/**
 Check if the device is an iPhone 5

 @return YES if it is an iPhone 5
 */
+ (BOOL)ben_isPhone5;

/**
 Check if the device is a Retina model

 @return YES if it is a Retina model
 */
+ (BOOL)ben_isRetina;

/**
 Check if the device is in portrait mode

 @return YES if it is in portrait mode
 */
+ (BOOL)ben_isPortrait;

/**
 Check if the device is in landscape mode

 @return YES if it is in landscape mode
 */
+ (BOOL)ben_isLandscape;

@end
