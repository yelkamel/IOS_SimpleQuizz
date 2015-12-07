//
//  ViewController.m
//  SimpleQuizz
//
//  Created by Emmanuel Perez on 10/10/12.
//  Copyright (c) 2012 3IE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    questionAndAnswers = [[NSMutableArray alloc] init];
    
	QuestionAndAnswer *newTuple = [[QuestionAndAnswer alloc] initWithQuestion:@"What is 7 + 7?" andAnswer:@"14"];
	[questionAndAnswers addObject:newTuple];
	newTuple = nil;
    
	newTuple = [[QuestionAndAnswer alloc] initWithQuestion:@"What is the capital of France?" andAnswer:@"Paris"];
	[questionAndAnswers addObject:newTuple];
	newTuple = nil;
    
	newTuple = [[QuestionAndAnswer alloc] initWithQuestion:@"From what is cognac made?" andAnswer:@"Grapes"];
	[questionAndAnswers addObject:newTuple];
	newTuple = nil;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showQuestion:(QuestionAndAnswer *)tuple
{
	// Log the string to the console
	NSLog(@"displaying question: %@", [tuple question]);
	
	// Display the string in the question field
	[labelQuestion setText:[tuple question]];
	
	// Clear the answer field
	[labelAnswer setText:@"???"];
    
}

#pragma mark - Actions

- (IBAction)showQuestionClick:(id)sender
{
	curRandomQuestion = nil;
	
	// Step to the next question
	curQuestionIndex ++;
	
	// Am I past the last question?
	if (curQuestionIndex == [questionAndAnswers count])
    {
		// Go back to the first question
		curQuestionIndex = 0;
	}
	
	// Get the string at that index in the questions array
	QuestionAndAnswer *newTuple = [questionAndAnswers objectAtIndex: curQuestionIndex];
	[self showQuestion:newTuple];

}

- (IBAction)showAnswerClick:(id)sender;
{
	QuestionAndAnswer *newTuple;
	
	// What is the answer to the current question?
    newTuple = [questionAndAnswers objectAtIndex:curQuestionIndex];
	
	// Display it in the answer field
	[labelAnswer setText:[newTuple answer]];
}

@end
