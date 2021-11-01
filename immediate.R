library('latex2exp');

rm(list=ls());

source('steel.R');

Swarm<-subset(D,select=c(Ca.0.0001,AL_R.0.001));
MnSW<-0;

 for (x  in  min(Swarm$AL_R):max(Swarm$AL_R))
{
	MnSW[x]<-mean(Swarm$Ca[which(Swarm$AL_R==x)]);
}

jpeg('Ca_AL.jpeg');
plot( MnSW,
xlab=TeX("$\\Al\\cdot\\10^{-3}%$"),
ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
xlim=c(20,50),
ylim=c(10,25));
grid();
dev.off();

Swarm<-subset(D,select=c(Nb.0.001,AL_R.0.001));
MnSW<-0;

 for (x  in  min(Swarm$AL_R):max(Swarm$AL_R))
{
	MnSW[x]<-mean(Swarm$Nb[which(Swarm$AL_R==x)]);
}

jpeg('Nb_AL.jpeg');
plot( MnSW,
xlab=TeX("$\\Al\\cdot\\10^{-3}%$"),
ylab=TeX("$\\Nb\\cdot\\10^{-3}%$"),
xlim=c(20,50),
ylim=c(5,15));
grid();
dev.off();

Swarm<-subset(D,KCU>0,select=c(Nb.0.001,KCU));
MnSW<-0;

 for (x  in  min(Swarm$Nb.0.001):max(Swarm$Nb.0.001))
{
	MnSW[x]<-mean(Swarm$KCU[which(Swarm$Nb.0.001==x)]);
}

jpeg('Nb_KCU.jpeg');
plot( MnSW,
ylab=TeX("Ударная вязкость, KCU Дж/см^2"),
xlab=TeX("$\\Nb\\cdot\\10^{-3}%$"),
xlim=c(0,20),
ylim=c(150,250));
grid();
dev.off();

Swarm<-subset(D,KCU>0,select=c(Ca.0.0001,KCU));
MnSW<-0;

 for (x  in  min(Swarm$Ca.0.0001):max(Swarm$Ca.0.0001))
{
	MnSW[x]<-mean(Swarm$KCU[which(Swarm$Ca.0.0001==x)]);
}

jpeg('Ca_KCU.jpeg');
plot( MnSW,
ylab=TeX("Ударная вязкость, KCU  Дж/см^2"),
xlab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
xlim=c(10,40),
ylim=c(120,200));
grid();
dev.off();



