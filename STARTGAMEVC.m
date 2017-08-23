//
//  STARTGAMEVC.m
//  snakeandcake
//
//  Created by abc on 8/21/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import "STARTGAMEVC.h"

@interface STARTGAMEVC ()

@end

@implementation STARTGAMEVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.startot.layer.cornerRadius=self.startot.frame.size.height/2.0f;
   [self popuppp];
   

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (IBAction)STARTBUTTONACTION:(id)sender {
    [self popuppp];
    
   // [self activety];
    [self performSelector:@selector(activety) withObject:nil afterDelay:1.0 ];

    [self performSelector:@selector(nav) withObject:nil afterDelay:3.0 ];

    
   }
-(void)activety
{
    self.startot.hidden=YES;

    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activityIndicator.color=[UIColor greenColor];
    activityIndicator.alpha = 1;
    [self.view addSubview:activityIndicator];
    activityIndicator.center = CGPointMake([[UIScreen mainScreen]bounds].size.width/2, [[UIScreen mainScreen]bounds].size.height/2);
    [activityIndicator startAnimating];
    
    

}
-(void)nav
{

    UIViewController *NAV=[self.storyboard instantiateViewControllerWithIdentifier:@"ID"];
    [self.navigationController pushViewController:NAV animated:YES];

    
}
-(void)popuppp
{


    self.startot.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    
    
    
    [UIView animateWithDuration:0.6/1.5 animations:^{
        self.startot.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            self.startot.transform = CGAffineTransformScale(CGAffineTransformIdentity, .9, .9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                self.startot.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
}

-(void)ZoomInOut
{
    //for zoom in
    [UIView animateWithDuration:0.5f animations:^{
        
        self.startot.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished){}];
    // for zoom out
    [UIView animateWithDuration:0.5f animations:^{
        
       self.startot.transform = CGAffineTransformMakeScale(1, 1);
    }completion:^(BOOL finished){}];

}




@end
