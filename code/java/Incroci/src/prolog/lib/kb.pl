:- dynamic incrocio/2.

incrocio(fig1, [
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(rosso), braccio(sud)),
		transita(veicolo(giallo), sinistra, braccio(sud)),
		transita(veicolo(blu), sinistra, braccio(nord)),
		transita(veicolo(rosso), sinistra, braccio(ovest))
		]).

incrocio(fig2, [
		proviene(veicolo(verde), braccio(ovest)),
		proviene(veicolo(ambulanza), braccio(est)),
		proviene(veicolo(rosso), braccio(nord)),
		transita(veicolo(verde), sinistra, braccio(nord)),
		transita(veicolo(ambulanza), dritto, braccio(ovest)),
		transita(veicolo(rosso), sinistra, braccio(ovest))
		]).

incrocio(fig3, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(rosso), braccio(est)),
		transita(veicolo(giallo), dritto, braccio(est)),
		transita(veicolo(blu), dritto, braccio(nord)),
		transita(veicolo(rosso), dritto, braccio(ovest))
		]).

incrocio(fig4, [
		proviene(veicolo(giallo), braccio(sud)),
		proviene(veicolo(blu), braccio(nord_est)),
		proviene(veicolo(nero), braccio(sud_ovest)),
		proviene(veicolo(camion), braccio(nord_ovest)),
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(rosso), braccio(sud_est)),
		transita(veicolo(verde), dritto, braccio(sud)),
		transita(veicolo(rosso), destra, braccio(nord)),
		transita(veicolo(blu), sinistra, braccio(sud_est)),
		transita(veicolo(nero), dritto, braccio(nord)),
		transita(veicolo(camion), dritto, braccio(sud)),
		transita(veicolo(giallo), destra, braccio(sud_est))
		]).

incrocio(fig5, [
		proviene(veicolo(giallo), braccio(sud)),
		proviene(veicolo(blu), braccio(est)),
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(rosso), braccio(est)),
		transita(veicolo(verde), dritto, braccio(sud)),
		transita(veicolo(rosso), sinistra, braccio(sud)),
		transita(veicolo(blu), dritto, braccio(ovest)),
		transita(veicolo(giallo), sinistra, braccio(ovest))
		]).

incrocio(fig6, [
		proviene(veicolo(giallo), braccio(nord_ovest)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(blu), braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(rosso), sinistra, braccio(sud_est)),
		transita(veicolo(giallo), dritto, braccio(sud_est))
		]).

incrocio(fig7, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(rosso), braccio(nord_est)),
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(celeste), braccio(est)),
		proviene(veicolo(verde), braccio(nord_ovest)),
		transita(veicolo(blu), dritto, braccio(nord_est)),
		transita(veicolo(rosso), dritto, braccio(ovest)),
		transita(veicolo(giallo), dritto, braccio(nord_est)),
		transita(veicolo(celeste), sinistra, braccio(sud)),
		transita(veicolo(verde), sinistra, braccio(nord_est))
		]).

incrocio(fig8, [
		proviene(veicolo(rosso), braccio(nord_est)),
		proviene(veicolo(giallo), braccio(nord_ovest)),
		proviene(veicolo(rosa), braccio(sud)),
		proviene(veicolo(blu), braccio(ovest)),
		transita(veicolo(rosa), dritto, braccio(nord_est)),
		transita(veicolo(blu), dritto, braccio(nord_est)),
		transita(veicolo(rosso), dritto, braccio(ovest)),
		transita(veicolo(giallo), dritto, braccio(sud))
		]).

incrocio(fig9, [
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(motocarro), braccio(sud)),
		proviene(veicolo(rosso), braccio(ovest)),
		transita(veicolo(giallo), sinistra, braccio(sud)),
		transita(veicolo(motocarro), dritto, braccio(nord)),
		transita(veicolo(rosso), sinistra, braccio(nord)),
		segnaletica(braccio(sud), segnale(dare_precedenza))
		]).

