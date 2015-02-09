//
//  ViewController.h
//  views
//
//  Created by Amin on 2/7/15.
//  Copyright (c) 2015 Mohammad Saeed Ansari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
{
    UIView* myView1;
    UIView* myView2;
    UIView* myView3;
    UIView* myView4;
    UIView* myView5;
    UIView* myView6;
    
    UIImageView* imageView1;
    UIImageView* imageView2;
    UIImageView* imageView3;
    UIImageView* imageView4;
    UIImageView* imageView5;
    UIImageView* imageView6;
    
    UISwipeGestureRecognizer* left;
    UISwipeGestureRecognizer* right;
    UISwipeGestureRecognizer* up;
    UISwipeGestureRecognizer* down;
    
    int swipeCounter;
    int LRCounter;
    int UDCounter;
}

@end

