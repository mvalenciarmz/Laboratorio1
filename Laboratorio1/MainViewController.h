//
//  ViewController.h
//  Laboratorio1
//
//  Created by Marcos on 1/27/15.
//  Copyright (c) 2015 Marcos. All rights reserved.
//

#import <UIKit/UIKit.h>

// Declaramos la variable/objeto que guardarà el nombre de los archivos de imàgenes a mostrar
NSMutableArray * imgArray;  // imágenes
NSMutableArray * nombreArray;  // nombres
NSMutableArray * edadArray;   // edades


// Posiciòn actual del array
int nPos;

// Cuando modifico un valor y le doy grabar, y regreso a la pantalla principal, como ahì (aqui) es donde se inicializan los arryas, vuelve a dejar todo como al principio.
// NO encontrè una función que se eejcute solamente una vez en la ejecucción de la app, así que crearé una variable para que la inicialización de los arrays se haga solamente una vez
bool bolInicializado = false;


@interface MainViewController : UIViewController


// Definimos las propiedades de los elementos que modificaremos en còdigo (èstas sòlo se crean en .h  y no generan código en .m)
@property (weak, nonatomic) IBOutlet UIImageView *imgActual;

// Definimos las acciones de los elementos de lapantalla que controlaremos con código (sí generan código también en .m)
- (IBAction)btnSiguiente_Presionar:(id)sender;

- (IBAction)btnAnterior_Presionar:(id)sender;



@end

