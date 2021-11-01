source('steel.R');
library('latex2exp');
library('lattice');
#QT
jpeg('KCU_QT_Ca_S.jpeg');
 levelplot(KCU_QT$KCU~KCU_QT$S.0.001*KCU_QT$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\S\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_QT_Ca_P.jpeg');

 levelplot(KCU_QT$KCU~KCU_QT$P.0.001*KCU_QT$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\P\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_QT_Ca_Cu.jpeg');
levelplot(KCU_QT$KCU~KCU_QT$Cu.0.01*KCU_QT$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_QT$KCU~KCU_QT$Cu.0.01*KCU_QT$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Cu\\cdot\\10^{-2}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_QT_Ca_AL.jpeg');
levelplot(KCU_QT$KCU~KCU_QT$AL_R.0.001*KCU_QT$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_QT$KCU~KCU_QT$AL_R.0.001*KCU_QT$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Al\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

#QT.после.мех..старения
jpeg('KCU_QT.после.мех..старения_Ca_S.jpeg');
 levelplot(KCU_QT.после.мех..старения$KCU~KCU_QT.после.мех..старения$S.0.001*KCU_QT.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\S\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_QT.после.мех..старения_Ca_P.jpeg');

 levelplot(KCU_QT.после.мех..старения$KCU~KCU_QT.после.мех..старения$P.0.001*KCU_QT.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\P\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_QT.после.мех..старения_Ca_Cu.jpeg');
levelplot(KCU_QT.после.мех..старения$KCU~KCU_QT.после.мех..старения$Cu.0.01*KCU_QT.после.мех..старения$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_QT.после.мех..старения$KCU~KCU_QT.после.мех..старения$Cu.0.01*KCU_QT.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Cu\\cdot\\10^{-2}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_QT.после.мех..старения_Ca_AL.jpeg');
levelplot(KCU_QT.после.мех..старения$KCU~KCU_QT.после.мех..старения$AL_R.0.001*KCU_QT.после.мех..старения$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_QT.после.мех..старения$KCU~KCU_QT.после.мех..старения$AL_R.0.001*KCU_QT.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Al\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();


#Norm
jpeg('KCU_Norm_Ca_S.jpeg');
 levelplot(KCU_Norm$KCU~KCU_Norm$S.0.001*KCU_Norm$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\S\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_Norm_Ca_P.jpeg');

 levelplot(KCU_Norm$KCU~KCU_Norm$P.0.001*KCU_Norm$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\P\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_Norm_Ca_Cu.jpeg');
levelplot(KCU_Norm$KCU~KCU_Norm$Cu.0.01*KCU_Norm$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_Norm$KCU~KCU_Norm$Cu.0.01*KCU_Norm$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Cu\\cdot\\10^{-2}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_Norm_Ca_AL.jpeg');
levelplot(KCU_Norm$KCU~KCU_Norm$AL_R.0.001*KCU_Norm$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_Norm$KCU~KCU_Norm$AL_R.0.001*KCU_Norm$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Al\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();


#Norm.после.мех..старения
jpeg('KCU_Norm.после.мех..старения_Ca_S.jpeg');
 levelplot(KCU_Norm.после.мех..старения$KCU~KCU_Norm.после.мех..старения$S.0.001*KCU_Norm.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\S\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_Norm.после.мех..старения_Ca_P.jpeg');

 levelplot(KCU_Norm.после.мех..старения$KCU~KCU_Norm.после.мех..старения$P.0.001*KCU_Norm.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),xlab=TeX("$\\P\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_Norm.после.мех..старения_Ca_Cu.jpeg');
levelplot(KCU_Norm.после.мех..старения$KCU~KCU_Norm.после.мех..старения$Cu.0.01*KCU_Norm.после.мех..старения$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_Norm.после.мех..старения$KCU~KCU_Norm.после.мех..старения$Cu.0.01*KCU_Norm.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Cu\\cdot\\10^{-2}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();

jpeg('KCU_Norm.после.мех..старения_Ca_AL.jpeg');
levelplot(KCU_Norm.после.мех..старения$KCU~KCU_Norm.после.мех..старения$AL_R.0.001*KCU_Norm.после.мех..старения$Ca.0.0001,col.regions=rainbow(30));
 levelplot(KCU_Norm.после.мех..старения$KCU~KCU_Norm.после.мех..старения$AL_R.0.001*KCU_Norm.после.мех..старения$Ca.0.0001,
 ylab=TeX("$\\Ca\\cdot\\10^{-4}%$"),
 xlab=TeX("$\\Al\\cdot\\10^{-3}%$"),
 main=TeX("Ударная вязкость, KCU \\frac{Дж}{см^2}"),col.regions=rainbow(30));
dev.off();


