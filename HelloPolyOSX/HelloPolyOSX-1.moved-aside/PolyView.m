//
//  PolyView.m
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.17..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import "PolyView.h"


@implementation PolyView


- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

-(int) numberOfSides {

	return numberOfSides;
	
}

-(void) setNumberOfSides:(int)value {

	numberOfSides = value;
	
}

- (void)drawRect:(NSRect)dirtyRect {
    // Drawing code here.
	NSLog(@"%i", numberOfSides);
}

@end
