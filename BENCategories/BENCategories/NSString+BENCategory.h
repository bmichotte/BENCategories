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

#import <Foundation/Foundation.h>

@interface NSString (BENCategory)

#pragma mark - String search
/**
 Test if a string starts with a string or a regular expression

 @param regex the string or the regular expression to test.
 */
- (BOOL)ben_startsWith:(NSString *)regex;

/**
 Test if a string ends with a string or a regular expression

 @param regex the string or the regular expression to test.
 */
- (BOOL)ben_endsWith:(NSString *)regex;

/**
 Test if a string contains a string or a regular expression

 @param regex the string or the regular expression to test.
 */
- (BOOL)ben_isLike:(NSString *)regex;

#pragma mark - Crypto
/**
 Get the md5 of a string
 */
- (NSString *)ben_md5;

/**
 Get the sha1 of a string
 */
- (NSString *)ben_sha1;

/**
 Get the sha256 of a string
 */
- (NSString *)ben_sha256;

@end
