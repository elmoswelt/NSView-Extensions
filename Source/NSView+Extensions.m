//
//  NSView+Extensions.m
//
//  Created by Elmar Tampe && Kristijan Šimić on 28.04.13.
//  Copyright (c) 2013 Elmar Tampe. All rights reserved.
//

#import "NSView+Extensions.h"

@implementation NSView (Extensions)

// ------------------------------------------------------------------------------------------
#pragma mark - Left
// ------------------------------------------------------------------------------------------
- (CGFloat)left
{
	return self.frame.origin.x;	
}


- (void)setLeft:(CGFloat)left
{
	NSRect rect = self.frame;
	rect.origin.x = left;
	self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Right
// ------------------------------------------------------------------------------------------
- (CGFloat)right
{
	return self.frame.origin.x + self.frame.size.width;	
}


- (void)setRight:(CGFloat)right
{
	NSRect rect = self.frame;
	rect.origin.x = right - rect.size.width;
	self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Top
// ------------------------------------------------------------------------------------------
- (CGFloat)top
{
	return self.frame.origin.y;	
}


- (void)setTop:(CGFloat)top
{
	NSRect rect = self.frame;
	rect.origin.y = top - rect.size.height;
	self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Bottom
// ------------------------------------------------------------------------------------------
- (CGFloat)bottom
{
	return self.frame.origin.y + self.frame.size.height;	
}


- (void)setBottom:(CGFloat)bottom
{
	NSRect rect = self.frame;
	rect.origin.y = bottom;
	self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Width
// ------------------------------------------------------------------------------------------
- (CGFloat)width
{
    return self.frame.size.width;
}


- (void)setWidth:(CGFloat)width
{
    NSRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Height
// ------------------------------------------------------------------------------------------
- (CGFloat)height
{
    return self.frame.size.height;
}


- (void)setHeight:(CGFloat)height
{
    NSRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Size
// ------------------------------------------------------------------------------------------
- (CGSize)size
{
    return self.frame.size;
}


- (void)setSize:(CGSize)size
{
    NSRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}


// ------------------------------------------------------------------------------------------
#pragma mark - Center
// ------------------------------------------------------------------------------------------
- (NSPoint)center
{
    return NSMakePoint((self.frame.size.width / 2.0), (self.frame.size.height / 2.0));
}


- (void)setCenter:(CGPoint)center
{
	CGFloat originX = self.frame.size.width - (self.frame.size.width / 2.0);
	CGFloat originY = self.frame.size.height - (self.frame.size.height / 2.0);
	
	self.frame = NSMakeRect(originX; originY, self.frame.size.width, self.frame.size.height);
}


// ------------------------------------------------------------------------------------------
#pragma mark - Corner Coordinate
// ------------------------------------------------------------------------------------------
- (NSPoint)cornerCoordinateForType:(NSViewCornerCoordinateType)cornerType
{
    switch (cornerType)
    {
        case NSViewCornerCoordinateTypeTopLeft:
        {
            return NSMakePoint(self.bounds.origin.x, self.bounds.size.height);
        }
        case NSViewCornerCoordinateTypeTopRight:
        {
            return NSMakePoint(self.bounds.size.width, self.bounds.size.height);
        }
        case NSViewCornerCoordinateTypeBottomLeft:
        {
            return NSMakePoint(self.bounds.origin.x, self.bounds.origin.y);
        }
        case NSViewCornerCoordinateTypeBottomRight:
        {
            return NSMakePoint(self.bounds.size.width, self.bounds.origin.y);
        }
        default:
		{
			return NSZeroPoint;
		}
    }
}

@end
