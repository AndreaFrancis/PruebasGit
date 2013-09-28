//
//  main.m
//  Collection
//
//  Created by Tekhne Dev on 9/28/13.
//  Copyright (c) 2013 xiobit. All rights reserved.
//

#import <Foundation/Foundation.h>

void arraysInObjetiveC(){
    NSArray *departamentos = [[NSArray alloc] initWithObjects:@"LA PAZ",@"SUCRE", nil];
    NSLog(@"DEPARTAMENTO %@",[departamentos objectAtIndex:1]);
    
}

void arrayInObjectiveCSecondFor(){
    
    NSArray *colors = [NSArray arrayWithObjects:@"Azul",@"Verde",@"34",[NSDate date],[NSNumber numberWithInt:23], nil];
    NSLog(@"Fecha : %@",[colors objectAtIndex:3]);
}

void arrayWithObjectiveCThirdForm(){
    
    NSArray *teams = @[@"Bayer",@"Madrid",@"Barcelona",[NSDate date]];
    NSLog(@"EL ultimo equipo es : %@" ,[teams objectAtIndex:2]);
}
void arraysInC(void)
{
    int numbers[5] ;
    
    numbers[0] = 1;
    
    numbers[1] = 2;
    
    numbers[2] = 3;
    
    numbers[3] = 4;
    
    numbers[4] = 5;
    
    NSString *primerosLugares[] = {@"Andrea",@"Camilo",@"Oscar",@"Romina"};
    
    NSLog(@"El ultimo elmento es : %i",numbers[4]);
    NSLog(@"El primer numero es : %@",primerosLugares[0]);
}

void mutableArrays(){
    
    NSMutableArray *empleados = [NSMutableArray arrayWithObjects:@"Emanuel",@"Pamela",@"Alberto",@"Carola",nil];
    NSLog(@"El ultimo empleado es : %@",[empleados objectAtIndex:[empleados count]-1]);
    //Ahora modificaremos :
    [empleados addObject:@"Yammal"];
    NSLog(@"El ultimo empleado es : %@",[empleados objectAtIndex:[empleados count]-1]);
    //Ahora eliminamos un opbjeto en algun indice :
    [empleados removeObjectAtIndex:2];
    NSLog(@"El ultimo empleado es : %@",[empleados objectAtIndex:2]);
}

void dictionary (){
    NSDictionary *spanishToEnglish = [NSDictionary dictionaryWithObjectsAndKeys:@"Cama",@"Bed",
                                                                                @"Casa",@"House",
                                                                                @"Aqui","Here",nil];
    NSLog(@"La palabra Bed en español significa : %@",[spanishToEnglish objectForKey:@"Bed"]);
    NSLog(@"El tamaño de mi diccionario es : %lu",[spanishToEnglish count]);
    //Alterando el diccionario
    
}

void mutableDictionary(){
    NSMutableDictionary *spanishToEnglish = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Cama",@"Bed",
                                      @"Casa",@"House",
                                      @"Aqui","Here",nil];
    NSLog(@"La palabra Bed en español significa : %@",[spanishToEnglish objectForKey:@"Bed"]);
    NSLog(@"El tamaño de mi diccionario es : %lu",[spanishToEnglish count]);
    //Alterando el diccionario
    [spanishToEnglish setObject:@"Cucaracha" forKey:@"House"];
    NSLog(@"La palabra Bed en español significa : %@",[spanishToEnglish objectForKey:@"House"]);
    NSLog(@"El tamaño de mi diccionario es : %lu",[spanishToEnglish count]);
    //Ahora eliminaremos un elemento :
   // [spanishToEnglish removeObjectForKey:@"House"];
}

void iterandoArrays(){
    
    NSMutableDictionary *traductor = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Bad",@"Malo",
                                                                                        @"Arte",@"Art",
                                                                                        @"Good",@"Bueno",nil];
    for(NSString *key in traductor){
        NSLog(@"La palabra en español : %@ trducido al ingles es  : %@",key,[traductor objectForKey:key]);
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        arraysInC();
        arraysInObjetiveC();
        arrayInObjectiveCSecondFor();
        arrayWithObjectiveCThirdForm();
        mutableArrays();
        //dictionary();
        //mutableDictionary();
        NSLog(@"=========================");
        iterandoArrays();
    }
    return 0;
}


