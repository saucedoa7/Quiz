//
//  QuizViewController.m
//  Quiz
//
//  Created by Albert Saucedo on 9/15/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    // call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        //create two arrays with Q's & A's
        //Make the pointer point to them

        self.questions = @[@"From what is wine made?",
                           @"What is 7+7",
                           @"What is the capitol of Vermont"];

        self.answers = @[@"Grapes",
                         @"14",
                         @"Monteplier"];
    }
    // return the address of the new object
    return self;
}

-(IBAction)showQuestion:(id)sender{

    //Step to the next Question
    self.currentQuestionIndex++;
    //Am I past the last Question?
    if (self.currentQuestionIndex == [self.questions count]) {
        //Go back to the first question
        self.currentQuestionIndex = 0;
    }

    //Get the string of that index in the questions array
    NSString *questionString = self.questions [self.currentQuestionIndex];
    NSLog(@"%@", questionString);

    //Display the string into the questions label
    self.questionLabel.text = questionString;

    //Reset the answer label
    self.answerLabel.text = @"???";

}

-(IBAction)showAnswer:(id)sender{

    // What is the anser to the current question
    NSString *answerString = self.answers [self.currentQuestionIndex];
    NSLog(@"%@", answerString);

    //Display it on the answer label
    self.answerLabel.text = answerString;
    
}

@end
