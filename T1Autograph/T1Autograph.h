//
//  T1Autograph.h
//  T1Autograph
//
//  Created by Peter Skinner on 2/26/11.
//  Copyright 2011 Ten One Design. All rights reserved.
//


/*	Usage Instructions:

   Drag the T1Autograph folder into your XCode project.

   1) #import "T1Autograph.h" in your view controller, then add <T1AutographDelegate> to your .h file after the superclass name.

   2) Use one of the two class methods to obtain a signature.
        - The easiest way (with a modal window) is by calling [T1Autograph autographWithDelegate:self modalDisplayString:nil];
        - To obtain a signature from your choice of UIView, call [T1Autograph autographWithView:myUIView delegate:self];

   3) Implement autographDidCompleteWithSignature: in your view controller.  The T1Signature object you'll receive is defined in T1Signature.h.

   4) Once it's working for you, you can remove the watermark.  Use [autographInstance setLicenseCode:@"your40digitlicensecode"]; Purchase @"your40digitlicensecode" at http://tenonedesign.com/t1autograph

   For more usage info and examples, delve into the T1Autograph demo project.
   Support requests may be emailed to info@tenonedesign.com
   Follow @tenonedesign for library update notifications

 */


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "T1Signature.h"



@class T1AutographController;



@interface T1Autograph : NSObject
{
    BOOL showGuideline;                         // defaults to YES
    BOOL showDate;                              // defaults to NO
    BOOL showHash;                              // defaults to NO
    NSString * customHash;              // defaults to nil, use no more than 10 characters
    BOOL swipeToUndoEnabled;            // defaults to YES
    UIColor * strokeColor;              // defaults to [UIColor blackColor]
    float strokeWidth;                          // defaults to 3
    float velocityReduction;            // defaults to 0.85
    float exportScale;                          // defaults to 0.5

    NSString * licenseCode;             // set this to remove the watermark on signatures.  Maybe be purchased via http://tenonedesign.com/t1autograph.php

    NSUInteger buildNumber;             // library build number (read only)

    @private
    T1AutographController * autographController;
    NSString * exportFormat;
}

/* Examples of these customizations are in the demo project, default values shown in interface above */
@property ( assign, nonatomic ) BOOL showGuideline;
@property ( assign, nonatomic ) BOOL showDate;
@property ( assign, nonatomic ) BOOL showHash;
@property ( assign, nonatomic ) BOOL swipeToUndoEnabled;
@property ( retain, nonatomic ) UIColor * strokeColor;
@property ( assign, nonatomic ) float strokeWidth;
@property ( assign, nonatomic ) float velocityReduction;
@property ( assign, nonatomic ) float exportScale;
@property ( retain, nonatomic ) NSString * licenseCode;
@property ( assign, nonatomic, readonly ) NSUInteger buildNumber;
@property ( retain, nonatomic ) NSString * customHash;


/* Class methods.  Pick one to start out with. */
+ ( id ) autographWithDelegate:( id )eventDelegate modalDisplayString:( NSString * )displayString;
+ ( id ) autographWithView:( id )theView delegate:( id )eventDelegate;

/* You can always to it the long way. */
- ( id ) initWithView:( id )theView delegate:( id )eventDelegate modal:( BOOL )modalInput modalDisplayString:( NSString * )displayString;

/* Wire up your buttons to these methods */
- ( IBAction ) reset:( id )sender;
- ( IBAction ) done:( id )sender;

@end



// Delegate protocol
@protocol T1AutographDelegate <NSObject>
@optional
- ( void ) didDismissModalView;                                                    // user closed autograph modal view
- ( void ) autographDidCompleteWithNoData;                                 // user pressed the done button without signing
- ( void ) autograph:( T1Autograph * )autograph didCompleteWithSignature:( T1Signature * )signature;   // signature was successful

// DEPRECATED - do not use
- ( void ) autographDidCompleteWithImageData:( NSData * )imageData hashValue:( NSString * )hashValue;
@end