incrocio(fig10, [
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(giallo), braccio(sud)),
		proviene(veicolo(autopompa), braccio(est)),
		proviene(veicolo(blu), braccio(nord)),
		transita(veicolo(autopompa), dritto, braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(sud)),
		transita(veicolo(verde), sinistra, braccio(est)),
		transita(veicolo(giallo), sinistra, braccio(ovest))
		]).

incrocio(fig11, [
		proviene(veicolo(tram), braccio(sud)),
		proviene(veicolo(ambulanza), braccio(nord_ovest)),
		proviene(veicolo(moto), braccio(nord_est)),
		proviene(veicolo(blu), braccio(sud_est)),
		transita(veicolo(ambulanza), sinistra, braccio(nord)),
		transita(veicolo(blu), dritto, braccio(nord_ovest)),
		transita(veicolo(tram), dritto, braccio(nord)),
		transita(veicolo(moto), dritto, braccio(nord_ovest))
		]).

incrocio(fig12, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(blu), braccio(est)),
		proviene(veicolo(rosso), braccio(sud)),
		transita(veicolo(giallo), sinistra, braccio(nord)),
		transita(veicolo(blu), sinistra, braccio(sud)),
		transita(veicolo(rosso), dritto, braccio(nord))
		]).


incrocio(fig13, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(rosso), braccio(sud)),
		proviene(veicolo(blu), braccio(est)),
		transita(veicolo(blu), sinistra, braccio(sud)),
		transita(veicolo(rosso), dritto, braccio(nord)),
		transita(veicolo(giallo), dritto, braccio(est))
		]).

incrocio(fig14, [
		proviene(veicolo(tram), braccio(sud)),
		proviene(veicolo(camion), braccio(nord)),
		proviene(veicolo(moto), braccio(ovest)),
		proviene(veicolo(autobus), braccio(est)),
		transita(veicolo(camion), dritto, braccio(sud)),
		transita(veicolo(autobus), dritto, braccio(ovest)),
		transita(veicolo(tram), dritto, braccio(nord)),
		transita(veicolo(moto), dritto, braccio(est))
		]).

incrocio(fig15, [
		proviene(veicolo(tram), braccio(nord)),
		proviene(veicolo(rosso), braccio(ovest)),
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(blu), braccio(sud)),
		transita(veicolo(rosso), sinistra, braccio(nord)),
		transita(veicolo(blu), sinistra, braccio(ovest)),
		transita(veicolo(tram), dritto, braccio(sud)),
		transita(veicolo(giallo), destra, braccio(sud))
		]).

incrocio(fig16, [
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(blu), braccio(ovest)),
		transita(veicolo(rosso), dritto, braccio(sud)),
		transita(veicolo(blu), sinistra, braccio(nord)),
		transita(veicolo(verde), sinistra, braccio(est)),
		transita(veicolo(giallo), sinistra, braccio(sud))
		]).


incrocio(fig17, [
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(motocarro), braccio(ovest)),
		proviene(veicolo(rosso), braccio(est)),
		transita(veicolo(blu), sinistra, braccio(ovest)),
		transita(veicolo(motocarro), dritto, braccio(est)),
		transita(veicolo(rosso), sinistra, braccio(sud)),
		segnaletica(braccio(sud), segnale(dare_precedenza))
		]).


incrocio(fig18, [
		proviene(veicolo(celeste), braccio(sud_est)),
		proviene(veicolo(giallo), braccio(sud_ovest)),
		proviene(veicolo(rosso), braccio(ovest)),
		proviene(veicolo(motocarro), braccio(nord)),
		proviene(veicolo(blu), braccio(nord_est)),
		transita(veicolo(rosso), dritto, braccio(nord_est)),
		transita(veicolo(motocarro), dritto, braccio(sud_ovest)),
		transita(veicolo(blu), dritto, braccio(ovest)),
		transita(veicolo(celeste), sinistra, braccio(sud_ovest)),
		transita(veicolo(giallo), destra, braccio(sud_est))
		]).


incrocio(fig19, [
		proviene(veicolo(verde), braccio(est)),
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(autocarro), braccio(nord_ovest)),
		proviene(veicolo(blu), braccio(nord_est)),
		transita(veicolo(autocarro), sinistra, braccio(est)),
		transita(veicolo(blu), destra, braccio(ovest)),
		transita(veicolo(verde), dritto, braccio(ovest)),
		transita(veicolo(giallo), dritto, braccio(est))
		]).

