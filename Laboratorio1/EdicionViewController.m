//
//  EdicionViewController.m
//  Laboratorio1
//
//  Created by Marcos on 1/27/15.
//  Copyright (c) 2015 Marcos. All rights reserved.
//

#import "EdicionViewController.h"

@interface EdicionViewController ()

@end

@implementation EdicionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // Cargamos la imagen del elemento actual
    self.imgEdicion.image = [ UIImage imageNamed:imgArray[ nPos ] ];
    
    // Ponemos los daots
    self.txtNombre.text = nombreArray[nPos];
    self.txtEdad.text = edadArray[nPos];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnGuardar:(id)sender {
    
    // Asignamos los valores nuevos al array de datos correspondiente
    nombreArray[ nPos ] = self.txtNombre.text;
    edadArray[ nPos ] = self.txtEdad.text;
    
    //Una vez guardado los acmbios, regresamos a la pantalla anterior
    [self performSegueWithIdentifier:@"sequelEdicionToDetalle" sender:self];
    
    
}
@end
