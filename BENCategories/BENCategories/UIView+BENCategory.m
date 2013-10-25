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

#import "UIView+BENCategory.h"

@implementation UIView (BENCategory)

+ (void)ben_animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations
{
    [[self class] ben_animateWithDuration:duration
                               animations:animations
                               completion:nil];
}

+ (void)ben_animateWithDuration:(NSTimeInterval)duration animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    [[self class] ben_animateWithDuration:duration
                                    delay:0
                                  options:UIViewAnimationOptionCurveEaseInOut
                               animations:animations
                               completion:completion];
}

+ (void)ben_animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    [[self class] ben_animateWithDuration:duration
                                    delay:delay
                   usingSpringWithDamping:.2
                    initialSpringVelocity:.2
                                  options:options
                               animations:animations
                               completion:completion];
}

+ (void)ben_animateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay usingSpringWithDamping:(CGFloat)dampingRatio initialSpringVelocity:(CGFloat)velocity options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL finished))completion
{
    if ([UIView respondsToSelector:@selector(animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:)])
    {
        // iOS7 +
        [UIView animateWithDuration:duration
                              delay:delay
             usingSpringWithDamping:dampingRatio
              initialSpringVelocity:velocity
                            options:options
                         animations:animations
                         completion:completion];
    }
    else
    {
        // iOS6
        [UIView animateWithDuration:duration
                              delay:delay
                            options:options
                         animations:animations
                         completion:completion];
    }
}

@end
