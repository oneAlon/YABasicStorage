//
//  YAUserDefaults.h
//  Pods
//
//  Created by xygj on 2019/5/29.
//

#import "YASingletion.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YAUserDefaults : YASingletion

// 添加键值对
- (void)setObject:(id)object forKey:(NSString *)key;
- (void)setString:(NSString *)string forKey:(NSString *)key;
- (void)setInteger:(NSInteger)integer forKey:(NSString *)key;
- (void)setBool:(BOOL)value forKey:(NSString *)key;
- (void)setFloat:(CGFloat)value forKey:(NSString *)key;

// 获取指定Key对应的值
- (NSObject *)objectForKey:(NSString *)key;
- (NSString *)stringForKey:(NSString *)key;
- (NSInteger)integerForKey:(NSString *)key;
- (NSDictionary *)dictionaryForKey:(NSString *)key;
- (NSArray *)arrayForKey:(NSString *)key;
- (BOOL)boolForKey:(NSString *)key;
- (CGFloat)floatForKey:(NSString *)key;

// 移除指定Key对应的值
- (void)removeObjectForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
