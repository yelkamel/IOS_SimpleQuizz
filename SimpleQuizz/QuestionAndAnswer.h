//
//  QuestionAndAnswer.h
//  SimpleQuizz
//
//  Created by Emmanuel Perez on 10/10/12.
//  Copyright (c) 2012 3IE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionAndAnswer : NSObject
{
    NSString* question;
    NSString* answer;
}

- (id)initWithQuestion:(NSString *)myQuestion andAnswer:(NSString *)myAnswer;

- (NSString *)question;
- (void)setQuestion:(NSString *)newQuestion;
- (NSString *)answer;
- (void)setAnswer:(NSString *)newAnswer;

+(QuestionAndAnswer *) gimmeNewTuple;

@end
