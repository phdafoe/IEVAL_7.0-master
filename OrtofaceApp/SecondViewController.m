//
//  SecondViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "SecondViewController.h"
#import "KBScrollView.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>


@interface SecondViewController ()

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;


@end

@implementation SecondViewController

@synthesize EstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica, SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico, ConLaOrganizacionGeneralDeLaClinicaInsatisfecho, ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho, ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho, ConLaOrganizacionGeneralDeLaClinicaSatisfecho,ConLaOrganizacionGeneralDeLaClinicaTerminoMedio,ConLasInstalacionesDondeTrabajamosInsatisfecho,ConLasInstalacionesDondeTrabajamosMuyInsatisfecho,ConLasInstalacionesDondeTrabajamosMuySatisfecho,ConLasInstalacionesDondeTrabajamosSatisfecho,ConLasInstalacionesDondeTrabajamosTerminoMedio,ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho,ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio,CosasQueTeGustaronDeLaConsulta1,CosasQueTeGustaronDeLaConsulta2,CosasQueTeGustaronDeLaConsulta3, SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho,SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio, RecomendariasOrtofaceUnAmigoConocidoNo, RecomendariasOrtofaceUnAmigoConocidoSi, AreasQueDebenSerMejoradas1, AreasQueDebenSerMejoradas2, AreasQueDebenSerMejoradas3, scrollView;

@synthesize overlayImageView;
@synthesize backgroundImageView;
@synthesize screenshotImage;
@synthesize screenPictureView;
@synthesize screenPictureLabel;
@synthesize screenPictureImageView;

/*@synthesize messageNombre_Adulto, messageApellido_Adulto;

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"First to second"])
    {
        self.messageNombre_Adulto = Nombre_Adulto.text;
        self.messageApellido_Adulto = Apellido_Adulto.text;
        FirmaDigtalViewController *targetVC = [segue destinationViewController];
        targetVC.messageNombre_Adulto = self.messageNombre_Adulto;
        targetVC.messageApellido_Adulto = self.messageApellido_Adulto;
    }
}*/

-(IBAction)enviar:(id)sender

