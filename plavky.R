

rm(list=ls());

source('steel.R');

Swarm<-subset(D,KCU>0,select=c(Ca.0.0001,KCU,Конв.пл.));
MnSW<-data.frame(Ca='',M_kcu='');


 for (x  in  min(Swarm$Ca.0.0001):max(Swarm$Ca.0.0001))
{
	MnSW$M_kcu[x]<-mean(Swarm$KCU[which(Swarm$Ca.0.0001==x)]);
#	PlavNo[x]<-Swarm$Конв.пл.[which(Swarm$Ca.0.0001==x)]
}

#MnSW<-na.omit(MnSW)





