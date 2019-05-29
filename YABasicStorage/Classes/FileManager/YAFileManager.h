//
//  YAFileManager.h
//  Pods
//
//  Created by xygj on 2019/5/29.
//

#import <UIKit/UIKit.h>
#import "YASingletion.h"

NS_ASSUME_NONNULL_BEGIN

@interface YAFileManager : YASingletion

#pragma mark - 沙盒文件夹
// 获取Document路径
+ (NSString *)ya_documentPath;

// 获取Library路径
+ (NSString *)ya_libraryPath;

// 获取Cache路径
+ (NSString *)ya_cachePath;

// 获取Temp路径
+ (NSString *)ya_TempPath;

#pragma mark - 文件操作
// 判断文件是否存在于某个路径中
+ (BOOL)fileIsExistOfPath:(NSString *)filePath;

// 创建文件路径
+ (BOOL)creatDirectoryWithPath:(NSString *)dirPath;

// 创建文件
+ (BOOL)creatFileWithPath:(NSString *)filePath;

// 保存文件
+ (BOOL)saveFile:(NSString *)filePath withData:(NSData *)data;

// 追加写文件
+ (BOOL)appendData:(NSData *)data withPath:(NSString *)path;

// 获取文件
+ (NSData *)getFileData:(NSString *)filePath;

// 获取文件夹下文件列表
+ (NSArray *)getFileListInFolderWithPath:(NSString *)path;

// 从某个路径中移除文件
+ (BOOL)removeFileOfPath:(NSString *)filePath;

#pragma mark - 文件属性
// 获取文件大小 单位KB
+ (long long)getFileSizeWithPath:(NSString *)path;

@end

NS_ASSUME_NONNULL_END
