//
//  iCloudViewController.m
//  DataPersistence
//
//  Created by 彭盛凇 on 2019/3/11.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import "iCloudViewController.h"

@interface iCloudViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@end

@implementation iCloudViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"iCloud存储";
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)save:(id)sender {
    
    NSUbiquitousKeyValueStore *keyValueStore = [NSUbiquitousKeyValueStore defaultStore];
    [keyValueStore setString:self.textField2.text forKey:self.textField1.text];
    [keyValueStore synchronize];
    
}
- (IBAction)get:(id)sender {
    
    NSUbiquitousKeyValueStore *keyValueStore = [NSUbiquitousKeyValueStore defaultStore];
    NSString *str = [keyValueStore stringForKey:self.textField1.text];
    self.textField2.text = str;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
