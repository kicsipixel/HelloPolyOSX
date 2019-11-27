//
//  HelloPolyOSXAppDelegate.h
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.10..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HelloPolyOSXAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
