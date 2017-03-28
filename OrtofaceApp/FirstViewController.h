//
//  FirstViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"


@interface FirstViewController : UIViewController <UIScrollViewDelegate, iCarouselDataSource, iCarouselDelegate>
{
    UIPageControl *pageControll;
    UIScrollView *scrollView;
}

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIPageControl *pageControll;

- (IBAction)clickPageControll:(id)sender;

@property (strong, nonatomic) IBOutlet iCarousel *carousel;






@end
