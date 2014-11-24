//
//  ViewController.m
//  C348-P03-Exercise05
//
//  Created by Seow Khee Wei (RP) on 3/11/14.
//  Copyright (c) 2014 Republic Polytechnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *outSlider;

@property (weak, nonatomic) IBOutlet UILabel *outLbl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segmentChanged:(UISegmentedControl *)sender {

    int selectedSegmentIndex = [sender selectedSegmentIndex];
    
    if (selectedSegmentIndex == 0) {
        [[self outSlider] setValue:0];
        [[self outLbl] setText:[NSString stringWithFormat:@"The slider is less than 50%%"]];
        
    }else if(selectedSegmentIndex == 1) {
        [[self outSlider] setValue:25];
        [[self outLbl] setText:[NSString stringWithFormat:@"The slider is less than 50%%"]];
        
    }else if(selectedSegmentIndex == 2) {
        [[self outSlider] setValue:50];
        [[self outLbl] setText:[NSString stringWithFormat:@"The slider is set at 50%%"]];
        
    }else if(selectedSegmentIndex == 3) {
        [[self outSlider] setValue:75];
        [[self outLbl] setText:[NSString stringWithFormat:@"The slider is more than 50%%"]];
        
    }else{
        [[self outSlider] setValue:105];
        [[self outLbl] setText:[NSString stringWithFormat:@"The slider is more than 50%%"]];
        
    }
    

}

@end