incrocio(fig20, [
		proviene(veicolo(autobus), braccio(nord_est)),
		proviene(veicolo(giallo), braccio(sud)),
		proviene(veicolo(rosso), braccio(ovest)),
		proviene(veicolo(moto), braccio(sud)),
		transita(veicolo(rosso), dritto, braccio(est)),
		transita(veicolo(moto), destra, braccio(est)),
		transita(veicolo(autobus), dritto, braccio(sud)),
		transita(veicolo(giallo), sinistra, braccio(sud))
		]).


incrocio(fig21, [
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(tram), braccio(ovest)),
		proviene(veicolo(camion), braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(nord)),
		transita(veicolo(tram), dritto, braccio(est)),
		transita(veicolo(camion), dritto, braccio(est))
		]).


incrocio(fig22, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(rosso), braccio(sud)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(giallo), dritto, braccio(ovest)),
		transita(veicolo(rosso), sinistra, braccio(ovest))
		]).


incrocio(fig23, [
		proviene(veicolo(verde), braccio(nord_est)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(giallo), braccio(sud_est)),
		proviene(veicolo(blu), braccio(ovest)),
		transita(veicolo(rosso), dritto, braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(verde), destra, braccio(ovest)),
		transita(veicolo(giallo), sinistra, braccio(ovest))
		]).


incrocio(fig24, [
		proviene(veicolo(verde), braccio(nord_ovest)),
		proviene(veicolo(giallo), braccio(sud_est)),
		proviene(veicolo(autocarro), braccio(sud_ovest)),
		proviene(veicolo(blu), braccio(nord)),
		transita(veicolo(autocarro), destra, braccio(sud_est)),
		transita(veicolo(blu), dritto, braccio(sud_ovest)),
		transita(veicolo(verde), dritto, braccio(sud_est)),
		transita(veicolo(giallo), dritto, braccio(nord))
		]).


incrocio(fig25, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(rosso), braccio(est)),
		transita(veicolo(giallo), destra, braccio(sud)),
		transita(veicolo(blu), sinistra, braccio(ovest)),
		transita(veicolo(rosso), sinistra, braccio(sud))
		]).

incrocio(fig26, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(tram), braccio(est)),
		proviene(veicolo(rosso), braccio(est)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(tram), dritto, braccio(ovest)),
		transita(veicolo(rosso), sinistra, braccio(sud))
		]).

incrocio(fig27, [
		proviene(veicolo(giallo), braccio(sud_est)),
		proviene(veicolo(autobus), braccio(nord_est)),
		proviene(veicolo(camion), braccio(nord_ovest)),
		transita(veicolo(giallo), sinistra, braccio(sud_ovest)),
		transita(veicolo(autobus), dritto, braccio(sud_ovest)),
		transita(veicolo(camion), dritto, braccio(sud_est))
		]).

incrocio(fig28, [
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(autobus), braccio(est)),
		proviene(veicolo(moto), braccio(nord)),
		transita(veicolo(giallo), sinistra, braccio(sud)),
		transita(veicolo(autobus), dritto, braccio(ovest)),
		transita(veicolo(moto), sinistra, braccio(est))
		]).


incrocio(fig29, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(rimorchio), braccio(nord_ovest)),
		proviene(veicolo(blu), braccio(est)),
		transita(veicolo(giallo), dritto, braccio(est)),
		transita(veicolo(rimorchio), sinistra, braccio(est)),
		transita(veicolo(blu), dritto, braccio(ovest))
		]).


incrocio(fig30, [
		proviene(veicolo(giallo), braccio(nord_ovest)),
		proviene(veicolo(blu), braccio(sud_ovest)),
		proviene(veicolo(rosso), braccio(sud_est)),
		transita(veicolo(giallo), sinistra, braccio(sud_est)),
		transita(veicolo(blu), sinistra, braccio(nord_ovest)),
		transita(veicolo(rosso), destra, braccio(nord_ovest))
		]).

