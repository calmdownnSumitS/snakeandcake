//
//  ViewController.h
//  snakeandcake
//
//  Created by abc on 8/18/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)dicebuttonaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *dicenumber;
@property (strong, nonatomic) IBOutlet UILabel *dicevaluelbl;
@property (strong, nonatomic) IBOutlet UIImageView *imageview;


@end

