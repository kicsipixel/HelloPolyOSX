//
//  Controller.h
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.17..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PolyView.h"
#import "PolyShape.h"

@interface Controller : NSObject {
	
	IBOutlet PolyView *view;
	IBOutlet PolyShape *myPolyShape;
	IBOutlet id labelNumberOfSides;
	IBOutlet id labelInternalAngle;
	IBOutlet id labelNameOfPolygon;
	
}

-(IBAction) increaseButton:(id) sender;
-(IBAction) decreaseButton:(id) sender;

@end