incrocio(fig31, [
		proviene(veicolo(verde), braccio(ovest)),
		proviene(veicolo(nero), braccio(sud)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(blu), braccio(nord)),
		transita(veicolo(rosso), sinistra, braccio(sud)),
		transita(veicolo(blu), sinistra, braccio(est)),
		transita(veicolo(verde), dritto, braccio(est)),
		transita(veicolo(nero), dritto, braccio(nord)),
		segnaletica(braccio(est), segnale(dare_precedenza)),
		segnaletica(braccio(ovest), segnale(dare_precedenza))
		]).


incrocio(fig32, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(nero), braccio(sud)),
		proviene(veicolo(rosso), braccio(est)),
		transita(veicolo(rosso), destra, braccio(nord)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(nero), dritto, braccio(nord)),
		segnaletica(braccio(est), segnale(dare_precedenza)),
		segnaletica(braccio(ovest), segnale(dare_precedenza))
		]).

incrocio(fig33, [
		proviene(veicolo(camion), braccio(est)),
		proviene(veicolo(tram), braccio(nord)),
		proviene(veicolo(giallo), braccio(ovest)),
		transita(veicolo(camion), sinistra, braccio(sud)),
		transita(veicolo(giallo), dritto, braccio(est)),
		transita(veicolo(tram), dritto, braccio(sud))
		]).

incrocio(fig34, [
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(rosso), braccio(sud_ovest)),
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(nero), braccio(sud_est)),
		transita(veicolo(rosso), destra, braccio(est)),
		transita(veicolo(verde), dritto, braccio(sud_ovest)),
		transita(veicolo(nero), sinistra, braccio(sud_ovest)),
		transita(veicolo(giallo), sinistra, braccio(sud_ovest))
		]).

incrocio(fig35, [
		proviene(veicolo(verde), braccio(ovest)),
		proviene(veicolo(rosso), braccio(sud_ovest)),
		proviene(veicolo(blu), braccio(est)),
		proviene(veicolo(nero), braccio(nord_ovest)),
		transita(veicolo(rosso), destra, braccio(est)),
		transita(veicolo(verde), dritto, braccio(est)),
		transita(veicolo(nero), dritto, braccio(sud_ovest)),
		transita(veicolo(blu), dritto, braccio(ovest))
		]).

incrocio(fig36, [
		proviene(veicolo(autobus_rosso), braccio(est)),
		proviene(veicolo(rosso), braccio(ovest)),
		proviene(veicolo(autobus_blu), braccio(sud)),
		transita(veicolo(rosso), dritto, braccio(est)),
		transita(veicolo(autobus_blu), sinistra, braccio(ovest)),
		transita(veicolo(autobus_rosso), dritto, braccio(ovest))
		]).
		
incrocio(fig37, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(giallo), braccio(est)),
		transita(veicolo(rosso), dritto, braccio(sud_ovest)),
		transita(veicolo(blu), sinistra, braccio(nord)),
		transita(veicolo(giallo), sinistra, braccio(sud_ovest))
		]).

incrocio(fig38, [
		proviene(veicolo(giallo), braccio(nord)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(blu), braccio(ovest)),
		transita(veicolo(blu), sinistra, braccio(nord)),
		transita(veicolo(rosso), sinistra, braccio(est)),
		transita(veicolo(giallo), dritto, braccio(sud))
		]).

incrocio(fig39, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(bianco), braccio(sud)),
		transita(veicolo(rosso), dritto, braccio(sud)),
		transita(veicolo(blu), destra, braccio(sud)),
		transita(veicolo(bianco), dritto, braccio(nord)),
		transita(veicolo(giallo), dritto, braccio(ovest))
		]).

incrocio(fig40, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(rosso), braccio(sud)),
		proviene(veicolo(giallo), braccio(sud)),
		proviene(veicolo(nero), braccio(est)),
		transita(veicolo(rosso), dritto, braccio(nord)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(nero), dritto, braccio(ovest)),
		transita(veicolo(giallo), sinistra, braccio(ovest))
		]).


