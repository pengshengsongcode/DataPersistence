//
//  NSUserDefaultViewController.m
//  DataPersistence
//
//  Created by 彭盛凇 on 2019/3/11.
//  Copyright © 2019 彭盛凇. All rights reserved.
//

#import "NSUserDefaultViewController.h"

@interface NSUserDefaultViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiled1;
@property (weak, nonatomic) IBOutlet UITextField *textFiled2;

@end

@implementation NSUserDefaultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"NSUserDefaults存储";
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)save:(id)sender {
    
    [[NSUserDefaults standardUserDefaults] setValue:self.textFiled2.text forKey:self.textFiled1.text];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}
- (IBAction)get:(id)sender {
    
    self.textFiled2.text = [[NSUserDefaults standardUserDefaults] valueForKey:self.textFiled1.text];
    
}

@end
