
//
//  JiSuanQiViewController.m
//  JiSuanQi
//
//  Created by MS on 15-2-26.
//  Copyright (c) 2015年 MS. All rights reserved.
//

#import "JiSuanQiViewController.h"

@interface JiSuanQiViewController ()
{
   
    UILabel * _lable ;
    UILabel *_lable1;
    float num1;
    float num2;
    float sum;
    NSString *string;
    NSString *str2;
    
    UILabel *_label2;

}

@end

@implementation JiSuanQiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor yellowColor];
    
    _lable = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 300, 30)];
    
    _lable.backgroundColor= [UIColor whiteColor];
    
    _lable.font = [UIFont boldSystemFontOfSize:30];

    _lable.text =@"";
    
    _lable.textAlignment = NSTextAlignmentRight;
    
    
    _lable1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 60, 300, 30)];
    
    _lable1.backgroundColor= [UIColor whiteColor];
    
    _lable1.font = [UIFont boldSystemFontOfSize:30];
    
    _lable1.text =@"";
    
    _lable1.textAlignment = NSTextAlignmentRight;

    _label2 =[[UILabel alloc]init];
    
    
    _label2.text = @"";

    [self.view addSubview:_lable];
    [self.view addSubview:_lable1];
    
    [self bgView];
    [self btn];
    


}

-(void)dealloc{
   
    [_lable release];
    [_lable1 release];
    [_label2 release];
    [super dealloc];

}
-(void)bgView{

   
    
    for(int i= 0;i<5;i++)
        for(int j=0;j<4;j++){
            
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10+j*80, 160+i*60, 60, 40)];
            
            view.backgroundColor = [UIColor whiteColor];
            
            [self.view addSubview:view];
            [view release];
        }
    


}

-(void)btn{

    NSArray *array = @[@"m+",@"m-",@"mc",@"mr",@"7",@"8",@"9",@"/",@"4",@"5",@"6",@"*",
                       @"1",@"2",@"3",@"-",@"0",@".",@"=",@"+"];
    
    for(int i= 0;i<5;i++)
    {
        for(int j=0;j<4;j++){
            
            UIButton  *btn = [UIButton buttonWithType:UIButtonTypeSystem];
            
            btn.frame=CGRectMake(10+j*80, 160+i*60, 60, 40);
            btn.backgroundColor = [UIColor whiteColor];
            [btn setTitle:[array objectAtIndex:4*i+j] forState:UIControlStateNormal];
            
            btn.titleLabel.font = [UIFont boldSystemFontOfSize:30];
            
            btn.tag = i*4+j+1;
            
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:btn];
            
        }
     }

    
    


}

