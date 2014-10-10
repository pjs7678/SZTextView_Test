//
//  ViewController.m
//  SZTextView_Test
//
//  Created by tigmi on 2014. 10. 10..
//  Copyright (c) 2014년 ___JongsuPark___. All rights reserved.
//

#import "ViewController.h"
#import "SZTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SZTextView *textView = [[SZTextView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    [textView setPlaceholder:@"Add a note..."];
	textView.delegate = self;
	[self.view addSubview:textView];
    
    
    CGFloat height = 40.f;
	UIView *ContainerView = [[UIView alloc] initWithFrame:CGRectMake(0, -height, CGRectGetWidth(self.view.frame), height)];
    [ContainerView setBackgroundColor:[UIColor blueColor]];
	
	[textView setContentInset:UIEdgeInsetsMake(CGRectGetHeight(ContainerView.frame), 0, 0, 0)];
	[textView addSubview:ContainerView];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView
{
	
}

- (BOOL) textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)_text
{
	return YES;
}

@end
