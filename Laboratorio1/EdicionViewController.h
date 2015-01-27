//
//  EdicionViewController.h
//  Laboratorio1
//
//  Created by Marcos on 1/27/15.
//  Copyright (c) 2015 Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declaramos la variable/objeto que guardarà el nombre de los archivos de imàgenes a mostrar
NSMutableArray * imgArray;
NSMutableArray * nombreArray;  // nombres
NSMutableArray * edadArray;   // edades

// Posiciòn actual del array
int nPos;

@interface EdicionViewController : UIViewController


// Pra modificar attributos mediante còdigdo
@property (weak, nonatomic) IBOutlet UIImageView *imgEdicion;
@property (weak, nonatomic) IBOutlet UITextField *txtNombre;
@property (weak, nonatomic) IBOutlet UITextField *txtEdad;


// Para controlar acciones
- (IBAction)btnGuardar:(id)sender;

@end
