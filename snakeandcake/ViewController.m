//
//  ViewController.m
//  snakeandcake
//
//  Created by abc on 8/18/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *positions;
    int i,a,value,nextvalue,lastvlu;
    
    BOOL fist;
   }

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    i=1;
    
    fist=YES;
    
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)dicebuttonaction:(id)sender {
    
    positions=[NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
    
    NSUInteger count = [positions count];
   
    
    
    if (count <= 1) return;
    for (NSUInteger a = 0; a < count - 1; ++a) {
        NSInteger remainingCount = count - a;
        NSInteger exchangeIndex = a + arc4random_uniform((u_int32_t )remainingCount);
        [positions exchangeObjectAtIndex:a withObjectAtIndex:exchangeIndex];
   
    }
    
    [self.dicevaluelbl setText:positions[3]];
    
    
    //////converting string in int///////
    NSString *string = positions[3];
    NSLog(@"random value ===== %@",positions[3]);
    value = [string intValue];
   
    
        [self conditionsofDICE];
    
}
-(void)conditionsofDICE
{
   
    if (([_dicevaluelbl.text isEqualToString:@"1"]||[_dicevaluelbl.text isEqualToString:@"6"] )&&fist==YES)
    {
        fist=NO;
        i=0;
        
        [self performSelector:@selector(click) withObject:nil afterDelay:1.0 ];
    }
    else
    {
        if (fist==NO)
        {
            [self performSelector:@selector(click) withObject:nil afterDelay:1.0 ];

        }
    }
 
}
-(void)click
{
 

    NSLog(@"%d",nextvalue);
    nextvalue = nextvalue + value;

    lastvlu=nextvalue-value;

    
    

    switch (nextvalue)
    
    {
            
        case 27:
            nextvalue=1;
            [self update];
            break;
            
            
        case 21:
            nextvalue=9;
            [self update];
            break;
            
            
        case 19:
            nextvalue=7;
            [self update];
            break;
            
            
        case 17:
            nextvalue=4;
            [self update];
            break;
       
            
            ////////step
            
            
            
        case 5:
            nextvalue=8;
            [self update];
            break;
            
            
        case 11:
            nextvalue=26;
            [self update];
            break;
            
            
        case 20:
            nextvalue=29;
            [self update];
            break;
            
            
        case 3:
            nextvalue=22;
            [self update];
            break;
            
            
        default:
            [self update];
            break;
            
    }
    

}
-(void)update
{
    [self popuppp];
    [(UIButton*)[self.view viewWithTag:nextvalue] setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
    
    
    [(UIButton*)[self.view viewWithTag:lastvlu] setBackgroundImage:[UIImage imageNamed:@"a1.png"] forState:UIControlStateNormal];
    [self popuppp];

}

-(void)popuppp
{
    
    
[self.view viewWithTag:nextvalue].transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001) ;
    
    
    
    [UIView animateWithDuration:0.3/1.5 animations:^{
        [self.view viewWithTag:nextvalue].transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            [self.view viewWithTag:nextvalue].transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                [self.view viewWithTag:nextvalue].transform = CGAffineTransformIdentity;
            }];
        }];
    }];
}


@end
