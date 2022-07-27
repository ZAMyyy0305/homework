#import <Foundation/Foundation.h>
#import "Person.h"
#import "Passenger.h"

@implementation Address
- (void)initWithCountry:(NSString *)country1 province:(NSString *)province1 city:(NSString *)city1 detail:(NSString *)detail1
{
    country = country1;
    province = province1;
    city = city1;
    detail = detail1;
}
- (void)output
{
    NSLog(@"%@%@%@%@",country,province,city,detail);
}

@end


@implementation Person

- (void)initWithName:(NSString *)name1 address:(Address *)address1 birthday:(NSDate *)birthday1{
    name = name1;
    address = address1;
    birthday = birthday1;
    registerDate = [NSDate date];
    idNumber=@"13236522";
}

- (void)initWithAge
{
    NSTimeInterval interval1 = [birthday timeIntervalSinceNow];//获取某一时间与当前时间的间隔
    age=fabs(interval1/31535992);
    //NSLog(@"年龄为%lf",age);
}

- (void)bindMother:(Person *)mother1 {

    mother = mother1;
}

- (void)bindFather:(Person *)father1 {

    father = father1;
}

- (void)output
{
    NSLog(@"name:%@",name);
    NSLog(@"idnumber:%@",idNumber);
    NSLog(@"birthday:%@",birthday);
    NSLog(@"registerDate:%@",registerDate);
    NSLog(@"age:%lf",age);
    NSLog(@"idNumber:%@",idNumber);
    [address output];
}

@end


@implementation Orders
- (void)init:(NSString *)destination1 :(NSString *)date1
{
    destination=destination1;
    date=date1;
    finish=0;
}

@end


@implementation Passenger
- (void)initWithPassenger:(Person *)person1
{
    name=person1->name;
    idNumber=person1->idNumber;
    mother=person1->mother;
    father=person1->father;
    birthday=person1->birthday;
    address=person1->address;
    registerDate=person1->registerDate;
    age=person1->age;
    if(age>=18)
        adult=1;
    else
        adult=0;
}

- (void)BookTicket:(Orders *)o1
{
    [arr1 addObject:o1];
    [arr2 addObject:o1];
}

- (void)CheckTicket:(Orders *)o2
{
    int i;
    int num=sizeof(arr2)/sizeof(o2);
    for(i=0;i<num;i++)
    {
        if(arr2[i]->destination==o2->destination)
        {
            arr2[i]->finish=1;
            [arr2 removeObjectAtIndex:i];
            break;
        }
    }
}

@end





int main (int argc, const char *argv[])
{
    Address *a1=[Address new];
    Person *p1=[Person new];
    Orders *o1=[Orders new];
    Orders *o2=[Orders new];
    Passenger *p=[Passenger new];
    NSDate *date1=[NSDate distantPast];
    //NSLog(@"%@",date1);
    [a1 initWithCountry:@"中国" province:@"辽宁省" city:@"大连市" detail:@"金州区"];
    [p1 initWithName:@"jack" address:a1 birthday:date1];
    [o1 init:@"长城" :@"2021年3月5日"];
    [o2 init:@"迪士尼" :@"2022年9月11日"];
    [p1 initWithAge];
    [p initWithPassenger:p1];
    [p BookTicket:o1];
    [p BookTicket:o2];
    [p CheckTicket:o1];
    //[p2 output];

    return 0;
}
