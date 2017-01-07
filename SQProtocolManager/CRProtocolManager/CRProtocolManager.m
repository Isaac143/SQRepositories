//
//  CRProtocolManager.m
//  SQProtocolManager
//
//  Created by Isaac on 17/1/7.
//  Copyright © 2017年 Isaac. All rights reserved.
//

#import "CRProtocolManager.h"

@interface CRProtocolManager()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation CRProtocolManager

+ (CRProtocolManager *)shareInstance {
    static CRProtocolManager *manager ;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc]init];
    });
    return manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc]init];
    }
    return self;
}

+(void)registServerProvide:(id)provide forProtocal:(Protocol *)protocal {
    if (provide == nil || protocal == nil) {
        return;
    }
    [[self shareInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocal)];
}

+ (id)serverforProtocal:(Protocol *)protocal {
    return [[self shareInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocal)];
}


@end
