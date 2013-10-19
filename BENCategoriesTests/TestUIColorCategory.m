//
//  TestUIColorCategory.m
//  BENCategories
//
//  Created by Benjamin Michotte on 19/10/13.
//  Copyright (c) 2013 Benjamin Michotte. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+BENCategory.h"

@interface TestUIColorCategory : XCTestCase

@end

@implementation TestUIColorCategory

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testColorAlias
{
    UIColor *uiColor = [UIColor redColor];
    UIColor *benColor = [UIColor ben_colorWithRed:255.0 green:0.0 blue:0.0];

    CGFloat uiRed, uiGreen, uiBlue, uiAlpha;
    [uiColor getRed:&uiRed green:&uiGreen blue:&uiBlue alpha:&uiAlpha];

    CGFloat benRed, benGreen, benBlue, benAlpha;
    [benColor getRed:&benRed green:&benGreen blue:&benBlue alpha:&benAlpha];

    XCTAssertEqual(uiRed, benRed);
    XCTAssertEqual(uiGreen, benGreen);
    XCTAssertEqual(uiBlue, benBlue);
    XCTAssertEqual(uiAlpha, benAlpha);
}

- (void)testInverseColor
{
    // red color is 1.0 0.0 0.0
    // inversed color should be 0.0 1.0 1.0
    UIColor *inversedRedColor = [[UIColor redColor] ben_inverseColor];
    CGFloat inversedRed, inversedGreen, inversedBlue, inversedAlpha;
    [inversedRedColor getRed:&inversedRed green:&inversedGreen blue:&inversedBlue alpha:&inversedAlpha];

    XCTAssertEqualObjects(@(inversedRed), @(0.0));
    XCTAssertEqualObjects(@(inversedGreen), @(1.0));
    XCTAssertEqualObjects(@(inversedBlue), @(1.0));
}

- (void)testHexColor
{
    UIColor *hexColor = [UIColor ben_colorWithHexString:@"#FF0000"];
    XCTAssertEqualObjects(hexColor, [UIColor redColor]);
}

@end
