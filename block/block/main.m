//
//  main.m
//  block
//
//  Created by leon pro on 14-3-3.
//  Copyright (c) 2014年 leon pro. All rights reserved.
//

#import <Foundation/Foundation.h>
void test()
{
    NSLog(@"------------");
}
int sum(int a,int b)
{
    return a+b;
}
typedef int (^myBlock)(int,int);
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int(*p)(int,int)=sum;
        int c=p(5,6);
        NSLog(@"p sum is %d",c);
        // insert code here...
       NSLog(@"Hello, World!");
        int (^sumblock)(int,int)=^(int a ,int b){
            return a+b;
        };
        NSLog(@"block count is %d",sumblock(10,20));
    }
    return 0;
}
void test1()
{
    void (^myblock)()= ^{
        NSLog(@"----------");
        NSLog(@"-----------");
    };
    myblock();
    myblock();
}

