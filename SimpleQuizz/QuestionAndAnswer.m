//
//  QuestionAndAnswer.m
//  SimpleQuizz
//
//  Created by Emmanuel Perez on 10/10/12.
//  Copyright (c) 2012 3IE. All rights reserved.
//

#import "QuestionAndAnswer.h"

@implementation QuestionAndAnswer

#pragma mark - Init
- (id)initWithQuestion:(NSString *)myQuestion andAnswer:(NSString *)myAnswer
{
    self = [super init];
	[self setAnswer:myAnswer];
	[self setQuestion:myQuestion];
    return self;
}


#pragma mark - Accessors
-(NSString *)question
{
	return question;
}

-(void)setQuestion:(NSString *)newQuestion
{
	question = nil;
	question = newQuestion;
}

-(NSString *)answer
{
	return answer;
}

-(void)setAnswer:(NSString *)newAnswer
{
	answer = newAnswer;
}

#pragma mark Custom
+(QuestionAndAnswer *) gimmeNewTuple
{
	int randomValue = arc4random() % 100;
	NSString *randomQuestion = [NSString stringWithFormat:@"awesome question %d", randomValue];
	NSString *randomAnswer = [NSString stringWithFormat:@"answer %d !", randomValue];
	
	return [[QuestionAndAnswer alloc] initWithQuestion:randomQuestion andAnswer:randomAnswer];
}


@end
