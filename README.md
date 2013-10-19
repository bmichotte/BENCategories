# BENCategories

Some of my Objective-C categories

## NSDate+BENCategories

Test if the date is earlier than the other date  
```objc
- (BOOL)ben_isEarlier:(NSDate *)date;
```

Test if the date is later than the other date  
```objc
- (BOOL)ben_isLater:(NSDate *)date;
 ```

## NSString+BENCategories

Get the md5 of a string
```objc
- (NSString *)ben_md5;
 ```

Get the sha1 of a string
```objc
- (NSString *)ben_sha1;
 ```

 Get the sha256 of a string
```objc
- (NSString *)ben_sha256;
 ```

Test if a string starts with a string or a regular expression  
```objc
- (BOOL)ben_startsWith:(NSString *)regex;
 ```

Test if a string ends with a string or a regular expression  
```objc
- (BOOL)ben_endsWith:(NSString *)regex;
 ```

Test if a string contains a string or a regular expression  
```objc
- (BOOL)ben_isLike:(NSString *)regex;
 ```

You can use regular expression or strings in the NSString category.

### Examples  
```objc
[@"hello" ben_startsWith:@"^he?"]   
[@"hello" ben_endsWith:@"[abl]l?o$"]   
[@"hello" ben_isLike:@"llo"]    
```

## UIColor+BENCategories

This is an alias to [UIColor colorWithRed:green:blue:alpha] but you have to pass red, green, blue as int from 0 to 255
```objc
+ (UIColor *)ben_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
```

Get a UIColor from an hex string
```objc
+ (UIColor *)ben_colorWithHexString:(NSString *)hexString;
```

Get the inverse of a color.
For exemple *[[UIColor whiteColor] inverseColor]* should be equal to *[UIColor blackColor]*
```objc
- (UIColor *)ben_inverseColor;
```


# Installation
Simply drag the *BENCategories* folder in your project.

# License
[MIT License](LICENSE)
