//
//  PolyShape.h
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.10..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface PolyShape : NSObject {
		
	int numberOfSides;
	int minNumberOfSides;
	int maxNumberOfSides;
	float angleInRadian;
	float angleInDegree;

	NSString* nameOfPolygon;
	
}

@property (nonatomic) int numberOfSides, minNumberOfSides, maxNumberOfSides,increase;
@property (readonly) float angleInRadian, angleInDegree;
@property (readonly) NSString *nameOfPolygon;


-(NSString*) nameOfPolygon;
-(int) increase;



@end
