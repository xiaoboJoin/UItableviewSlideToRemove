//
//  DetailTableViewCell.m
//  UITableViewSlideToRemove
//
//  Created by iXiaobo on 14-11-25.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "DetailTableViewCell.h"

@implementation DetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
        UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
    swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionLeft;
        [self.contentView addGestureRecognizer:swipeGestureRecognizer];
//    
//    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
//    [self.contentView addGestureRecognizer:tapGestureRecognizer];
    
    
}

//
//- (void)layoutSubviews
//{
//    UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe:)];
//    [self addGestureRecognizer:swipeGestureRecognizer];
//}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)swipe:(UIGestureRecognizer *)gesture
{
   // NSLog(@"swipe");
    
//    if (gesture.direction == UISwipeGestureRecognizerDirectionLeft)
//    {
    [UIView animateWithDuration:0.3 animations:^{
         self.myContentView.transform=CGAffineTransformTranslate(self.myContentView.transform, -120, 0);
    }];
    
        
//    }
//    else
//    {
//        self.myContentView.transform=CGAffineTransformTranslate(self.myContentView.transform, 0, 0);
//    }
    
    
}

- (IBAction)didTapOnDeleteButton:(id)sender {
    
    NSLog(@"didTapOnDeleteButton");
    
}
@end
