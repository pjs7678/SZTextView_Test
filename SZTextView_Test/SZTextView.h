//
//  SZTextView.h
//  SZTextView
//
//  Created by glaszig on 14.03.13.
//  Copyright (c) 2013 glaszig. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SZTextViewDelegate;

@interface SZTextView : UITextView

@property (nonatomic, copy) NSString *placeholder;
@property (nonatomic, copy) NSAttributedString *attributedPlaceholder;
@property (nonatomic, strong) UIColor *placeholderTextColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, weak) id<SZTextViewDelegate> SZdelegate;

- (void)preparePlaceholder;

@end

@protocol SZTextViewDelegate <NSObject>

-(void)textView:(SZTextView *)textView changedFrame:(CGRect)frame;
-(void)textViewBecomeFirstResponder:(SZTextView *)textView;
@end