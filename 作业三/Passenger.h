#import "Person.h"

@interface Orders : NSObject
{
    NSString *destination;
    NSString *date;
    int finish;
}
- (void)init:(NSString *)destination1 :(NSString *)date1;
@end

@interface Passenger : Person
{
    int adult;
    NSMutableArray * arr1 = [NSMutableArray new];
    NSMutableArray * arr2 = [NSMutableArray new];
}
- (void)initWithPassenger:(Person *)person1;
- (void)BookTicket:(NSString *)destination1 (NSString *)date1;
- (void)CheckTicket;


// @property 属性
// 是否年满 18 岁
// 历史订单 （数组）
// 未出行订单 （数组）

// Function 方法
// 去订票

// 去检票
@end

