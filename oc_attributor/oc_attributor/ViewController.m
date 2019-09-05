//
//  ViewController.m
//  oc_attributor
//
//  Created by 李波涛 on 2019/9/2.
//  Copyright © 2019年 李波涛. All rights reserved.
//

#import "ViewController.h"
#import "TextStatusViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"analyze text"]) {
        if ([segue.destinationViewController isKindOfClass:[TextStatusViewController class]]) {
            TextStatusViewController *tsvc = (TextStatusViewController *)segue.destinationViewController;
            tsvc.textToAnalyze = self.body.textStorage;
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