-(void)btnClick:(UIButton *)sender{
   
    NSArray *array = @[@"m+",@"m-",@"mc",@"mr",@"7",@"8",@"9",@"/",@"4",@"5",@"6",@"*",
                       @"1",@"2",@"3",@"-",@"0",@".",@"=",@"+"];
    

    if(sender.tag>4)
    {
       
        if(sender.tag==20){
            _label2.text = @"";
            
            if(num2==0){
               num2=[_lable1.text floatValue];
            }
            else{
                
                if(string==[array objectAtIndex:19])
                {
                    num2=num2+num1;
                }
                
               else  if(string==[array objectAtIndex:15])
                {
                    num2=num2-num1;
                }
                
                
                else if(string==[array objectAtIndex:11])
                {
                    num2=num2*num1;
                    
                }
                
               else if(string==[array objectAtIndex:7])
                {
                    num2 =num2/num1;
                    
                }
               else {
               
                   num2=num2+num1;
               }
                
            }
            
            string=[array objectAtIndex:sender.tag-1];
        }
        
        if(sender.tag==16){
             _label2.text = @"";
            if(num2==0){
             num1=[_lable1.text floatValue];
              num2 = num1;
            }
            else{
                if(string==[array objectAtIndex:19])
                {
                    num2=num2+num1;
                }
                
                else  if(string==[array objectAtIndex:15])
                {
                    num2=num2-num1;
                    
                    
                }
                
                
                else if(string==[array objectAtIndex:11])
                {
                    num2=num2*num1;
                    
                }
                
                else if(string==[array objectAtIndex:7])
                {
                    num2 =num2/num1;
                    
                }
                else {
                    
                    num2=num2-num1;
                }

            }
            string=[array objectAtIndex:sender.tag-1];
            
        }
        
        if(sender.tag==12){
             _label2.text = @"";
            if(num2==0)
            {
                num2=[_lable1.text floatValue];
            }
            else {
                if(string==[array objectAtIndex:19])
                {
                    num2=num2+num1;
                }
                
                else  if(string==[array objectAtIndex:15])
                {
                    num2=num2-num1;
                    
                    
                }
                
                
                else if(string==[array objectAtIndex:11])
                {
                    num2=num2*num1;
                    
                }
                
                else if(string==[array objectAtIndex:7])
                {
                    num2 =num2/num1;
                    
                }
                else {
                    
                    num2=num2*num1;
                }

            }
            
            NSLog(@"%f",num2);
            string=[array objectAtIndex:sender.tag-1];
            
        }
        
        if(sender.tag==8){
             _label2.text = @"";
          
            if(num2==0)
            {
                num2=[_lable1.text floatValue];
                
            }
            else{
                if(string==[array objectAtIndex:19])
                {
                    num2=num2+num1;
                }
                
                else  if(string==[array objectAtIndex:15])
                {
                    num2=num2-num1;
                    
                    
                }
                
                
                else if(string==[array objectAtIndex:11])
                {
                    num2=num2*num1;
                    
                }
                
                else if(string==[array objectAtIndex:7])
                {
                    num2 =num2/num1;
                    
                }
                else {
                    
                    num2=num2/num1;
                }

            }
            NSLog(@"%f",num2);
            string=[array objectAtIndex:sender.tag-1];
            
        }

        
        if(sender.tag!=19)
        {
          _lable1.text = [_lable1.text stringByAppendingString:[array objectAtIndex:sender.tag-1]];
        }
        
 if(string)
 {
 if(sender.tag!=19)
        {
            if(sender.tag!=20){
                if(sender.tag!=16){
                
                    if(sender.tag!=12){
                        if(sender.tag!=8){
                           
                            _label2.text = [_label2.text stringByAppendingString:array[sender.tag-1]];
                             num1=[_label2.text floatValue];
                         
                            //  num1=[[array objectAtIndex:sender.tag-1]floatValue];
                          //  NSLog(@"%@",array);
                           // NSLog(@"%@",_label2.text);
                           
                          //  NSLog(@"%f",num1);
                        }
                     
                    }
                }
            
            }
        
        }
 }
        
       if(sender.tag==19){
            
            
            if(string==[array objectAtIndex:19])
            {
                sum=num1+num2;
                _lable.text=[NSString stringWithFormat:@"%.2f",sum];
                
                
            }
            
            if(string==[array objectAtIndex:15])
            {
                sum=num2-num1;
                _lable.text=[NSString stringWithFormat:@"%.2f",sum];
                
            }
            
       
           if(string==[array objectAtIndex:11])
           {
               sum=num2*num1;
               _lable.text=[NSString stringWithFormat:@"%.2f",sum];
               
           }

           if(string==[array objectAtIndex:7])
           {
               sum =num2/num1;
               
               _lable.text=[NSString stringWithFormat:@"%.2f",sum];
               
           }

           
           _lable.text =[NSString stringWithFormat:@"%@%.2f",@"=",sum];
           
       
       }
     

        
        
    
    }
    
  
    
    if(sender.tag==3){
   
        _lable.text =@"";
        _lable1.text =@"";
        num2=0;
        num1=0;
       string=@"";
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
