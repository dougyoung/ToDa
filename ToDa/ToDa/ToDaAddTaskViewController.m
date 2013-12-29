//
//  AddTaskViewController.m
//  ToDa
//
//  Created by dry on 12/24/13.
//  Copyright (c) 2013 DigitalBlend. All rights reserved.
//

#import "ToDaAddTaskViewController.h"

@interface ToDaAddTaskViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation ToDaAddTaskViewController

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton) return;
    if (self.nameField.text.length > 0) {
        self.task = [[ToDaTask alloc] init];
        self.task.name = self.nameField.text;
        self.task.completed = NO;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
