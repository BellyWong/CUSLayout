//
//  CUSLayoutSampleFactory.m
//  CUSLayout
//
//  Created by zhangyu on 13-4-24.
//
//

#import "CUSLayoutSampleFactory.h"
#import <QuartzCore/CALayer.h>
@implementation CUSLayoutSampleFactory

+(UIView *)createControl{
    NSString *str = @"abcdefghijklmnopqrstuvwxyz";
    NSInteger r = 1 + random()%15;
    NSString *title = [str substringToIndex:r];
    
    return [CUSLayoutSampleFactory createControl:title];
}

+(UIView *)createControl:(NSString *)title{
//    UILabel *label = [[UILabel alloc] init];
    UIButton *label = [UIButton buttonWithType:UIButtonTypeCustom];
//    label.text=title;
//    label.textAlignment = UITextAlignmentCenter;
 
    [label setTitle:title forState:UIControlStateNormal];
    label.backgroundColor = [CUSLayoutSampleFactory randomLightingColor];
    label.layer.cornerRadius = 5;

    return label;
}

+(UIColor *)randomLightingColor{
    int numberArray[3];
    numberArray[0] = random()%255;
    numberArray[1] = random()%255;
    numberArray[2] = random()%255;
    
    //
    if(numberArray[0] + numberArray[1] < 40){
        numberArray[2] = 125 + random()%125;
    }
    if(numberArray[0] + numberArray[1] + numberArray[2] > 235*3){
        numberArray[2] = random()%125;
    }
    

    int i = random()%3;
    int t = numberArray[i];
    numberArray[i] = numberArray[2 - i];
    numberArray[2 - i] = t;
    
    CGFloat r = numberArray[0]/255.0f;
    CGFloat g = numberArray[1]/255.0f;
    CGFloat b = numberArray[2]/255.0f;
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}
@end
