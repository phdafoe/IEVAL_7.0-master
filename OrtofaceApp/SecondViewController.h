//
//  SecondViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>





@class KBScrollView;

@interface SecondViewController : UIViewController   <UITextFieldDelegate, MFMailComposeViewControllerDelegate>

{
    // Evaluacion finalizacion de tratamiento

    
    IBOutlet UITextView *EstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica;
    IBOutlet UITextView *SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico;
    IBOutlet UITextView *CosasQueTeGustaronDeLaConsulta1;
    IBOutlet UITextView *CosasQueTeGustaronDeLaConsulta2;
    IBOutlet UITextView *CosasQueTeGustaronDeLaConsulta3;
    
    IBOutlet UITextView *AreasQueDebenSerMejoradas1;
    IBOutlet UITextView *AreasQueDebenSerMejoradas2;
    IBOutlet UITextView *AreasQueDebenSerMejoradas3;
    
    IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosMuyInsatisfecho;
    IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosInsatisfecho;
    IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosTerminoMedio;
    IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosSatisfecho;
    IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosMuySatisfecho;
    
    IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho;
    IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho;
    IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio;
    IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho;
    IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho;
    
    IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho;
    IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaInsatisfecho;
    IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaTerminoMedio;
    IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaSatisfecho;
    IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho;
    
    IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho;
    IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho;
    IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio;
    IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho;
    IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho;
    
    IBOutlet UITextField *RecomendariasOrtofaceUnAmigoConocidoNo;
    IBOutlet UITextField *RecomendariasOrtofaceUnAmigoConocidoSi;

    
    // Evaluacion finalizacion de tratamiento

    UIImageView *backgroundImageView;
    UIImageView *overlayImageView;
    BOOL scaning;

}



@property (nonatomic, retain) UIImage *screenshotImage;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, retain) IBOutlet UIImageView *overlayImageView;
@property (nonatomic, retain) IBOutlet UIView *screenPictureView;
@property (nonatomic, retain) IBOutlet UILabel *screenPictureLabel;
@property (nonatomic, retain) IBOutlet UIImageView * screenPictureImageView;

@property (nonatomic, retain) IBOutlet KBScrollView *scrollView;



@property (nonatomic, retain) IBOutlet UITextView *EstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica;
@property (nonatomic, retain) IBOutlet UITextView *SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico;
@property (nonatomic, retain) IBOutlet UITextView *CosasQueTeGustaronDeLaConsulta1;
@property (nonatomic, retain) IBOutlet UITextView *CosasQueTeGustaronDeLaConsulta2;
@property (nonatomic, retain) IBOutlet UITextView *CosasQueTeGustaronDeLaConsulta3;

@property (nonatomic, retain) IBOutlet UITextView *AreasQueDebenSerMejoradas1;
@property (nonatomic, retain) IBOutlet UITextView *AreasQueDebenSerMejoradas2;
@property (nonatomic, retain) IBOutlet UITextView *AreasQueDebenSerMejoradas3;

@property (nonatomic, retain) IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosMuyInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosTerminoMedio;
@property (nonatomic, retain) IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosSatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLasInstalacionesDondeTrabajamosMuySatisfecho;

@property (nonatomic, retain) IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio;
@property (nonatomic, retain) IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho;

@property (nonatomic, retain) IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaTerminoMedio;
@property (nonatomic, retain) IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaSatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho;

@property (nonatomic, retain) IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio;
@property (nonatomic, retain) IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho;
@property (nonatomic, retain) IBOutlet UITextField *SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho;

@property (nonatomic, retain) IBOutlet UITextField *RecomendariasOrtofaceUnAmigoConocidoNo;
@property (nonatomic, retain) IBOutlet UITextField *RecomendariasOrtofaceUnAmigoConocidoSi;

// acciones de salvado y recarga de datos del Evaluacion finalizacion de tratamiento


-(IBAction)enviar:(id)sender;
-(IBAction)cargarInformacion:(id)sender;


-(IBAction)getUIKitScreeshot;




// Evaluacion finalizacion de tratamiento


-(IBAction)dismisseConLasInstalacionesDondeTrabajamosMuyInsatisfecho:(id)sender;
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosInsatisfecho:(id)sender;
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosTerminoMedio:(id)sender;
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosSatisfecho:(id)sender;
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosMuySatisfecho:(id)sender;

-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho:(id)sender;
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho:(id)sender;
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio:(id)sender;
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho:(id)sender;
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho:(id)sender;

-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho:(id)sender;
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaInsatisfecho:(id)sender;
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaTerminoMedio:(id)sender;
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaSatisfecho:(id)sender;
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaMuySatisfecho:(id)sender;

-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho:(id)sender;
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho:(id)sender;
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio:(id)sender;
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho:(id)sender;
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho:(id)sender;

-(IBAction)dismisseRecomendariasOrtofaceUnAmigoConocidoNo:(id)sender;
-(IBAction)dismisseRecomendariasOrtofaceUnAmigoConocidoSi:(id)sender;


/*
@property (strong, nonatomic) NSString *messageNombre_Adulto;
@property (strong, nonatomic) NSString *messageApellido_Adulto;*/

@end













