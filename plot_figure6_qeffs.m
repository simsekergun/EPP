clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%
FS = 18;
set(0,'defaultlinelinewidth',3)
set(0,'DefaultAxesFontSize',FS)
set(0,'DefaultTextFontSize',FS)

load Qeff_vs_Pinc_475_550_625
xi = xi*25;   % convert uw to mW/um^2
textx = -14;
texty = 0.205;

textx2 = -12;
texty2 = 0.185;


fig =figure('position',[200, 200, 1600, 400]); clf;
subplot(131);
plot(xi,y1, '--', xi,z1, ':', xi,t1);
ylim([0 0.2]);
xlim([0 50]);
grid on;
xlabel('{\it{P}}_{inc} (mW/\mum^2)');
ylabel('{\it{Q}}_{eff}');
legend('No NPs', 'NPs on top','NPs underneath')
text(32, 0.11, '\lambda = 475 nm','FontSize',FS+4,'color',[0.8 0.5 0.8])
text(textx, texty, '(a)','FontSize',FS+6)

subplot(132);
plot(xi,y2, '--', xi,z2, ':', xi,t2);
ylim([0 0.2]);
xlim([0 50]);
grid on;
xlabel('{\it{P}}_{inc} (mW/\mum^2)');
ylabel('{\it{Q}}_{eff}');
legend('No NPs', 'NPs on top','NPs underneath')
text(32, 0.11, '\lambda = 550 nm','FontSize',FS+4,'color',[0.8 0.5 0.8])
text(textx, texty, '(b)','FontSize',FS+6)

subplot(133);
plot(xi,y3, '--', xi,z3, ':', xi,t3);
ylim([0 0.2]);
xlim([0 50]);
grid on;
text(32, 0.11, '\lambda = 625 nm','FontSize',FS+4,'color',[0.8 0.5 0.8]);
xlabel('{\it{P}}_{inc} (mW/\mum^2)');
ylabel('{\it{Q}}_{eff}');
legend('No NPs', 'NPs on top','NPs underneath')
text(textx, texty, '(c)','FontSize',FS+6)
