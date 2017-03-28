//
//  FirstViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "FirstViewController.h"
#import "FXImageView.h"



@interface FirstViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation FirstViewController

@synthesize pageControll;

@synthesize scrollView;

@synthesize carousel;

@synthesize items;




-(void)awakeFromNib
{
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Images" ofType:@"plist"];
    NSArray *imagePath = [NSArray arrayWithContentsOfFile:plistPath];
    NSMutableArray *URLs = [NSMutableArray array];
    
    for (NSString *path in imagePath) {
        NSURL *URL = [NSURL URLWithString:path];
        
        if (URL) {
            [URLs addObject:URL];
        }
        else
        {
            //NSLog(@"'@' is not a valid URL", path);
        }
    }
    self.items = URLs;
}

- (IBAction)clickPageControll:(id)sender

{
    NSInteger pages = pageControll.currentPage;
    CGRect frame = scrollView.frame;
    frame.origin.x = frame.size.width *pages;
    frame.origin.y = 0;
    [scrollView scrollRectToVisible:frame animated:YES];
    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)_scrollView
{
    int page = _scrollView.contentOffset.x / _scrollView.frame.size.width;
    pageControll.currentPage = page;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    int i;
    
    for (i = 1; i < 7; i ++) {
        UIImageView *images = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"slider%d.png",i]]];
        images.frame = CGRectMake((i - 1)*708, 0, 708, 412);
        [scrollView addSubview:images];
    }
    
    scrollView.delegate = self;
    scrollView.contentSize = CGSizeMake( 6 * 708, 412);
    scrollView.pagingEnabled = YES;
    
    pageControll.numberOfPages = 6;
    pageControll.currentPage = 0;
    
    carousel.type = iCarouselTypeCoverFlow2;
    
}

#pragma mark -
#pragma mark cyclelife

-(NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return [items count];
}

-(UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    if (view == nil) {
        FXImageView *imageView = [[FXImageView alloc] initWithFrame:CGRectMake(0, 0, 197.0f, 265.0f)];
        imageView.asynchronous = YES;
        imageView.reflectionScale = 0.5f;
        imageView.reflectionAlpha = 0.25f;
        imageView.reflectionGap = 10.0f;
        imageView.shadowOffset = CGSizeMake(0.0f, 2.0f);
        imageView.shadowBlur = 0.5f;
        view = imageView;
    }
    
    ((FXImageView *)view).processedImage = [UIImage imageNamed:@"placeholder.png"];
    [(FXImageView *)view setImageWithContentsOfURL:[items objectAtIndex:index]];
    
    return view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