{
    
    NSString *enviaStringEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = EstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica.text;
    NSUserDefaults *defaultsEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = [NSUserDefaults standardUserDefaults];
    [defaultsEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica setObject:enviaStringEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica forKey:@"enviaStringEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica"];
    [defaultsEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica synchronize];
    
    NSString *enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico.text;
    NSUserDefaults *defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = [NSUserDefaults standardUserDefaults];
    [defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico setObject:enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico forKey:@"enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico"];
    [defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico synchronize];
    
    NSString *enviaStringCosasQueTeGustaronDeLaConsulta1 = CosasQueTeGustaronDeLaConsulta1.text;
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta1 = [NSUserDefaults standardUserDefaults];
    [defaultsCosasQueTeGustaronDeLaConsulta1 setObject:enviaStringCosasQueTeGustaronDeLaConsulta1 forKey:@"enviaStringCosasQueTeGustaronDeLaConsulta1"];
    [defaultsCosasQueTeGustaronDeLaConsulta1 synchronize];
    
    
    NSString *enviaStringCosasQueTeGustaronDeLaConsulta2 = CosasQueTeGustaronDeLaConsulta2.text;
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta2 = [NSUserDefaults standardUserDefaults];
    [defaultsCosasQueTeGustaronDeLaConsulta2 setObject:enviaStringCosasQueTeGustaronDeLaConsulta2 forKey:@"enviaStringCosasQueTeGustaronDeLaConsulta2"];
    [defaultsCosasQueTeGustaronDeLaConsulta2 synchronize];
    
    NSString *enviaStringCosasQueTeGustaronDeLaConsulta3 = CosasQueTeGustaronDeLaConsulta3.text;
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta3 = [NSUserDefaults standardUserDefaults];
    [defaultsCosasQueTeGustaronDeLaConsulta3 setObject:enviaStringCosasQueTeGustaronDeLaConsulta3 forKey:@"enviaStringCosasQueTeGustaronDeLaConsulta3"];
    [defaultsCosasQueTeGustaronDeLaConsulta3 synchronize];
    
    NSString *enviaStringAreasQueDebenSerMejoradas1 = AreasQueDebenSerMejoradas1.text;
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas1 = [NSUserDefaults standardUserDefaults];
    [defaultsAreasQueDebenSerMejoradas1 setObject:enviaStringAreasQueDebenSerMejoradas1 forKey:@"enviaStringAreasQueDebenSerMejoradas1"];
    [defaultsAreasQueDebenSerMejoradas1 synchronize];
    
    NSString *enviaStringAreasQueDebenSerMejoradas2 = AreasQueDebenSerMejoradas2.text;
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas2 = [NSUserDefaults standardUserDefaults];
    [defaultsAreasQueDebenSerMejoradas2 setObject:enviaStringAreasQueDebenSerMejoradas2 forKey:@"enviaStringAreasQueDebenSerMejoradas2"];
    [defaultsAreasQueDebenSerMejoradas2 synchronize];
    
    NSString *enviaStringAreasQueDebenSerMejoradas3 = AreasQueDebenSerMejoradas3.text;
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas3 = [NSUserDefaults standardUserDefaults];
    [defaultsAreasQueDebenSerMejoradas3 setObject:enviaStringAreasQueDebenSerMejoradas3 forKey:@"enviaStringAreasQueDebenSerMejoradas3"];
    [defaultsAreasQueDebenSerMejoradas3 synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho = ConLasInstalacionesDondeTrabajamosMuyInsatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho = ConLasInstalacionesDondeTrabajamosInsatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosInsatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosInsatisfecho synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio = ConLasInstalacionesDondeTrabajamosTerminoMedio.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosTerminoMedio setObject:enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio forKey:@"enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio"];
    [defaultsConLasInstalacionesDondeTrabajamosTerminoMedio synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosSatisfecho = ConLasInstalacionesDondeTrabajamosSatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosSatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosSatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosSatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosSatisfecho synchronize];
    
    NSString *enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho = ConLasInstalacionesDondeTrabajamosMuySatisfecho.text;
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho setObject:enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho forKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho"];
    [defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho = ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho = ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio = ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio synchronize];
    
    NSString *enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho = ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho.text;
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho setObject:enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho forKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho"];
    [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho = ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho = ConLaOrganizacionGeneralDeLaClinicaInsatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio = ConLaOrganizacionGeneralDeLaClinicaTerminoMedio.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho = ConLaOrganizacionGeneralDeLaClinicaSatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho synchronize];
    
    NSString *enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho = ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho.text;
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho setObject:enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho forKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho"];
    [defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho synchronize];
    
    NSString *enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho = SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho.text;
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho = [NSUserDefaults standardUserDefaults];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho setObject:enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho forKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho"];
    [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho synchronize];
    
    NSString *enviaStringRecomendariasOrtofaceUnAmigoConocidoNo = RecomendariasOrtofaceUnAmigoConocidoNo.text;
    NSUserDefaults *defaultsRecomendariasOrtofaceUnAmigoConocidoNo = [NSUserDefaults standardUserDefaults];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoNo setObject:enviaStringRecomendariasOrtofaceUnAmigoConocidoNo forKey:@"enviaStringRecomendariasOrtofaceUnAmigoConocidoNo"];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoNo synchronize];
    
    NSString *enviaStringRecomendariasOrtofaceUnAmigoConocidoSi = RecomendariasOrtofaceUnAmigoConocidoSi.text;
    NSUserDefaults *defaultsRecomendariasOrtofaceUnAmigoConocidoSi = [NSUserDefaults standardUserDefaults];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoSi setObject:enviaStringRecomendariasOrtofaceUnAmigoConocidoSi forKey:@"enviaStringOperadoDeAmigdalasVegetacionesEdad_Adulto"];
    [defaultsRecomendariasOrtofaceUnAmigoConocidoSi synchronize];
    
}



