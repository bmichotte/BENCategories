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

#import "NSString+BENCategory.h"

@implementation NSString (BENCategory)

- (NSRange)ben_testRegex:(NSString *)regex
{
    NSError *error = nil;
    NSRegularExpression *regexp = [NSRegularExpression regularExpressionWithPattern:regex
                                                                            options:NSRegularExpressionCaseInsensitive
                                                                              error:&error];

    if (error)
    {
        return NSMakeRange(NSNotFound, 0);
    }
    NSRange range = [regexp rangeOfFirstMatchInString:self options:0 range:NSMakeRange(0, [self length])];
    return range;
}

- (BOOL)ben_startsWith:(NSString *)regex
{
    NSRange range = [self ben_testRegex:regex];
    return !NSEqualRanges(range, NSMakeRange(NSNotFound, 0)) && range.location == 0;
}

- (BOOL)ben_endsWith:(NSString *)regex
{
    NSRange range = [self ben_testRegex:regex];
    return !NSEqualRanges(range, NSMakeRange(NSNotFound, 0)) && [self length] - range.length == range.location;
}

- (BOOL)ben_isLike:(NSString *)regex
{
    NSRange range = [self ben_testRegex:regex];
    return !NSEqualRanges(range, NSMakeRange(NSNotFound, 0));
}

@end
