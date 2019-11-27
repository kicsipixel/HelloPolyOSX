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


- (void)drawRect:(NSRect)dirtyRect {
    // Drawing code here.

	NSGraphicsContext    *    nsGraphicsContext  = [NSGraphicsContext currentContext];
	CGContextRef            context        = (CGContextRef) [nsGraphicsContext graphicsPort];
	
	CGContextTranslateCTM(context, 0, 0);
	
	CGContextSetRGBFillColor(context, 0.3, 0.6, 0.9, 0.60);
	
	CGContextFillRect(context, dirtyRect);
	
	CGPoint five[13];
	
	int i;
	
	for(i=0;i< 13;i++)
		
	{
		
		five[i].x = 150 + 100* sin( i*2*M_PI/myPolyShape.numberOfSides);
		
		five[i].y = 150 + 100* cos( i*2*M_PI/myPolyShape.numberOfSides);
		
	}
	
	CGContextSetLineWidth(context, 3.0);
	CGContextAddLines ( context, five,13);
	CGContextSetRGBStrokeColor(context,1,1,1,1.0);
	CGContextStrokePath(context);
	CGContextFillPath(context);
	

	
	//CGContextSetRGBFillColor(context, 0.7, 0.7, 0.7, 1.0);
	//CGContextFillRect(context, self.bounds);
}

@end
