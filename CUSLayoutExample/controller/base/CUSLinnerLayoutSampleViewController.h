//
//  CUSLinnerLayoutSampleViewController.h
//  CUSLayout
//
//  Created by zhangyu on 13-4-16.
//  Copyright (c) 2013年 zhangyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CUSLayoutSampleFactory.h"
@interface CUSLinnerLayoutSampleViewController : CUSViewController
@property (nonatomic,strong) IBOutlet UIView *contentView;

-(IBAction)toolItemClicked:(id)sender;
@end
