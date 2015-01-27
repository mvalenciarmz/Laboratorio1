//
//  DetalleViewController.m
//  Laboratorio1
//
//  Created by Marcos on 1/27/15.
//  Copyright (c) 2015 Marcos. All rights reserved.
//

#import "DetalleViewController.h"

@interface DetalleViewController ()

@end

@implementation DetalleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    // Cargamos la imagen del elemento actual
    self.imgDetalle.image = [ UIImage imageNamed:imgArray[ nPos ] ];
    
    // Ponemos los daots
    self.lblNombre.text = nombreArray[nPos];
    self.lblEdad.text = edadArray[nPos];
    
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

- (IBAction)bntMenosTransparencia:(id)sender {
    // Disminuimos en 20% caad vez la transparencia de la imagen
    nTransparencia = ( nTransparencia <= 0 ? 0 : nTransparencia - .20 );
    self.imgDetalle.alpha = nTransparencia;
}

- (IBAction)btnMasTransparencia:(id)sender {
    // Aumentamos en 20% caad vez la transparencia de la imagen
    nTransparencia = ( nTransparencia >= 1 ? 1 : nTransparencia + .20 );
    self.imgDetalle.alpha = nTransparencia;
}
@end
