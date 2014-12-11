//
//  ProductCell.m
//  Product Catalogue
//
//  Created by Boris Bügling on 11/12/14.
//  Copyright (c) 2014 Boris Bügling. All rights reserved.
//

#import "ProductCell.h"
#import "UIView+Geometry.h"

@implementation ProductCell

@synthesize coverImageView = _coverImageView;
@synthesize titleLabel = _titleLabel;

-(UIImageView *)coverImageView {
    if (_coverImageView) {
        return _coverImageView;
    }

    _coverImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 20.0, 200.0, 200.0)];
    _coverImageView.x = (self.width - _coverImageView.width) / 2;
    [self addSubview:_coverImageView];

    return _coverImageView;
}

-(UILabel *)titleLabel {
    if (_titleLabel) {
        return _titleLabel;
    }

    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, self.height - 60.0, 150.0, 20.0)];
    _titleLabel.x = (self.width - _titleLabel.width) / 2;
    [self addSubview:_titleLabel];

    return _titleLabel;
}

@end