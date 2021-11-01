rm(list=ls())

source('steel.R');
jpeg('Ca_Al.jpeg');
plot(D$AL_R.0.001,D$Ca, ylab='Остаточное содержание Ca*10^-4', xlab='Остаточное содержание Al*10^-3', type="p");
dev.off();

jpeg('Nb_Al.jpeg');
plot(D$AL_R.0.001,D$Nb, ylab='Остаточное содержание Nb*10^-3', xlab='Остаточное содержание Al*10^-3', type="p");
dev.off();
