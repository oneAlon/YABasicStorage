//
//  YAUserDefaults.m
//  Pods
//
//  Created by xygj on 2019/5/29.
//

#import "YAUserDefaults.h"

@interface YAUserDefaults ()

@property (nonatomic, strong) NSUserDefaults *userDefaults;

@end

@implementation YAUserDefaults

- (instancetype)init
{
    self = [super init];
    if (self) {
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }
    
    return self;
}

- (void)setObject:(id)object forKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        [self.userDefaults setObject:object forKey:key];
        
        [self.userDefaults synchronize];
    }
}

- (void)setString:(NSString *)string forKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        [self.userDefaults setObject:string forKey:key];
        
        [self.userDefaults synchronize];
    }
}

- (void)setInteger:(NSInteger)integer forKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        [self.userDefaults setInteger:integer forKey:key];
        
        [self.userDefaults synchronize];
    }
}

- (void)setBool:(BOOL)value forKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        [self.userDefaults setBool:value forKey:key];
        
        [self.userDefaults synchronize];
    }
}

- (void)setFloat:(CGFloat)value forKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        [self.userDefaults setFloat:value forKey:key];
        
        [self.userDefaults synchronize];
    }
}

- (NSObject *)objectForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults objectForKey:key];
    }
    
    return nil;
}

- (NSString *)stringForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults stringForKey:key];
    }
    
    return nil;
}

- (NSInteger)integerForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults integerForKey:key];
    }
    
    return -1;
}

- (NSDictionary *)dictionaryForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults dictionaryForKey:key];
    }
    
    return nil;
}

- (NSArray *)arrayForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults arrayForKey:key];
    }
    
    return nil;
}

- (BOOL)boolForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults boolForKey:key];
    }
    
    return NO;
}

- (CGFloat)floatForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        return [self.userDefaults floatForKey:key];
    }
    
    return 0.0f;
}

- (void)removeObjectForKey:(NSString *)key
{
    if (self.userDefaults && key.length) {
        [self.userDefaults removeObjectForKey:key];
        
        [self.userDefaults synchronize];
    }
}


@end
