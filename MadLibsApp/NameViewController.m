//
//  NameViewController.m
//  MadLibsApp
//
//  Created by Richard Martin on 2016-01-11.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "NameViewController.h"
#import "EnterAdjectiveViewController.h"


@interface NameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation NameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([self.nameTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    EnterAdjectiveViewController *dvc = segue.destinationViewController;
    dvc.name = self.nameTextField.text;
}


@end
