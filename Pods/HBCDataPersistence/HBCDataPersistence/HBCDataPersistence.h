//
//  HBCDataPersistence.h
//  DataPersistence
//
//  Created by 彭盛凇 on 2019/3/12.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HBCDataPersistence : NSObject

+ (instancetype)dataPersistence;

//增 - 改（替换）
- (void)saveDataWithUserDefultsSetValue:(id)value forKey:(NSString *)key;//使用UserDefults存储
- (void)saveDataWithKeychainSharingSetValue:(id)value forKey:(NSString *)key;//使用Keychain存储
- (void)saveDataWithiCloundSetValue:(id)value forKey:(NSString *)key;//使用iClound存储

//删
- (void)deleteDataWithUserDefultsForKey:(NSString *)key;//使用UserDefults存储
- (void)deleteDataWithKeychainSharingForKey:(NSString *)key;//使用Keychain存储
- (void)deleteDataWithiCloundForKey:(NSString *)key;//使用iClound存储


//查
- (id)getDataWithUserDefultsValueForKey:(NSString *)key;//使用UserDefults获取
- (id)getDataWithKeychainSharingValueForKey:(NSString *)key;//使用KeychainSharing获取
- (id)getDataWithiCloundValueForKey:(NSString *)key;//使用iClound获取

@end

NS_ASSUME_NONNULL_END
