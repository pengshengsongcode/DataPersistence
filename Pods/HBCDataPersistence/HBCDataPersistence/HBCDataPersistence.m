//
//  HBCDataPersistence.m
//  DataPersistence
//
//  Created by 彭盛凇 on 2019/3/12.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import "HBCDataPersistence.h"

#if __has_include(<AFNetworking/AFNetworking.h>)
#import <SAMKeychain.h>
#else
#import "SAMKeychain.h"
#endif



@implementation HBCDataPersistence

+ (instancetype)dataPersistence {
    static HBCDataPersistence *sharedDataPersistenceInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (sharedDataPersistenceInstance == nil) {
            sharedDataPersistenceInstance = [[HBCDataPersistence alloc] init];
        }
    });
    
    return sharedDataPersistenceInstance;
}

//增 - 改（替换）
- (void)saveDataWithUserDefultsSetValue:(id)value forKey:(NSString *)key {
    
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}//使用UserDefults存储

- (void)saveDataWithKeychainSharingSetValue:(id)value forKey:(NSString *)key{
    
    [SAMKeychain setPassword:value forService:@"iOS" account:key];
}//使用Keychain存储

- (void)saveDataWithiCloundSetValue:(id)value forKey:(NSString *)key{
    
    [[NSUbiquitousKeyValueStore defaultStore] setObject:value forKey:key];
    [[NSUbiquitousKeyValueStore defaultStore] synchronize];
}//使用iClound存储

//删
- (void)deleteDataWithUserDefultsForKey:(NSString *)key{
    
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}//使用UserDefults存储

- (void)deleteDataWithKeychainSharingForKey:(NSString *)key{
    
    [SAMKeychain deletePasswordForService:@"iOS" account:key];
}//使用Keychain存储

- (void)deleteDataWithiCloundForKey:(NSString *)key{
    
    [[NSUbiquitousKeyValueStore defaultStore] removeObjectForKey:key];
    [[NSUbiquitousKeyValueStore defaultStore] synchronize];
}//使用iClound存储


//查
- (id)getDataWithUserDefultsValueForKey:(NSString *)key{
    
    return [[NSUserDefaults standardUserDefaults] valueForKey:key];
}//使用UserDefults获取

- (id)getDataWithKeychainSharingValueForKey:(NSString *)key{
    
    return [SAMKeychain passwordForService:@"iOS" account:key];
}//使用KeychainSharing获取

- (id)getDataWithiCloundValueForKey:(NSString *)key{
    
    return [[NSUbiquitousKeyValueStore defaultStore] objectForKey:key];
}//使用iClound获取

@end
