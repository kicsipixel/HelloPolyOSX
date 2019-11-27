//
//  PolyShape.m
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.10..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import "PolyShape.h"


@implementation PolyShape
@synthesize numberOfSides, minNumberOfSides, maxNumberOfSides, angleInRadian, angleInDegree,increase, nameOfPolygon;

-(id) init {
	self = [super init];
	if (self != nil) {
	}
	return self;
}


-(int) increase {
	return numberOfSides++;
}
	
-(float) angleInDegree {
		
	return ((numberOfSides-2)*180)/numberOfSides;

}

-(int) maxNumberOfSides {

	return 12;
	
}

-(int) minNumberOfSides {
	
	return 3;
	
}

-(float) angleInRadian {

	return ((numberOfSides-2)*M_PI)/numberOfSides;
	
}

-(NSString *)nameOfPolygon {
	
		switch (numberOfSides) {
			case 3:
				nameOfPolygon = @"Triangle";
				break;
			case 4:
				nameOfPolygon = @"Quadrilateral";
				break;
			case 5:
				nameOfPolygon = @"Pentagon";
				break;
			case 6:
				nameOfPolygon = @"Hexagon";
				break;
			case 7:
				nameOfPolygon = @"Heptagon";
				break;
			case 8:
				nameOfPolygon = @"Octagon";
				break;
			case 9:
				nameOfPolygon = @"Enneagon or nonagon";
				break;
			case 10:
				nameOfPolygon = @"Decagon";
				break;
			case 11:
				nameOfPolygon = @"Hendecagon";
				break;
			case 12:
				nameOfPolygon = @"Dodecagon";
				break;
			default:
				break;
		}
	return nameOfPolygon;
}

@end
