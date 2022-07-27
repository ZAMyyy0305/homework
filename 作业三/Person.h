#import <Foundation/Foundation.h>

@interface Address : NSObject
{
    NSString *country;
    NSString *province;
    NSString *city;
    NSString *detail;
}
- (void)inintWithCountry:(NSString *)country1 province:(NSString *)province1 city:(NSString *)city1 detail:(NSString *)detail1;
- (void)output;
@end

@interface Person : NSObject
{
    @public
    NSString *name;
    NSNumber *idNumber;
    Person *mother;
    Person *father;
    NSDate *birthday;
    Address *address;
    NSDate *registerDate;
    double age;
}


- (void)initWithName:(NSString *)name address:(Address *)address birthday:(NSDate *)birthday;
- (void)initWithAge;
- (void)bindMother:(Person *)mother;
- (void)bindFather:(Person *)father;

@end

