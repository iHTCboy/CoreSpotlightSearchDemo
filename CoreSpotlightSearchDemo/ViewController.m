//
//  ViewController.m
//  CoreSpotlightSearchDemo
//
//  Created by HTC on 16/6/18.
//  Copyright © 2016年 www.iHTC.cc. All rights reserved.
//

#import "ViewController.h"

/**
 *  inport Frameworks
 */
#import <CoreSpotlight/CoreSpotlight.h>
#import <MobileCoreServices/MobileCoreServices.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // iOS 9.0后才能使用
    if ([self isIOS9Later]) {
        [self normalCell];
        [self noImageCell];
        [self imageCell];
        [self timeCell];
        [self phoneCell];
        [self navigationCell];
        [self ratingCell];
        [self muisicCell];
        //[self keySearchCell];
    }
}


- (void)normalCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"normalCell"];
    attributedSet.title = @"iHTCboy - normalCell";
    attributedSet.contentDescription = @"简单的形式";
    attributedSet.thumbnailData = [NSData new];
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"normalCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}


- (void)noImageCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"normalCell"];
    attributedSet.title = @"iHTCboy - noImageCell";
    attributedSet.contentDescription = @"不带图片的形式";
    //attributedSet.thumbnailData = nil;
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"noImageCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}


- (void)imageCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"imageCell"];
    attributedSet.title = @"iHTCboy - imageCell";
    attributedSet.contentDescription = @"带图片的形式";
    attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"imageCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}


- (void)timeCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"timeCell"];
    attributedSet.title = @"iHTCboy - timeCell";
    attributedSet.contentDescription = @"显示时间的形式";
    attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);
    // 显示时间的必要条件
    attributedSet.contentType = (NSString*)kUTTypeMessage;
    attributedSet.contentCreationDate = [NSDate date];
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"timeCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}

- (void)phoneCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"phoneCell"];
    attributedSet.title = @"iHTCboy - phoneCell";
    attributedSet.contentDescription = @"显示号码的形式";
    attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);
    // 显示的必要条件
    attributedSet.phoneNumbers = @[@"12345678"];
    attributedSet.supportsPhoneCall = @1;
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"phoneCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}


- (void)navigationCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"navigationCell"];
    attributedSet.title = @"iHTCboy - navigationCell";
    attributedSet.contentDescription = @"显示导航的形式";
    attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);
    // 显示的必要条件
    attributedSet.latitude = @23.135308;
    attributedSet.longitude = @113.270793;
    attributedSet.supportsNavigation = @1;
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"navigationCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}


- (void)ratingCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"ratingCell"];
    attributedSet.title = @"iHTCboy - ratingCell";
    attributedSet.contentDescription = @"显示星评的形式";
        attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);

    attributedSet.contentType = (NSString*) kUTTypeMovie;
//    attributedSet.contentType = (NSString*) kUTTypeAudio;
    attributedSet.rating = @3.5;
    attributedSet.ratingDescription = @"raign44";
    attributedSet.playCount = @10;
    attributedSet.information = @"information";
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"ratingCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}

- (void)muisicCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    // 1.创建CSSearchableItemAttributeSet
    CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"muisicCell"];
    attributedSet.title = @"iHTCboy - muisicCell";
    attributedSet.contentDescription = @"显示音乐信息的形式";
    attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);

    
    attributedSet.contentType = (NSString*) kUTTypeAudio;
    attributedSet.album = @"album";
    attributedSet.lyricist = @"lyricist";
    attributedSet.composer = @"composer";
    attributedSet.artist = @"artist";
    
    // 2.创建CSSearchableItem
    CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:@"muisicCell" domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
    [searchableItems addObject:item];
    
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    
}


- (void)keySearchCell{
    
    NSMutableArray<CSSearchableItem *> *searchableItems = [NSMutableArray array];
    
    for (int i = 0; i < 1000; i++) {
        
        // 1.创建CSSearchableItemAttributeSet
        CSSearchableItemAttributeSet *attributedSet = [[CSSearchableItemAttributeSet alloc]initWithItemContentType:@"keySearchCell"];
        attributedSet.title = @"iHTCboy - keySearchCell";
        attributedSet.contentDescription = [NSString stringWithFormat:@"搜索编号 %d",i];
        attributedSet.thumbnailData = UIImagePNGRepresentation([UIImage imageNamed:@"demoImage"]);
        
        // 2.创建CSSearchableItem
        CSSearchableItem *item = [[CSSearchableItem alloc]initWithUniqueIdentifier:[NSString stringWithFormat:@"keySearchCell%d",i] domainIdentifier:@"cc.iHTC.CoreSpotlightSearchDemo" attributeSet:attributedSet];
        [searchableItems addObject:item];
    }
    
    
    NSLog(@"begin Add");
    // 3.建立CSSearchableIndex
    [self addIndexSearchableItems:searchableItems];
    

}


- (void)addIndexSearchableItems:(NSArray<CSSearchableItem *> *)items{
    [[CSSearchableIndex defaultSearchableIndex] indexSearchableItems:items completionHandler:^(NSError * _Nullable error) {
        if (error != nil) {
            NSLog(@"Error：%@",error.localizedDescription);
        }else{
            NSLog(@"Add Finished Counts:%lu", (unsigned long)items.count);
        }
    }];
}

- (BOOL)isIOS9Later
{
    return ( [[[UIDevice currentDevice] systemVersion] compare:@"9.0"] != NSOrderedAscending );
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
