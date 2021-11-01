rm(list=ls())

D<-read.csv('10ХСНД.csv',sep=';',header=TRUE)

Normalized<-subset(D,Состояние=="Нормализован Normalized",select=names(D))
QTempered<-subset(D,Состояние=="Закалка Отпуск Quenched Tempered",select=names(D))




KCU_Norm<-subset(Normalized,KCU>0,select=c(KCU, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
KCU2_Norm<-subset(Normalized,KCU2>0,select=c(KCU2, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(KCU_Norm,file="KCU_Norm.csv")
write.csv(KCU2_Norm,file="KCU2_Norm.csv")


KCU_QT<-subset(QTempered,KCU>0,select=c(KCU, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
KCU2_QT<-subset(QTempered,KCU2>0,select=c(KCU2, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(KCU_QT,file="KCU_QT.csv")
write.csv(KCU2_QT,file="KCU2_QT.csv")


KCU_Norm.после.мех..старения.1<-subset(Normalized,KCU.после.мех..старения.1>0,select=c(KCU.после.мех..старения.1, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
KCU_Norm.после.мех..старения<-subset(Normalized,KCU.после.мех..старения>0,select=c(KCU.после.мех..старения, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(KCU_Norm.после.мех..старения.1,file="KCUNormMechanicAging1.csv")
write.csv(KCU_Norm.после.мех..старения,file="KCUNormMechanicAging.csv")

KCU_QT.после.мех..старения.1<-subset(QTempered,KCU.после.мех..старения.1>0,select=c(KCU.после.мех..старения.1, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
KCU_QT.после.мех..старения<-subset(QTempered,KCU.после.мех..старения>0,select=c(KCU.после.мех..старения, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(KCU_QT.после.мех..старения.1,file="KCUQTMechanicAging1.csv")
write.csv(KCU_QT.после.мех..старения,file="KCUQTMechanicAging.csv")

Предтек_Norm<-subset(Normalized,Предтек>0,select=c(Предтек, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
Предпрч_Norm<-subset(Normalized,Предпрч>0,select=c(Предпрч, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(Предтек_Norm,file="YieldStrength_Norm.csv")
write.csv(Предпрч_Norm,file="StrengthLim_Norm.csv")

Предтек_QT<-subset(QTempered,Предтек>0,select=c(Предтек, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
Предпрч_QT<-subset(QTempered,Предпрч>0,select=c(Предпрч, S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(Предтек_QT,file="YieldStrength_QT.csv")
write.csv(Предпрч_QT,file="StrengthLim_QT.csv")

удл5._Norm<-subset(Normalized,удл5.>0,select=c(удл5., S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
удл5._QT<-subset(QTempered,удл5.>0,select=c(удл5., S.0.001, P.0.001, Cu.0.01, AL_R.0.001, N.0.001, Ca.0.0001, H2.0.0001))
write.csv(удл5._Norm,file="ELong5_Norm.csv")
write.csv(удл5._QT,file="ELong5_QT.csv")




