//
//  FUHomepageModuleCell.m
//  FULiveDemo
//
//  Created by 项林平 on 2022/7/6.
//  Copyright © 2022 FaceUnity. All rights reserved.
//

#import "FUHomepageModuleCell.h"

@interface FUHomepageModuleCell ()

@property (nonatomic, strong) UIImageView *backgroundImageView;

@property (nonatomic, strong) UIImageView *iconImageView;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIImageView *bottomImageView;

@property (nonatomic, strong) UIImageView *animationImageView;

@end

@implementation FUHomepageModuleCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configureUI];
    }
    return self;
}

- (void)configureUI {
    self.backgroundColor = FUColorFromHex(0x1F1D35);
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 5.0;
    
    [self.contentView addSubview:self.backgroundImageView];
    [self.backgroundImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.top.bottom.equalTo(self.contentView);
    }];
    
    [self.contentView addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.contentView.mas_centerY).mas_offset(-14);
    }];
    
    [self.contentView addSubview:self.bottomImageView];
    [self.bottomImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.bottom.equalTo(self.contentView);
        make.height.equalTo(self.contentView.mas_height).multipliedBy(0.25);
    }];
    
    [self.contentView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.bottomImageView);
        make.leading.trailing.equalTo(self.contentView);
    }];
    
    [self.contentView addSubview:self.animationImageView];
    [self.animationImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.contentView.mas_centerY).mas_offset(-2);
        make.size.mas_offset(CGSizeMake(101, 122));
    }];
}

#pragma mark - Getters

- (UIImageView *)backgroundImageView {
    if (!_backgroundImageView) {
        _backgroundImageView = [[UIImageView alloc] init];
    }
    return _backgroundImageView;
}

- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
    }
    return _iconImageView;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:13];
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.adjustsFontSizeToFitWidth = YES;
    }
    return _titleLabel;
}

- (UIImageView *)bottomImageView {
    if (!_bottomImageView) {
        _bottomImageView = [[UIImageView alloc] init];
    }
    return _bottomImageView;
}

- (UIImageView *)animationImageView {
    if (!_animationImageView) {
        _animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 101, 122)];
    }
    return _animationImageView;
}

#pragma mark - Overriding（避免点击时动画暂停）

- (void)setSelected:(BOOL)selected {}

- (void)setHighlighted:(BOOL)highlighted {}

@end
