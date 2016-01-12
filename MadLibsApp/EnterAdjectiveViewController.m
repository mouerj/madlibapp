//
//  EnterAdjectiveViewController.m
//  MadLibsApp
//
//  Created by Richard Martin on 2016-01-11.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // NSLog(self.name);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([self.adjectiveTextField.text isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultsViewController *dvc = segue.destinationViewController;
    dvc.adjective = self.adjectiveTextField.text;
    dvc.name = self.name;
    
    
    
    
}


@end
