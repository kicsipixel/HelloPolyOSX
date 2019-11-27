//
//  PolyView.h
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.17..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PolyView : NSView {

	int numberOfSides;
	
}

-(int) numberOfSides;
-(void) setNumberOfSides:(int)value;

@end
