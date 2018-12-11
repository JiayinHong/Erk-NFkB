%% plot of dox-OspF
tspan = [0 2880];
y0 = [1, 1];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('dox_OspF');
[tque,yque]=ode23tb(@(t,y) dox_OspF(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'}); 
legend({'None','dox-OspF'},'Location','best')
ylim([0 12])

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','dox-OspF'},'Location','best')
linkaxes

%% plot of dox-NleE
tspan = [0 2880];
y0 = [3, 0.5];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

param = setParameter('dox_NleE');
[tque,yque]=ode23tb(@(t,y) dox_NleE(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'}); 
legend({'None','dox-NleE'},'Location','best')

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','dox-NleE'},'Location','best')
linkaxes

%% plot of NFB-OspF
tspan = [0 2880];
y0 = [3, 0.5];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

y0 = [3, 0.5, 0];
param = setParameter('NFB_OspF');
[tque,yque]=ode23tb(@(t,y) NFB_OspF(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'}); 
legend({'None','NFB-OspF'},'Location','best')

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','NFB-OspF'},'Location','best')
linkaxes

%% plot of NFB-NleE
tspan = [0 2880];
y0 = [3, 0.5];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

y0 = [3, 0.5, 0];
param = setParameter('NFB_NleE');
[tque,yque]=ode23tb(@(t,y) NFB_NleE(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'}); 
legend({'None','NFB-NleE'},'Location','best')

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','NFB-NleE'},'Location','best')
linkaxes

%% plot of CI-OspF
tspan = [0 2880];
y0 = [3, 0.5];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

y0 = [3, 0.5, 0];
param = setParameter('CI_OspF');
[tque,yque]=ode23tb(@(t,y) CI_OspF(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'}); 
legend({'None','CI-OspF'},'Location','best')

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','CI-OspF'},'Location','best')
linkaxes

%% plot of CI-NleE
tspan = [0 2880];
y0 = [3, 0.5];
param = setParameter('None_ctrl');
[tref,yref]=ode23tb(@(t,y) None_ctrl(t,y,param),tspan,y0);

y0 = [3, 0.5, 0];
param = setParameter('CI_NleE');
[tque,yque]=ode23tb(@(t,y) CI_NleE(t,y,param),tspan,y0);


figure; set(gcf,'Position',[360 111 311 587])
subplot(2,1,1)
plot(tref,yref(:,1),'--','LineWidth',2); title('ErK')
hold on
plot(tque,yque(:,1),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'}); 
legend({'None','CI-NleE'},'Location','best')

subplot(2,1,2)
plot(tref,yref(:,2),'--','LineWidth',2); title('NFkB')
hold on
plot(tque,yque(:,2),'LineWidth',2); set(gca,'FontSize',15)
xlim([0 2880]); xticks(0:720:2880); xlabel('time (h)')
xticklabels({'0','12','24','36','48'});
legend({'None','CI-NleE'},'Location','best')
linkaxes