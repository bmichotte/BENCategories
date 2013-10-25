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

@import UIKit;

@interface UIColor (BENCategory)

/**
 This is an alias to [UIColor colorWithRed:green:blue:alpha] but you have to pass red, green, blue as int from 0 to 255

 @param red The red component of the color object, specified as a value from 0 to 255
 @param green The green component of the color object, specified as a value from 0 to 255
 @param blue The green component of the color object, specified as a value from 0 to 255
 */
+ (UIColor *)ben_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

/**
 Get a UIColor from an hex string

 @param hexString The hex color. Can start with #
 */
+ (UIColor *)ben_colorWithHexString:(NSString *)hexString;

/**
 Get the inverse of a color.
 For exemple [[UIColor whiteColor] inverseColor] should be equal to [UIColor blackColor]
*/
- (UIColor *)ben_inverseColor;

@end
