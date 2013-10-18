# BENCategories

Some of my Objective-C categories

## NSDate+BENCategories

Test if the date is earlier than the other date  
```objc
 (BOOL)ben_isEarlier:(NSDate *)date;
 ```


Test if the date is later than the other date  
```objc
- (BOOL)ben_isLater:(NSDate *)date;
 ```

## NSString+BENCategories

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


# Installation
Simply drag the *BENCategories* folder in your project.

# License
[MIT License](LICENSE)
