//
//  CRJumpManager.m
//  CRAnimation
//
//  Created by Bear on 17/2/18.
//  Copyright © 2017年 BearRan. All rights reserved.
//

#import "CRJumpManager.h"
#import "CRBaseViewController.h"
#import "CRDemoInfoModel.h"

@interface CRJumpManager ()
{
    CRBaseViewController *_inVC;
}

@end

@implementation CRJumpManager

+ (CRJumpManager *)commonManagerInVC:(__weak CRBaseViewController *)inVC
{
    CRJumpManager *manager = [[CRJumpManager alloc] initInVC:inVC];
    return manager;
}

- (instancetype)initInVC:(__weak CRBaseViewController *)inVC
{
    self = [super init];
    
    if (self) {
        _inVC = inVC;
    }
    
    return self;
}

- (void)jumpToProductDetailVCWithDemoInfoModel:(CRDemoInfoModel *)demoInfoModel
{
    if (demoInfoModel.demoVCName) {
        CRBaseViewController *destinationVC = [[NSClassFromString(demoInfoModel.demoVCName) alloc] init];
        [_inVC.navigationController pushViewController:destinationVC animated:YES];
    }
}

@end
