//
//  President.m
//  Nav
//
//  Created by Антон on 08.02.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "President.h"

@implementation President
@synthesize number;
@synthesize name;
@synthesize fromYear;
@synthesize toYear;
@synthesize party;

#pragma mark - NSCoding
- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeInt:self.number forKey:kPresidentNumberKey];
    [aCoder encodeObject:self.name forKey:kPresidentNameKey];
    [aCoder encodeObject:self.fromYear forKey:kPresidentFromKey];
    [aCoder encodeObject:self.toYear forKey:kPresidentToKey];
    [aCoder encodeObject:self.party forKey:kPresidentPartyKey];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super init]) {
        number = [aDecoder decodeIntForKey:kPresidentNumberKey];
        name = [aDecoder decodeObjectForKey:kPresidentNameKey];
        toYear = [aDecoder decodeObjectForKey:kPresidentToKey];
        fromYear = [aDecoder decodeObjectForKey:kPresidentFromKey];
        party = [aDecoder decodeObjectForKey:kPresidentPartyKey];
    }
    return self;
}

@end
