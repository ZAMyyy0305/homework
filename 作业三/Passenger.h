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


// @property ����
// �Ƿ����� 18 ��
// ��ʷ���� �����飩
// δ���ж��� �����飩

// Function ����
// ȥ��Ʊ

// ȥ��Ʊ
@end

