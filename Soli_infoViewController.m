//
//  Soli_infoViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "Soli_infoViewController.h"

@interface Soli_infoViewController ()

@end

@implementation Soli_infoViewController


-(IBAction)enviar:(id)sender
{
    NSString *enviaString = nombre.text;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:enviaString forKey:@"enviaString"];
    [defaults synchronize];
    
    NSString *enviaString1 = apellido.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:enviaString1 forKey:@"enviaString1"];
    [defaults1 synchronize];
    
    NSString *enviaString2 = telefono.text;
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:enviaString2 forKey:@"enviaString2"];
    [defaults2 synchronize];
    
       
    NSString *enviaString3 = correo.text;
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    [defaults3 setObject:enviaString3 forKey:@"enviaString3"];
    [defaults3 synchronize];
    
    NSString *enviaString4 = tratamiento.text;
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    [defaults4 setObject:enviaString4 forKey:@"enviaString4"];
    [defaults4 synchronize];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Por favor cierre la ventana Emergente y vuelva a la vista anterior para continuar con el proceso"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Gracias!", nil];
   
    [alert show];
    
}


-(IBAction)cargarInformacion:(id)sender
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *cargaString = [defaults objectForKey:@"enviaString"];
    [nombre setText:cargaString];
    
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *cargaString1 = [defaults1 objectForKey:@"enviaString1"];
    [apellido setText:cargaString1];
    
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *cargaString2 = [defaults2 objectForKey:@"enviaString2"];
    [telefono setText:cargaString2];
    
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    NSString *cargaString3 = [defaults3 objectForKey:@"enviaString3"];
    [correo setText:cargaString3];
    
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    NSString *cargaString4 = [defaults4 objectForKey:@"enviaString4"];
    [tratamiento setText:cargaString4];
    
}

- (IBAction)dismisse1:(id)sender
{
    [sender resignFirstResponder];
}
- (IBAction)dismisse2:(id)sender
{
    [sender resignFirstResponder];
}
- (IBAction)dismisse3:(id)sender
{
    [sender resignFirstResponder];
}
- (IBAction)dismisse4:(id)sender
{
    [sender resignFirstResponder];
}
- (IBAction)dismisse5:(id)sender
{
    [sender resignFirstResponder];
}





- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
