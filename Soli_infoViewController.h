//
//  Soli_infoViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Soli_infoViewController : UIViewController

{
    IBOutlet UITextField *nombre;
    IBOutlet UITextField *apellido;
    IBOutlet UITextField *telefono;
    IBOutlet UITextField *correo;
    IBOutlet UITextField *tratamiento;
        
}

-(IBAction)enviar:(id)sender;
-(IBAction)cargarInformacion:(id)sender;

-(IBAction)dismisse1:(id)sender;
-(IBAction)dismisse2:(id)sender;
-(IBAction)dismisse3:(id)sender;
-(IBAction)dismisse4:(id)sender;
-(IBAction)dismisse5:(id)sender;


@end
