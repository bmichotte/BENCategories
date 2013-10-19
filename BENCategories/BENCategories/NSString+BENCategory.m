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
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (BENCategory)

#pragma mark - String search
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

#pragma mark - Crypto
- (NSString *)ben_md5
{
    const char *value = [self UTF8String];

    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, strlen(value), outputBuffer);

    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++)
    {
        [outputString appendFormat:@"%02x", outputBuffer[count]];
    }
    return outputString;
}

- (NSString *)ben_sha1
{
    NSData *data = [self dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, data.length, digest);
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];

    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
    {
        [output appendFormat:@"%02x", digest[i]];
    }

    return output;
}

- (NSString *)ben_sha256
{
    const char *s = [self cStringUsingEncoding:NSASCIIStringEncoding];
    NSData *keyData = [NSData dataWithBytes:s length:strlen(s)];

    uint8_t digest[CC_SHA256_DIGEST_LENGTH] = {0};
    CC_SHA256(keyData.bytes, keyData.length, digest);
    NSData *out = [NSData dataWithBytes:digest length:CC_SHA256_DIGEST_LENGTH];
    NSString *hash = [out description];
    hash = [hash stringByReplacingOccurrencesOfString:@" " withString:@""];
    hash = [hash stringByReplacingOccurrencesOfString:@"<" withString:@""];
    hash = [hash stringByReplacingOccurrencesOfString:@">" withString:@""];
    return hash;
}

@end
