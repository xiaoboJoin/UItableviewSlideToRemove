//
//  DetailTableViewCell.h
//  UITableViewSlideToRemove
//
//  Created by iXiaobo on 14-11-25.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTableViewCell : UITableViewCell<UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *didTapOnSaveButton;
- (IBAction)didTapOnDeleteButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *myContentView;

- (void)swipe:(UIGestureRecognizer *)gesture;

@end
