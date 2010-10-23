//
//  Calculator.m
//  gmp-calc
//
//  Created by Feldmaus on 18.09.10.
//  Copyright 2010 ischlecken.com. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

/**
 *
 */
-(id) init
{
  /*
  mpz_init(operandA);
  mpz_init(operandB);
  mpz_init(operandC);
  */
  
  return self;
}

/**
 *
 */
-(void) dealloc
{
  /*
  mpz_clear(operandA);
  mpz_clear(operandB);
  mpz_clear(operandC);
  */
  
  [super dealloc];
}

/**
 *
 */
-(void) setOperandA:(NSString*) opA
{
  //mpz_set_str(operandA,[opA UTF8String],10);

  if( operandA!=opA ) 
  { [operandA release];
    
    operandA = [opA copy];
  } // of if
}

/**
 *
 */
-(NSString*) operandA
{ 
/*
  char*     strOperandA = mpz_get_str (NULL,10,operandA);
  NSString* result      = [[NSString alloc] initWithUTF8String:strOperandA];
  
  free(strOperandA);
  
  return [result autorelease];
*/
  
  return operandA;
}

/**
 *
 */
-(void) setOperandB:(NSString*) opB
{
  //mpz_set_str(operandB,[opB UTF8String],10);
  
  if( operandB!=opB ) 
  { [operandB release];
    
    operandB = [opB copy];
  } // of if
}

/**
 *
 */
-(NSString*) operandB
{ 
/*  
  char*     strOperandB = mpz_get_str (NULL,10,operandB);
  NSString* result      = [[NSString alloc] initWithUTF8String:strOperandB];
  
  free(strOperandB);
  
  return [result autorelease];
*/
  
  return operandB;
}

/**
 *
 */
-(NSString*) operandC
{ 
/*  
  char*     strOperandC = mpz_get_str (NULL,10,operandC);
  NSString* result      = [[NSString alloc] initWithUTF8String:strOperandC];
  
  free(strOperandC);
  
  return [result autorelease];
*/
  
  return operandC;
}

-(void) add
{ //mpz_add(operandC,operandA,operandB);
  
  operandC = [[NSString alloc] initWithFormat:@"%d",[operandA intValue] + [operandB intValue]];
  
  NSLog(@"Calculator::add %@",operandC);
}

-(void) sub
{ //mpz_sub(operandC,operandA,operandB);
  
  operandC = [[NSString alloc] initWithFormat:@"%d",[operandA intValue] - [operandB intValue]];
  
  NSLog(@"Calculator::sub %@",operandC);

}

-(void) times
{ NSLog(@"Calculator::times");
  
  //mpz_mul(operandC,operandA,operandB);
  
  operandC = [[NSString alloc] initWithFormat:@"%d",[operandA intValue] * [operandB intValue]];
}

-(void) divide
{ NSLog(@"Calculator::divide");
  
  //mpz_div(operandC,operandA,operandB);
  
  operandC = [[NSString alloc] initWithFormat:@"%d",[operandA intValue] / [operandB intValue]];
}

-(void) power
{ NSLog(@"Calculator::power");
  
  //mpz_pow_ui(operandC,operandA,mpz_get_ui(operandB));
}
@end
//===================================END-OF-FILE==============================