incrocio(fig41, [
		proviene(veicolo(nero), braccio(ovest)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(verde), braccio(sud)),
		transita(veicolo(verde), sinistra, braccio(ovest)),
		transita(veicolo(nero), sinistra, braccio(nord)),
		transita(veicolo(rosso), dritto, braccio(ovest)),
		segnaletica(braccio(est), segnale(dare_precedenza)),
		segnaletica(braccio(ovest), segnale(dare_precedenza))
		]).

incrocio(fig42, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(giallo), braccio(est)),
		transita(veicolo(rosso), destra, braccio(ovest)),
		transita(veicolo(blu), sinistra, braccio(nord)),
		transita(veicolo(giallo), dritto, braccio(ovest))
		]).


incrocio(fig43, [
		proviene(veicolo(rosso), braccio(nord_ovest)),
		proviene(veicolo(giallo), braccio(sud_ovest)),
		proviene(veicolo(blu), braccio(sud_est)),
		transita(veicolo(rosso), dritto, braccio(sud_est)),
		transita(veicolo(blu), sinistra, braccio(sud_ovest)),
		transita(veicolo(giallo), destra, braccio(sud_est))
		]).

incrocio(fig44, [
		proviene(veicolo(blu), braccio(sud_est)),
		proviene(veicolo(rosso), braccio(sud_ovest)),
		proviene(veicolo(giallo), braccio(est)),
		transita(veicolo(rosso), dritto, braccio(est)),
		transita(veicolo(blu), sinistra, braccio(sud_ovest)),
		transita(veicolo(giallo), dritto, braccio(sud_ovest))
		]).

incrocio(fig45, [
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(nero), braccio(nord)),
		transita(veicolo(rosso), dritto, braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(nord)),
		transita(veicolo(nero), sinistra, braccio(est))
		]).

incrocio(fig46, [
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(rosso), braccio(sud)),
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(blu), braccio(est)),
		transita(veicolo(rosso), destra, braccio(est)),
		transita(veicolo(blu), dritto, braccio(ovest)),
		transita(veicolo(verde), sinistra, braccio(est)),
		transita(veicolo(giallo), dritto, braccio(est))
		]).

incrocio(fig47, [
		proviene(veicolo(verde), braccio(ovest)),
		proviene(veicolo(autocarro), braccio(nord)),
		proviene(veicolo(giallo), braccio(sud)),
		proviene(veicolo(filobus), braccio(est)),
		transita(veicolo(autocarro), dritto, braccio(sud)),
		transita(veicolo(filobus), sinistra, braccio(sud)),
		transita(veicolo(verde), dritto, braccio(est)),
		transita(veicolo(giallo), destra, braccio(est))
		]).

incrocio(fig48, [
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(tram), braccio(ovest)),
		proviene(veicolo(autobus), braccio(sud)),
		transita(veicolo(rosso), sinistra, braccio(sud)),
		transita(veicolo(autobus), sinistra, braccio(ovest)),
		transita(veicolo(tram), dritto, braccio(est))
		]).

incrocio(fig49, [
		proviene(veicolo(rosso), braccio(nord_est)),
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(blu), braccio(nord_ovest)),
		transita(veicolo(rosso), sinistra, braccio(est)),
		transita(veicolo(blu), dritto, braccio(sud)),
		transita(veicolo(giallo), dritto, braccio(sud_ovest))
		]).

incrocio(fig50, [
		proviene(veicolo(giallo), braccio(nord_est)),
		proviene(veicolo(rosso), braccio(sud_ovest)),
		proviene(veicolo(blu), braccio(sud_est)),
		proviene(veicolo(nero), braccio(nord_ovest)),
		proviene(veicolo(verde), braccio(est)),
		transita(veicolo(blu), sinistra, braccio(sud_ovest)),
		transita(veicolo(rosso), destra, braccio(est)),
		transita(veicolo(giallo), destra, braccio(ovest)),
		transita(veicolo(nero), sinistra, braccio(est)),
		transita(veicolo(verde), dritto, braccio(ovest))
		]).

