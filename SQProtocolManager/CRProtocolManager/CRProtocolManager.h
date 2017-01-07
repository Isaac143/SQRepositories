//
//  CRProtocolManager.h
//  SQProtocolManager
//
//  Created by Isaac on 17/1/7.
//  Copyright © 2017年 Isaac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRProtocolManager : NSObject

+ (void)registServerProvide:(id)provide forProtocal:(Protocol *)protocal;

+ (id)serverforProtocal:(Protocol *)protocal;

@end
