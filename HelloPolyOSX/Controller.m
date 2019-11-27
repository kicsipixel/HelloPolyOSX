//
//  Controller.m
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.17..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import "Controller.h"


@implementation Controller

-(void) setField {

	
	NSString *labelSide = [NSString stringWithFormat:@"Number of sides is %i.", myPolyShape.numberOfSides];
	[labelNumberOfSides setStringValue:labelSide];
	NSString *labelAngle = [NSString stringWithFormat:@"%.2f in radian and %.2f in degree.", myPolyShape.angleInRadian, myPolyShape.angleInDegree];
	[labelInternalAngle setStringValue:labelAngle];
	[labelNameOfPolygon setStringValue:myPolyShape.nameOfPolygon];
}

-(void) awakeFromNib {
	[myPolyShape setNumberOfSides:5];
	[self setField];
	
	
}

-(IBAction) increaseButton:(id) sender {
	if (myPolyShape.numberOfSides < 12){
	myPolyShape.numberOfSides++;
		[self setField];
	[view setNeedsDisplay: YES];
	}
	else {
		NSString *labelSide = [NSString stringWithFormat:@"Maximum number of sides is %i.", myPolyShape.maxNumberOfSides];
		[labelNumberOfSides setStringValue:labelSide];
	}

}

-(IBAction) decreaseButton:(id) sender {
	if (myPolyShape.numberOfSides > 3){
		myPolyShape.numberOfSides = myPolyShape.numberOfSides - 1;
		[self setField];
		[view setNeedsDisplay: YES];
	}
	else {
		NSString *labelSide = [NSString stringWithFormat:@"Minimum number of sides is %i.", myPolyShape.minNumberOfSides];
		[labelNumberOfSides setStringValue:labelSide];
	}
	
}

@end
