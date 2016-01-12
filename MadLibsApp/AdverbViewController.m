//
//  AdverbViewController.m
//  MadLibsApp
//
//  Created by Joseph Mouer on 1/11/16.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "AdverbViewController.h"
#import "ResultsViewController.h"

@interface AdverbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *enterAdverbText;

@end

@implementation AdverbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(self.verb);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([self.enterAdverbText.text isEqualToString:@""])
    {
        return NO;
    }
    else
    {
        return YES;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ResultsViewController *dvc = segue.destinationViewController;
    dvc.adverb = self.enterAdverbText.text;
    dvc.verb = self.verb;
    
}


@end
