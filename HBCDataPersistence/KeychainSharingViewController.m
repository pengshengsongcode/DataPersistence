//
//  KeychainSharingViewController.m
//  DataPersistence
//
//  Created by 彭盛凇 on 2019/3/11.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import "KeychainSharingViewController.h"
#import "HBCDataPersistence.h"

@interface KeychainSharingViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@end

@implementation KeychainSharingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"KeychainSharing存储";
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)save:(id)sender {
    
    [[HBCDataPersistence dataPersistence] saveDataWithKeychainSharingSetValue:self.textField2.text forKey:self.textField1.text];
    
}

- (IBAction)get:(id)sender {
    
    self.textField2.text = [[HBCDataPersistence dataPersistence] getDataWithKeychainSharingValueForKey:self.textField1.text];
}
- (IBAction)delete:(id)sender {
    
    [[HBCDataPersistence dataPersistence] deleteDataWithKeychainSharingForKey:self.textField1.text];
    
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