incrocio(fig51, [
		proviene(veicolo(verde), braccio(nord)),
		proviene(veicolo(rosso), braccio(sud)),
		proviene(veicolo(nero), braccio(ovest)),
		proviene(veicolo(blu), braccio(est)),
		transita(veicolo(rosso), dritto, braccio(nord)),
		transita(veicolo(blu), dritto, braccio(ovest)),
		transita(veicolo(verde), sinistra, braccio(est)),
		transita(veicolo(nero), dritto, braccio(est))
		]).

incrocio(fig52, [
		proviene(veicolo(nero), braccio(sud)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(blu), braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(nero), dritto, braccio(nord)),
		transita(veicolo(rosso), destra, braccio(nord)),
		segnaletica(braccio(est), segnale(dare_precedenza)),
		segnaletica(braccio(ovest), segnale(dare_precedenza))
		]).

incrocio(fig53, [
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(nero), braccio(sud_ovest)),
		proviene(veicolo(verde), braccio(sud_est)),
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(blu), braccio(est)),
		transita(veicolo(rosso), dritto, braccio(sud_ovest)),
		transita(veicolo(verde), sinistra, braccio(sud_ovest)),
		transita(veicolo(blu), sinistra, braccio(sud_ovest)),
		transita(veicolo(nero), destra, braccio(est)),
		transita(veicolo(giallo), sinistra, braccio(nord))
		]).

incrocio(fig54, [
		proviene(veicolo(giallo), braccio(ovest)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(blu), braccio(est)),
		proviene(veicolo(verde), braccio(sud)),
		transita(veicolo(verde), sinistra, braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(ovest)),
		transita(veicolo(giallo), dritto, braccio(est)),
		transita(veicolo(rosso), destra, braccio(ovest)),
		segnaletica(braccio(nord), segnale(dare_precedenza)),
		segnaletica(braccio(sud), segnale(dare_precedenza))
		]).

incrocio(fig55, [
		proviene(veicolo(blu), braccio(ovest)),
		proviene(veicolo(rosso), braccio(sud)),
		proviene(veicolo(giallo), braccio(nord)),
		transita(veicolo(rosso), sinistra, braccio(ovest)),
		transita(veicolo(blu), dritto, braccio(est)),
		transita(veicolo(giallo), sinistra, braccio(est))
		]).

incrocio(fig56, [
		proviene(veicolo(giallo), braccio(est)),
		proviene(veicolo(rosso), braccio(nord)),
		proviene(veicolo(blu), braccio(sud_est)),
		proviene(veicolo(verde), braccio(sud_ovest)),
		transita(veicolo(verde), dritto, braccio(nord)),
		transita(veicolo(blu), dritto, braccio(nord)),
		transita(veicolo(giallo), sinistra, braccio(sud_ovest)),
		transita(veicolo(rosso), dritto, braccio(sud_ovest))
		]).

incrocio(fig57, [
		proviene(veicolo(tram), braccio(est)),
		proviene(veicolo(rosso), braccio(ovest)),
		proviene(veicolo(nero), braccio(sud)),
		proviene(veicolo(blu), braccio(nord)),
		transita(veicolo(rosso), dritto, braccio(est)),
		transita(veicolo(blu), sinistra, braccio(est)),
		transita(veicolo(nero), dritto, braccio(nord)),
		transita(veicolo(tram), sinistra, braccio(sud)),
		segnaletica(braccio(nord), segnale(dare_precedenza)),
		segnaletica(braccio(sud), segnale(dare_precedenza))
		]).

incrocio(fig58, [
		proviene(veicolo(nero), braccio(ovest)),
		proviene(veicolo(rosso), braccio(est)),
		proviene(veicolo(blu), braccio(sud)),
		proviene(veicolo(verde), braccio(nord)),
		transita(veicolo(verde), sinistra, braccio(est)),
		transita(veicolo(blu), sinistra, braccio(ovest)),
		transita(veicolo(nero), sinistra, braccio(nord)),
		transita(veicolo(rosso), dritto, braccio(ovest)),
		segnaletica(braccio(est), segnale(dare_precedenza)),
		segnaletica(braccio(sud), segnale(dare_precedenza))
		]).

