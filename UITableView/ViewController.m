//
//  ViewController.m
//  UITableView
//
//  Created by 刘烊 on 16/2/26.
//  Copyright © 2016年 liuyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property(weak,nonatomic)IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1.设置数据源
    self.tableView.dataSource=self;

}

//多少种数据
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

//每一行返回多少数据
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==0){
        return 3;
    }else if(section==1){
        return 2;
    }else{
        return 3;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   // UITableViewCell:每一行的格子
    //indexPath:唯一一行
    //indexPath.row:唯一的一行
    //indexPath.section:获取组号
   
    
    //创建一个cell
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle: UITableViewCellStyleValue1 reuseIdentifier:nil];
    
    //设置数据
    //cell.textLabel.text=@"刘阳";
    if (indexPath.section==0){
        if (indexPath.row==0){
        cell.textLabel.text=@"奥迪";
        }else if(indexPath.row==1){
        cell.textLabel.text=@"奔驰";
        }else{
        cell.textLabel.text=@"宝马";
        }
        
    }else if(indexPath.section==1){
        if (indexPath.row==0){
            cell.textLabel.text=@"保时捷";
        }else{
            cell.textLabel.text=@"法拉利";
        }
        
    }else{
        if (indexPath.row==0){
            cell.textLabel.text=@"丰田";
        }else if (indexPath.row==1){
            cell.textLabel.text=@"本田";
        }else{
            cell.textLabel.text=@"拖拉机";
        }
    }
    //返回cell
    return cell;
}

////前面的
//-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    if (section==0){
//        return @"中国的才是最好的";
//    }else if(section==1){
//        return @"美国还好";
//    }else
//    {
//        return @"日本最差的";
//    }
//}
//
////后面的
//-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//    if (section==0){
//        return @"中国的才是最好的";
//    }else if(section==1){
//        return @"美国还好";
//    }else
//    {
//        return @"日本最差的";
//    }
//}
//
//返回每一组的索引标题
-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return @[@"A",@"B",@"C",@"A",@"B",@"C"];
//    //如果使用KVC的时候，左边的对如果是个数组，会遍历数组中每一个元素，获取每一个元素对应的属性的Value值，把这些value值放在一个数组中。
//    //return [self.tableView valueForKeyPath:@"title"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
