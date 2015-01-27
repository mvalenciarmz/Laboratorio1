//
//  ViewController.m
//  Laboratorio1
//
//  Created by Marcos on 1/27/15.
//  Copyright (c) 2015 Marcos. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Inicializamos las variables
    //nPos = 0;   // Empezaremos la pantalla mostrando la primera imagen
    // Esto se està ejecutando cada que se muestra la pantalla, por lo que al regresar desde otra pantalla inicializa nuevamente los valores... PENDIENTE: buscar si hay una funcion que se ejecute sólo la primera vez
    
    
if ( bolInicializado == false ) {
    // Archivos de imàgenes
    imgArray = [ [NSMutableArray alloc] initWithObjects:
                @"Simpsons.png",
                @"Homero.png",
                @"Marge.png",
                @"Bart.png",
                @"Lisa.png",
                @"Maggie.png",
                nil
                ];

    // Nombres
    nombreArray = [ [NSMutableArray alloc] initWithObjects:
                @"Los Simpsons",
                @"Homero Simpson",
                @"Marge Bouvier",
                @"Bart Simpson",
                @"Lisa Simpson",
                @"Maggie Simpson",
                nil
                ];

    // Edades
    edadArray = [ [NSMutableArray alloc] initWithObjects:
                @"1ra. aparición: 1987",
                @"36 años",
                @"35 años",
                @"10 años",
                @"8 años",
                @"1 año",
                nil
                ];
    
    bolInicializado = true;
    
}
    
     // Cargamos en la imagen el primer elemento (simpsons.png)
    self.imgActual.image = [ UIImage imageNamed:imgArray[ nPos ] ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// --------------------------------------------------------------------------------
// Control de lo que debe hacerse al presioanr los botones
// --------------------------------------------------------------------------------
- (IBAction)btnSiguiente_Presionar:(id)sender {

    // Aumentamos el valor del puntero
    nPos = ( nPos == 5 ? 0 : ++nPos );
    
    // Refrescamos la imagen
    self.imgActual.image = [ UIImage imageNamed:imgArray[ nPos ] ];
    
}

- (IBAction)btnAnterior_Presionar:(id)sender {
    
    // Disminuimos el valor del puntero
    nPos = ( nPos == 0 ? 5 : --nPos );
    
    // Refrescamos la imagen
    self.imgActual.image = [ UIImage imageNamed:imgArray[ nPos ] ];
    
}


@end
