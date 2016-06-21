/*****************************************************************************
 * VLCKit: VLCExtensions
 *****************************************************************************
 * Copyright (C) 2010-2012, 2014 Pierre d'Herbemont and VideoLAN
 *
 * Authors: Pierre d'Herbemont
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

#import "VLCExtension.h"

@interface VLCExtension ()
{
    struct extension_t *_instance;
}
@end

@implementation VLCExtension
- (NSString *)description
{
    return [NSString stringWithFormat:@"VLC Extension %@", [self name]];
}

- (instancetype)init
{
    return [self initWithInstance:NULL];
}

- (instancetype)initWithInstance:(struct extension_t *)instance
{
    self = [super init];
    if (!self)
        return nil;
    _instance = instance;
    return self;
}

- (struct extension_t *)instance
{
    return _instance;
}

- (NSString *)name
{
    return @(_instance->psz_name);
}

- (NSString *)title
{
    return @(_instance->psz_title);
}

@end
