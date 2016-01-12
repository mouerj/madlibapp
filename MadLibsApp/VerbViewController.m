//
//  VerbViewController.m
//  MadLibsApp
//
//  Created by Joseph Mouer on 1/11/16.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "VerbViewController.h"
#import "AdverbViewController.h"


@interface VerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *enterVerbText;

@end

@implementation VerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NSLog(self.adjective);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    if ([self.enterVerbText.text isEqualToString:@""])
    {
        return NO;
    }
    else
    {
        return YES;
    }
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    AdverbViewController *dvc = segue.destinationViewController;
    dvc.verb = self.enterVerbText.text;
    dvc.adjective = self.adjective;
    dvc.name = self.name;

    }


@end
