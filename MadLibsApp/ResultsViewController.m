//
//  ResultsViewController.m
//  MadLibsApp
//
//  Created by Richard Martin on 2016-01-11.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

#import "ResultsViewController.h"



@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(self.adverb);
    
    self.resultsTextView.text = [NSString stringWithFormat: @"%@ %@ %@ %@", self.name, self.adjective, self.verb, self.adverb];
}


@end
