//
//  PolyView.h
//  HelloPolyOSX
//
//  Created by Szabolcs on 2010.11.17..
//  Copyright 2010 purzelbaum.hu. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PolyShape.h"

@interface PolyView : NSView {


	IBOutlet PolyShape *myPolyShape;
}



@end
