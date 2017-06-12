//The MIT License (MIT)
//
//Copyright (c) 2016 Stanly Moses <stanlyhardy@yahoo.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.


#import "ViewController.h"
#import <MMProgressHUD.h>
#import <DCProgressHUD.h>

//branch 1 test

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [MMProgressHUD showWithTitle:@"" status:@""];
//    [SVProgressHUD showWithStatus:nil];
//    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:186/255.0f green:186/255.0f blue:186/255.0f alpha:0.7f]];
//    [SVProgressHUD showProgressHUDCompleteMessage:@"HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO"Duration:3.0f];
//    [SVProgressHUD showSuccessWithStatus:@"hello"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didTappedSmiley:(id)sender {
    [[FlareView sharedCenter]flarify:self.smiley inParentView:self.view withColor:[UIColor yellowColor]];
    [DCProgressHUD showProgressHUDCompleteMessage:@"HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO HELLO"Duration:3.0f];
}
- (IBAction)didTappedHeart:(id)sender {
    [[FlareView sharedCenter]flarify:self.heart inParentView:self.view withColor:[UIColor redColor]];
//    [DCProgressHUD dismiss];
    [DCProgressHUD show];
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 3.0 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [DCProgressHUD dismissWithCompletion:^{
            [self didTappedSmiley:nil];
        }];
    });

}
- (IBAction)didTappedStar:(id)sender {
    [[FlareView sharedCenter]flarify:self.star inParentView:self.view withColor:[UIColor blueColor]];
    [DCProgressHUD showWithStatus:@"HELLO HELLO HELLO HELLO HELLO"];
}



@end
