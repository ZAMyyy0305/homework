#import <Foundation/Foundation.h>

@interface Student:NSObject
{
    NSString *name;
    NSString *major;
    int age;
}
- (void)study:(double)time;
- (void)output;
@end

@implementation Student
- (void)study:(double)time
{
    NSLog(@"��ѧ��ѧϰ��%lfСʱ",time);
}
- (void)output
{
    NSLog(@"name:%@",name);
    NSLog(@"major:%@",major);
    NSLog(@"age:%d",age);
}
@end


int main(int argc, const char *argv[])
{
    double t=13.25;
    Student *s1=[Student new];
    s1->name=@"jack";
    s1->major=@"�����";
    s1->age=19;
    [s1 output];
    [s1 study:t];
    return 0;
}
