//
//  ViewController.h
//  SimpleQuizz
//
//  Created by Emmanuel Perez on 10/10/12.
//  Copyright (c) 2012 3IE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionAndAnswer.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *labelAnswer;
    IBOutlet UILabel *labelQuestion;
    
    int curQuestionIndex;
    QuestionAndAnswer	*curRandomQuestion;
    
    NSMutableArray *questionAndAnswers;

}

- (IBAction)showQuestionClick:(id)sender;
- (IBAction)showAnswerClick:(id)sender;

@end
