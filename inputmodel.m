%         ========   PLoet seismograms ========
uz=load('deplacz');
nb_samp=2048;depth_rec=1320:30:2650;
uz_resh=reshape(uz(:,2),[nb_samp 45]);
figure,
wiggle((1:1024)*(1/1024)',depth_rec',uz_resh)
set(gca,'LineWidth',2,'XTick',1400:200:2600,'XTickLabel',1400:200:2600,'YTick',0:0.2:1,'YTickLabel',{(0:0.2:1)},'TickDir','out','TickLength',[0.01 0.01],'XMinorTick','on','YMinorTick','on','Fontsize',25);box on;
 xlabel('depth [m]','Fontsize',35);ylabel('Time [s]','Fontsize',35);axis([1250 2650 0 1]);