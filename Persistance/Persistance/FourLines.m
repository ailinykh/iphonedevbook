//
//  FourLines.m
//  Persistance
//
//  Created by Антон on 13.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FourLines.h"

#define kField1Key  @"Field1"
#define kField2Key  @"Field2"
#define kField3Key  @"Field3"
#define kField4Key  @"Field4"

@implementation FourLines
@synthesize field1;
@synthesize field2;
@synthesize field3;
@synthesize field4;

#pragma mark NSCoding
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:field1 forKey:kField1Key];
    [aCoder encodeObject:field2 forKey:kField2Key];
    [aCoder encodeObject:field3 forKey:kField3Key];
    [aCoder encodeObject:field4 forKey:kField4Key];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        field1 = [aDecoder decodeObjectForKey:kField1Key];
        field2 = [aDecoder decodeObjectForKey:kField1Key];
        field3 = [aDecoder decodeObjectForKey:kField1Key];
        field4 = [aDecoder decodeObjectForKey:kField1Key];
    }
    return self;
}

#pragma mark - NSCopying
- (id)copyWithZone:(NSZone *)zone {
    FourLines *copy = [[[self class] allocWithZone:zone] init];
    copy.field1 = [self.field1 copyWithZone:zone];
    copy.field2 = [self.field2 copyWithZone:zone];
    copy.field3 = [self.field3 copyWithZone:zone];
    copy.field4 = [self.field4 copyWithZone:zone];
    return copy;
}
@end
