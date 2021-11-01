rm(list=ls())

dfilename<-c("KCU2_Norm.csv",
"KCU2_QT.csv",
"KCU_Norm.csv",
"KCUNormMechanicAging1.csv",
"KCUNormMechanicAging.csv",
"KCU_QT.csv",
"KCUQTMechanicAging1.csv",
"KCUQTMechanicAging.csv",
"StrengthLim_Norm.csv",
"StrengthLim_QT.csv",
"YieldStrength_Norm.csv",
"YieldStrength_QT.csv",
"ELong5_Norm.csv",
"ELong5_QT.csv")

ddiagname<-c("KCU2_Norm.csv",
"KCU2_QT.csv",
"KCU_Norm.csv",
"KCUNormпослемехстарения1.csv",
"KCUNormпослемехстарения.csv",
"KCU_QT.csv",
"KCUQTпослемехстарения1.csv",
"KCUQTпослемехстарения.csv",
"Предпрч_Norm.csv",
"Предпрч_QT.csv",
"Предтек_Norm.csv",
"Предтек_QT.csv",
"удл5_Norm.csv",
"удл5_QT.csv")

dpicnameY<-c("Ударная вязкость KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Ударная вязкость  KCU, Дж/см^2",
"Предел прочности, МПа",
"Предел прочности, МПа",
"Предел текучести, МПа",
"Предел текучести, МПа",
"Относительное удлинение, %",
"Относительное удлинение, %")

as.character(dfilename)
as.character(dpicnameY)
print(dfilename)


for (dfl  in  1:length(dfilename)) {

	D<-read.csv(file=dfilename[dfl],sep=',',header=TRUE)

for (i in 2:6) {
	Sulfur_I<-D[which(D$S.0.001==i),]
         	for  (j in sort(unique(Sulfur_I$Cu.0.01))) { 
			filename<-paste('S_',as.character(i),'Cu_',as.character(j),dfilename[dfl],sep="")
			Sulfur_Cuprum_ij<-Sulfur_I[which(Sulfur_I$Cu.0.01==j),]
			
			jpeg(paste(filename,".jpeg",sep=""))
							
			plot(y=Sulfur_Cuprum_ij[,2],  x=Sulfur_Cuprum_ij$Ca.0.0001, ylab=dpicnameY[dfl], 
			xlab="Остаточное содержание кальция, %*0,0001", main=paste("Содержание меди",j*0.001,"%"))
			
			dev.off()
			
			write.csv2(Sulfur_Cuprum_ij,  file=filename)
			print(filename)
}
}
}
