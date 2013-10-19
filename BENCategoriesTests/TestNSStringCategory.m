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

#import <XCTest/XCTest.h>
#import "NSString+BENCategory.h"

@interface TestNSStringCategory : XCTestCase

@end

@implementation TestNSStringCategory

- (void)testShouldStartWithString
{
    XCTAssertTrue([@"hello" ben_startsWith:@"he"]);
}

- (void)testShouldStartWithRegex
{
    XCTAssertTrue([@"hello" ben_startsWith:@"^he?"]);
}

- (void)testShouldNotStartWithString
{
    XCTAssertFalse([@"hello" ben_startsWith:@"Fo"]);
}

- (void)testShouldNotStartWithRegex
{
    XCTAssertFalse([@"hello" ben_startsWith:@"^[0-9]"]);
}

- (void)testShouldSEndWithString
{
    XCTAssertTrue([@"hello" ben_endsWith:@"lo"]);
}

- (void)testShouldEndWithRegex
{
    XCTAssertTrue([@"hello" ben_endsWith:@"[abl]l?o$"]);
}

- (void)testShouldNotEndWithString
{
    XCTAssertFalse([@"hello" ben_endsWith:@"Fo"]);
}

- (void)testShouldNotEndWithRegex
{
    XCTAssertFalse([@"hello" ben_endsWith:@"[0-9]$"]);
}

- (void)testShouldLikeString
{
    XCTAssertTrue([@"hello" ben_isLike:@"ell"]);
}

- (void)testShouldLikeRegex
{
    XCTAssertTrue([@"hello" ben_isLike:@"e?l"]);
}

- (void)testShouldNotLikeString
{
    XCTAssertFalse([@"hello" ben_isLike:@"Fo"]);
}

- (void)testShouldNotLikeRegex
{
    XCTAssertFalse([@"hello" ben_isLike:@"[0-9]$"]);
}

- (void)testShouldMd5String
{
    XCTAssertEqualObjects([@"hello" ben_md5], @"5d41402abc4b2a76b9719d911017c592");
}

- (void)testShouldSha1String
{
    XCTAssertEqualObjects([@"hello" ben_sha1], @"aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d");
}

- (void)testShouldSha256String
{
    XCTAssertEqualObjects([@"hello" ben_sha256], @"2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824");
}

@end
