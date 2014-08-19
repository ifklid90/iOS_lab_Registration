//
//  ViewController.m
//  Registration
//
//  Created by User on 19.08.14.
//  Copyright (c) 2014 AiratMulyukovIncorporated. All rights reserved.
//

#import "ViewController.h"
#import "RegistratedTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *telNumbTextField;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.names = [[NSMutableArray alloc]init];
    self.tels =  [[NSMutableArray alloc]init];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //[segue destinationViewController];
    
    RegistratedTableViewController *rtvc = [[RegistratedTableViewController alloc]init];
    rtvc = [segue destinationViewController];
    
    [self.names addObject: self.nameTextField.text];
    [self.tels addObject: self.telNumbTextField.text];
    rtvc.names = self.names;
    rtvc.telNumbs = self.tels;
    
}
@end
