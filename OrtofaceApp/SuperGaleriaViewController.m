//
//  SuperGaleriaViewController.m
//  iCologic
//
//  Created by AFOE on 23/05/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import "SuperGaleriaViewController.h"

@interface SuperGaleriaViewController ()

@end

@implementation SuperGaleriaViewController

@synthesize pageControll, scrollView;

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
    
    int i;
    
    for (i = 1; i < 4; i++) {
        UIImageView *images = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"NewsLetter%d.png", i]]];
        images.frame = CGRectMake((i - 1)* 768, 0, 768, 881);
        [scrollView addSubview:images];
    }
    
    scrollView.delegate =self;
    scrollView.contentSize = CGSizeMake(3 * 768, 881);
    scrollView.pagingEnabled = YES;
    
    pageControll.numberOfPages = 3;
    pageControll.currentPage = 0;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPageControll:(id)sender {
    
    
    NSInteger pages = pageControll.currentPage;
    CGRect frame = scrollView.frame;
    frame.origin.x = frame.size.width *pages;
    frame.origin.y = 0;
    [scrollView scrollRectToVisible:frame animated:YES];
}

-(void) scrollViewDidEndDecelerating:(UIScrollView *)_scrollView{
    
    int page = _scrollView.contentOffset.x / _scrollView.frame.size.width;
    pageControll.currentPage = page;
}
@end
