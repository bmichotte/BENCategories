# BENCategories

Some of my Objective-C categories

## NSDate+BENCategories

Test if the date is earlier than the other date  
`- (BOOL)ben_isEarlier:(NSDate *)date;`


Test if the date is later than the other date  
`- (BOOL)ben_isLater:(NSDate *)date;`

## NSString+BENCategories

Test if a string starts with a string or a regular expression  
`- (BOOL)ben_startsWith:(NSString *)regex;`

Test if a string ends with a string or a regular expression  
`- (BOOL)ben_endsWith:(NSString *)regex;`

Test if a string contains a string or a regular expression  
`- (BOOL)ben_isLike:(NSString *)regex;`


# Installation
Simply drag the *BENCategories* folder in your project.

# License
[MIT License](LICENSE)