-(IBAction)cargarInformacion:(id)sender
{
    
    NSUserDefaults *defaultsEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica = [defaultsEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica objectForKey:@"enviaStringEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica"];
    [EstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica setText:cargaStringEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica];
    
    NSUserDefaults *defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico = [defaultsSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico objectForKey:@"enviaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico"];
    [SeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico setText:cargaStringSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico];
    
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta1 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCosasQueTeGustaronDeLaConsulta1 = [defaultsCosasQueTeGustaronDeLaConsulta1 objectForKey:@"enviaStringCosasQueTeGustaronDeLaConsulta1"];
    [CosasQueTeGustaronDeLaConsulta1 setText:cargaStringCosasQueTeGustaronDeLaConsulta1];
    
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta2 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCosasQueTeGustaronDeLaConsulta2 = [defaultsCosasQueTeGustaronDeLaConsulta2 objectForKey:@"enviaStringCosasQueTeGustaronDeLaConsulta2"];
    [CosasQueTeGustaronDeLaConsulta2 setText:cargaStringCosasQueTeGustaronDeLaConsulta2];
    
    NSUserDefaults *defaultsCosasQueTeGustaronDeLaConsulta3 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringCosasQueTeGustaronDeLaConsulta3 = [defaultsCosasQueTeGustaronDeLaConsulta3 objectForKey:@"enviaStringCosasQueTeGustaronDeLaConsulta3"];
    [CosasQueTeGustaronDeLaConsulta3 setText:cargaStringCosasQueTeGustaronDeLaConsulta3];
    
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas1 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAreasQueDebenSerMejoradas1 = [defaultsAreasQueDebenSerMejoradas1 objectForKey:@"enviaStringAreasQueDebenSerMejoradas1"];
    [AreasQueDebenSerMejoradas1 setText:cargaStringAreasQueDebenSerMejoradas1];
    
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas2 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAreasQueDebenSerMejoradas2 = [defaultsAreasQueDebenSerMejoradas2 objectForKey:@"enviaStringAreasQueDebenSerMejoradas2"];
    [AreasQueDebenSerMejoradas2 setText:cargaStringAreasQueDebenSerMejoradas2];
    
    NSUserDefaults *defaultsAreasQueDebenSerMejoradas3 = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringAreasQueDebenSerMejoradas3 = [defaultsAreasQueDebenSerMejoradas3 objectForKey:@"enviaStringAreasQueDebenSerMejoradas3"];
    [AreasQueDebenSerMejoradas3 setText:cargaStringAreasQueDebenSerMejoradas3];
    
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho = [defaultsConLasInstalacionesDondeTrabajamosMuyInsatisfecho objectForKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho"];
    [ConLasInstalacionesDondeTrabajamosMuyInsatisfecho setText:cargaStringConLasInstalacionesDondeTrabajamosMuyInsatisfecho];
    
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLasInstalacionesDondeTrabajamosInsatisfecho = [defaultsConLasInstalacionesDondeTrabajamosInsatisfecho objectForKey:@"enviaStringConLasInstalacionesDondeTrabajamosInsatisfecho"];
    [ConLasInstalacionesDondeTrabajamosInsatisfecho setText:cargaStringConLasInstalacionesDondeTrabajamosInsatisfecho];
    
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosTerminoMedio = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLasInstalacionesDondeTrabajamosTerminoMedio = [defaultsConLasInstalacionesDondeTrabajamosTerminoMedio objectForKey:@"enviaStringConLasInstalacionesDondeTrabajamosTerminoMedio"];
    [ConLasInstalacionesDondeTrabajamosTerminoMedio setText:cargaStringConLasInstalacionesDondeTrabajamosTerminoMedio];
    
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosSatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLasInstalacionesDondeTrabajamosSatisfecho = [defaultsConLasInstalacionesDondeTrabajamosSatisfecho objectForKey:@"enviaStringConLasInstalacionesDondeTrabajamosSatisfecho"];
    [ConLasInstalacionesDondeTrabajamosSatisfecho setText:cargaStringConLasInstalacionesDondeTrabajamosSatisfecho];
    
    NSUserDefaults *defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLasInstalacionesDondeTrabajamosMuySatisfecho = [defaultsConLasInstalacionesDondeTrabajamosMuySatisfecho objectForKey:@"enviaStringConLasInstalacionesDondeTrabajamosMuySatisfecho"];
    [ConLasInstalacionesDondeTrabajamosMuySatisfecho setText:cargaStringConLasInstalacionesDondeTrabajamosMuySatisfecho];
    
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho = [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho objectForKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho"];
    [ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho setText:cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho];
    
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho = [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho objectForKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho"];
    [ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho setText:cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho];
    
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio = [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio objectForKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio"];
    [ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio setText:cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio];
    
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho = [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho objectForKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho"];
    [ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho setText:cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho];
    
    NSUserDefaults *defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho = [defaultsConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho objectForKey:@"enviaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho"];
    [ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho setText:cargaStringConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho];
    
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho = [defaultsConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho objectForKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho"];
    [ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho setText:cargaStringConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho];
    
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho = [defaultsConLaOrganizacionGeneralDeLaClinicaInsatisfecho objectForKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho"];
    [ConLaOrganizacionGeneralDeLaClinicaInsatisfecho setText:cargaStringConLaOrganizacionGeneralDeLaClinicaInsatisfecho];
    
    
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio = [defaultsConLaOrganizacionGeneralDeLaClinicaTerminoMedio objectForKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio"];
    [ConLaOrganizacionGeneralDeLaClinicaTerminoMedio setText:cargaStringConLaOrganizacionGeneralDeLaClinicaTerminoMedio];
    
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho = [defaultsConLaOrganizacionGeneralDeLaClinicaSatisfecho objectForKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho"];
    [ConLaOrganizacionGeneralDeLaClinicaSatisfecho setText:cargaStringConLaOrganizacionGeneralDeLaClinicaSatisfecho];
    
    NSUserDefaults *defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho = [defaultsConLaOrganizacionGeneralDeLaClinicaMuySatisfecho objectForKey:@"enviaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho"];
    [ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho setText:cargaStringConLaOrganizacionGeneralDeLaClinicaMuySatisfecho];
    
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho = [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho objectForKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho"];
    [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho setText:cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho];
    
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho = [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho objectForKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho"];
    [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho setText:cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho];
    
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio = [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio objectForKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio"];
    [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio setText:cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio];
    
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho = [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho objectForKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho"];
    [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho setText:cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho];
    
    NSUserDefaults *defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho = [defaultsSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho objectForKey:@"enviaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho"];
    [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho setText:cargaStringSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho];
    
    NSUserDefaults *defaultsRecomendariasOrtofaceUnAmigoConocidoNo = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRecomendariasOrtofaceUnAmigoConocidoNo = [defaultsRecomendariasOrtofaceUnAmigoConocidoNo objectForKey:@"enviaStringRecomendariasOrtofaceUnAmigoConocidoNo"];
    [RecomendariasOrtofaceUnAmigoConocidoNo setText:cargaStringRecomendariasOrtofaceUnAmigoConocidoNo];
    
    NSUserDefaults *defaultsRecomendariasOrtofaceUnAmigoConocidoSi = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringRecomendariasOrtofaceUnAmigoConocidoSi = [defaultsRecomendariasOrtofaceUnAmigoConocidoSi objectForKey:@"enviaStringRecomendariasOrtofaceUnAmigoConocidoSi"];
    [RecomendariasOrtofaceUnAmigoConocidoSi setText:cargaStringRecomendariasOrtofaceUnAmigoConocidoSi];
    
    
    
       
}


-(IBAction)dismisseEstasContentoConLaFormaQueElTratamientoHaSidoRealizadoEnNuestraClinica:(id)sender
{
    [sender resignFirstResponder];
}

-(IBAction)dismisseSeHanConseguidoLosResultadosyObjetivosQueEsperabasObtenerCuandoComenzasteTuTratamientoOrtodoncico:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCosasQueTeGustaronDeLaConsulta1:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCosasQueTeGustaronDeLaConsulta2:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseCosasQueTeGustaronDeLaConsulta3:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAreasQueDebenSerMejoradas1:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAreasQueDebenSerMejoradas2:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseAreasQueDebenSerMejoradas3:(id)sender;
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosMuyInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosTerminoMedio:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosSatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLasInstalacionesDondeTrabajamosMuySatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaTerminoMedio:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaSatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseConLaOrganizacionGeneralDeLaClinicaMuySatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseSatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRecomendariasOrtofaceUnAmigoConocidoNo:(id)sender
{
    [sender resignFirstResponder];
}
-(IBAction)dismisseRecomendariasOrtofaceUnAmigoConocidoSi:(id)sender
{
    [sender resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.overlayImageView.image = [UIImage imageNamed:@"iPhone4"];
    self.backgroundImageView.image = [UIImage imageNamed:@"Aurora"];
    
    

}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == ConLasInstalacionesDondeTrabajamosMuyInsatisfecho) {
        [ConLasInstalacionesDondeTrabajamosMuyInsatisfecho becomeFirstResponder];
    }
    else if (textField == ConLasInstalacionesDondeTrabajamosInsatisfecho)
    {
        [ConLasInstalacionesDondeTrabajamosInsatisfecho becomeFirstResponder];
    }
    else if (textField == ConLasInstalacionesDondeTrabajamosTerminoMedio)
    {
        [ConLasInstalacionesDondeTrabajamosTerminoMedio becomeFirstResponder];
    }
    else if (textField == ConLasInstalacionesDondeTrabajamosSatisfecho)
    {
        [ConLasInstalacionesDondeTrabajamosSatisfecho becomeFirstResponder];
    }
    else if (textField == ConLasInstalacionesDondeTrabajamosMuySatisfecho)
    {
        [ConLasInstalacionesDondeTrabajamosMuySatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho)
    {
        [ConLaSolucionLosProblemasPlateadosPorLosPacientesMuyInsatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho)
    {
        [ConLaSolucionLosProblemasPlateadosPorLosPacientesInsatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio)
    {
        [ConLaSolucionLosProblemasPlateadosPorLosPacientesTerminoMedio becomeFirstResponder];
    }
    else if (textField == ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho)
    {
        [ConLaSolucionLosProblemasPlateadosPorLosPacientesSatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho)
    {
        [ConLaSolucionLosProblemasPlateadosPorLosPacientesMuySatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho)
    {
        [ConLaOrganizacionGeneralDeLaClinicaMuyInsatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaOrganizacionGeneralDeLaClinicaInsatisfecho)
    {
        [ConLaOrganizacionGeneralDeLaClinicaInsatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaOrganizacionGeneralDeLaClinicaTerminoMedio)
    {
        [ConLaOrganizacionGeneralDeLaClinicaTerminoMedio becomeFirstResponder];
    }
    else if (textField == ConLaOrganizacionGeneralDeLaClinicaSatisfecho)
    {
        [ConLaOrganizacionGeneralDeLaClinicaSatisfecho becomeFirstResponder];
    }
    else if (textField == ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho)
    {
        [ConLaOrganizacionGeneralDeLaClinicaMuySatisfecho becomeFirstResponder];
    }
    else if (textField == SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho)
    {
        [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuyInsatisfecho becomeFirstResponder];
    }
    else if (textField == SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho)
    {
        [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoInsatisfecho becomeFirstResponder];
    }
    else if (textField == SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio)
    {
        [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoTerminoMedio becomeFirstResponder];
    }
    else if (textField == SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho)
    {
        [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoSatisfecho becomeFirstResponder];
    }
    else if (textField == SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho)
    {
        [SatisfaccionGlobalDeLaAtencionEnElTratoRecibidoMuySatisfecho becomeFirstResponder];
    }
    else if (textField == RecomendariasOrtofaceUnAmigoConocidoNo)
    {
        [RecomendariasOrtofaceUnAmigoConocidoNo becomeFirstResponder];
    }
    else if (textField == RecomendariasOrtofaceUnAmigoConocidoSi)
    {
        [RecomendariasOrtofaceUnAmigoConocidoSi becomeFirstResponder];
    }
    else
    {
        [textField resignFirstResponder];
    }
    return YES;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [scrollView adjustOffsetToIdealIfNeeded];
}


-(IBAction)getUIKitScreeshot
{
    self.screenPictureView = nil;
    self.screenshotImage = [self uiKitScreenshot];
    [self performSelector:@selector(displayScreenshotImage) withObject:nil afterDelay:0.10];
    self.screenPictureLabel.text = @"Imagen Completada";
}


-(UIImage *)uiKitScreenshot

{
    
    CGSize imageSize = [[UIScreen mainScreen]bounds].size;
    
    if (NULL != &UIGraphicsBeginImageContextWithOptions)
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    else
        UIGraphicsBeginImageContext(imageSize);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen])
        {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, [window center].x, [window center].y);
            CGContextConcatCTM(context, [window transform]);
            CGContextTranslateCTM(context,  - [window bounds].size.width * [[window layer] anchorPoint].x ,
                                            - [window bounds].size.height * [[window layer]anchorPoint].y);
            [[window layer]renderInContext:context];
            CGContextRestoreGState(context);
        }
        
        
    }
    
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Proceso realizado Satisfactoriamente"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK!", nil];    
    [alert show];
    
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    
    [picker setSubject:@"Envío *.jpg para base de datos Nuevos pacientes"];
    
    NSArray *toRecipient = @[@"beatriz@ortoface.com", @"comunicacion@ortoface.com"];
    
    [picker setToRecipients:toRecipient];
    
    NSData *imageData = UIImageJPEGRepresentation(image, 1);
    
    [picker addAttachmentData:imageData mimeType:@"../jpg" fileName:@"Screenshot.jpg"];
    
    NSString *emailBody = @"Texto complementario";
    
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentViewController:picker animated:YES completion:nil];
    
    return image;

    
    
    
    
    
    
    return image;
 
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}




-(void)displayScreenshotImage
{
    self.screenPictureImageView.layer.minificationFilter = kCAFilterLinear;
    self.screenPictureImageView.layer.minificationFilterBias = 0.0;
    self.screenPictureImageView.image = self.screenshotImage;
    self.screenPictureLabel.text = @"Imagen Completada";
}


@end
