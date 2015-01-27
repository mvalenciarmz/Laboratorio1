//
//  DetalleViewController.h
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

// Para la transparencia
double nTransparencia = 1;

@interface DetalleViewController : UIViewController

// Objetos cuyas propiedades modificaremos vía código
@property (weak, nonatomic) IBOutlet UIImageView *imgDetalle;

@property (weak, nonatomic) IBOutlet UILabel *lblNombre;
@property (weak, nonatomic) IBOutlet UILabel *lblEdad;



// Objetos cuyas acciones controlaremos vía código
- (IBAction)bntMenosTransparencia:(id)sender;
- (IBAction)btnMasTransparencia:(id)sender;


@end
