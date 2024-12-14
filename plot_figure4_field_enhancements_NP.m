clear;
%% settings
FS = 18;
set(0,'defaultlinelinewidth',2)
set(0,'DefaultAxesFontSize',FS)
set(0,'DefaultTextFontSize',FS)

%% load data
load Field_Enhancements 

%%  plot
counter = 0;
figure('position',[100 100 1000 600]); clf; 
for i = 0:8
    if i==1 || i==4 || i==7 % 475 550 625 nm
    subplot(2,2,counter+1); 
    plot(x,E_nps_on_top(:,i+1), x,E_nps_under(:,i+1),'r--'); 
    xlim([-100 100])
    ylims = ylim;
    text(-28,ylims(1)+(ylims(2)-ylims(1))/2,['\lambda = ' int2str(lambdas(1+i)) ' nm'],'color',[0.8 0.5 0.8]);
    grid on;
    legend('NPs on top','NPs underneath','Location','North')
    xlabel('y (\mum)');
    ylabel('|E_y| Enhancement Ratio')
    ylimits = ylim;
    max_ylim = ylimits(2);
    ylim(ylimits)
    rectangle('Position',[-100,0,35,max_ylim],'FaceColor',[0.5,0,0,0.1],'FaceAlpha',0.1,'EdgeColor','None'); % Half pillar
    rectangle('Position',[100-35,0,35,max_ylim],'FaceColor',[0.5,0,0,0.1],'FaceAlpha',0.1,'EdgeColor','None'); % Half pillar
    counter = counter+1;
    end
end

subplot(224);
plot(xi, Ei1, xi, Ei2,'--')
xlabel('\lambda (nm)');
legend('NPs on top','NPs underneath')
ylabel('Avg. |E_y| Enhancement');
grid on;
text(130,3.5, '(a)','FontSize',FS+4)
text(400,3.5,'(b)','FontSize',FS+4)
text(130,2.1,'(c)','FontSize',FS+4)
text(400,2.1,'(d)','FontSize',FS+4)
