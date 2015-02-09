//
//  ViewController.m
//  views
//
//  Created by Amin on 2/7/15.
//  Copyright (c) 2015 Mohammad Saeed Ansari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    swipeCounter=1;
    LRCounter=0;
    
    UDCounter=0;
    myView1=[[UIView alloc]initWithFrame:self.view.frame];
    imageView1=[[UIImageView alloc]initWithFrame:myView1.frame];
    imageView1.image=[UIImage imageNamed:@"1.jpg"];
    [myView1 addSubview:imageView1];
    [self.view addSubview:myView1];
    
    myView2=[[UIView alloc]initWithFrame:self.view.frame];
    imageView2=[[UIImageView alloc]initWithFrame:myView2.frame];
    imageView2.image=[UIImage imageNamed:@"2.jpg"];
    [myView2 addSubview:imageView2];
    [self.view addSubview:myView2];
    myView2.transform=CGAffineTransformMakeTranslation(-myView2.frame.size.width, 0);
    
    myView3=[[UIView alloc]initWithFrame:self.view.frame];
    imageView3=[[UIImageView alloc]initWithFrame:myView3.frame];
    imageView3.image=[UIImage imageNamed:@"3.jpg"];
    [myView3 addSubview:imageView3];
    [self.view addSubview:myView3];
    myView3.transform=CGAffineTransformMakeTranslation(myView3.frame.size.width, 0);
    
    myView4=[[UIView alloc]initWithFrame:self.view.frame];
    imageView4=[[UIImageView alloc]initWithFrame:myView4.frame];
    imageView4.image=[UIImage imageNamed:@"4.jpg"];
    [myView4 addSubview:imageView4];
    [self.view addSubview:myView4];
    myView4.transform=CGAffineTransformMakeTranslation(0, myView4.frame.size.height);
    
    myView5=[[UIView alloc]initWithFrame:self.view.frame];
    imageView5=[[UIImageView alloc]initWithFrame:myView5.frame];
    imageView5.image=[UIImage imageNamed:@"5.jpg"];
    [myView5 addSubview:imageView5];
    [self.view addSubview:myView5];
    myView5.transform=CGAffineTransformMakeTranslation((-myView5.frame.size.width)*2, 0);
    
    left=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleLeftSwipe:)];
    left.delegate=self;
    [left setDirection:UISwipeGestureRecognizerDirectionLeft];
    [self.view addGestureRecognizer:left];
    
    right=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleRightSwipe:)];
    right.delegate=self;
    [right setDirection:UISwipeGestureRecognizerDirectionRight];
    [self.view addGestureRecognizer:right];
    
    up=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleUpSwipe:)];
    up.delegate=self;
    [up setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.view addGestureRecognizer:up];
    
    down=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(handleDownSwipe:)];
    down.delegate=self;
    [down setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.view addGestureRecognizer:down];

    
//    [UIView animateKeyframesWithDuration:1 delay:2 options:0 animations:^{
//        myView2.transform=CGAffineTransformMakeTranslation(0, 0);
//        myView1.transform=CGAffineTransformMakeTranslation(myView1.frame.size.width, 0);
//    } completion:^(BOOL finished) {
//        [UIView animateKeyframesWithDuration:2 delay:3 options:0 animations:^{
//            myView2.transform=CGAffineTransformMakeTranslation(0,myView2.frame.size.height);
//           // myView1.transform=CGAffineTransformMakeTranslation(0, 200);
//        } completion:^(BOOL finished) {
//            
//        }];
//    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handleLeftSwipe:(UISwipeGestureRecognizer*)sender{
    NSLog(@"left");
    if (swipeCounter==2) {
        swipeCounter=1;
        [UIView animateKeyframesWithDuration:0.5 delay:0 options:0 animations:^{
            myView1.transform=CGAffineTransformMakeTranslation(0, 0);
            myView2.transform=CGAffineTransformMakeTranslation(-myView2.frame.size.width, 0);
            myView3.transform=CGAffineTransformMakeTranslation(myView3.frame.size.width, 0);
        } completion:^(BOOL finished) {
        }];
    }
    else if (swipeCounter==1) {
        swipeCounter=0;
        [UIView animateKeyframesWithDuration:0.5 delay:0 options:0 animations:^{
            myView3.transform=CGAffineTransformMakeTranslation(0, 0);
            myView1.transform=CGAffineTransformMakeTranslation(-myView1.frame.size.width, 0);
            myView2.transform=CGAffineTransformMakeTranslation((-myView2.frame.size.width)*2, 0);
        } completion:^(BOOL finished) {
        }];
    }
}
-(void)handleRightSwipe:(UISwipeGestureRecognizer*)sender{
    NSLog(@"right");
    if (swipeCounter==0) {
        swipeCounter=1;
        [UIView animateKeyframesWithDuration:0.5 delay:0 options:0 animations:^{
            myView1.transform=CGAffineTransformMakeTranslation(0, 0);
            myView2.transform=CGAffineTransformMakeTranslation(-myView2.frame.size.width, 0);
            myView3.transform=CGAffineTransformMakeTranslation(myView3.frame.size.width, 0);
        } completion:^(BOOL finished) {
        }];
    }

    else if (swipeCounter==1) {
        swipeCounter=2;
        [UIView animateKeyframesWithDuration:0.5 delay:0 options:0 animations:^{
            myView2.transform=CGAffineTransformMakeTranslation(0, 0);
            myView1.transform=CGAffineTransformMakeTranslation(myView1.frame.size.width, 0);
            myView3.transform=CGAffineTransformMakeTranslation((myView3.frame.size.width)*2, 0);
        } completion:^(BOOL finished) {
        }];
    }
}
-(void)handleUpSwipe:(UISwipeGestureRecognizer*)sender{
    NSLog(@"up");
    if (swipeCounter==1) {
        swipeCounter=-1;
        [UIView animateKeyframesWithDuration:0.5 delay:0 options:0 animations:^{
            myView4.transform=CGAffineTransformMakeTranslation(0, 0);
            myView1.transform=CGAffineTransformMakeTranslation(0, -myView1.frame.size.height);
            } completion:^(BOOL finished) {
        }];
    }
}
-(void)handleDownSwipe:(UISwipeGestureRecognizer*)sender{
    NSLog(@"down");
    if (swipeCounter==-1) {
        swipeCounter=1;
        [UIView animateKeyframesWithDuration:0.5 delay:0 options:0 animations:^{
            myView1.transform=CGAffineTransformMakeTranslation(0, 0);
            myView4.transform=CGAffineTransformMakeTranslation(0, myView1.frame.size.height);
        } completion:^(BOOL finished) {
        }];
    }
}

@end
