//
//  ResultsViewController.m
//  MadLibsApp
//
//  Created by Richard Martin on 2016-01-11.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ResultsViewController.h"
#import "EnterAdjectiveViewController.h"


@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // NSLog(self.adjective);

    
    self.resultsTextView.text = [NSString stringWithFormat: @"Hey, %@ is a %@", self.name, self.adjective];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
