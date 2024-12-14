% October 12, 2024
% This routine plots maximum temperatures as per different powers
clear
%%%%%%%%%%%%%%%%%%%%%%%%%%
set(0,'defaultlinelinewidth',3)
FS = 20;
set(0,'DefaultAxesFontSize',FS)
set(0,'DefaultTextFontSize',FS)

load results_ours_vs_yolan_b; %  Pinc deltaT yolan
load results_ours_vs_yolan_a; % Vd_s Id_s yolen_current

fig = figure('Units','Inches','Position',[2 2.5 18 6]);
subplot(121); 
plot(Vd_s, Id_s,yolen_current(:,1),yolen_current(:,2),'o','MarkerSize',10,'MarkerEdgeColor',[1.0 0.41 0.16])
xlim([0 16])
text(-4,260,'(a)','FontSize',FS+4)
text(17,260,'(b)','FontSize',FS+4)
grid on;
xlabel('{\it{V}}_d (V)');
ylabel('{\it{I}}_d (\muA)')
legend('This work','Yolan {\it{et al.}}','Location','SouthEast')

subplot(122); 
plot(Pinc,deltaT,yolan(:,1),yolan(:,2),'o','MarkerSize',10,'MarkerEdgeColor',[1.0 0.41 0.16])
grid on;
legend('This work','Yolan {\it{et al.}}','Location','SouthEast')
xlabel('{\it{P}} (mW/\mum^2)');
ylabel('\Delta{\it{T}} (\circC)')
xlabel('\it{P}\rm_{inc} (mW/\mum^2)');fig.PaperUnits = 'inches'; % Set figure dimension units
