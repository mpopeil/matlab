% part a
speed=[10:5:100];
%fuel_econ=[6.72162,11.2936,11.9316,9.19846,5.76624,3.25126,1.70758,0.824562,0.358057,0.136856]; %km/l
fuel_mpg=[7.41582341980714;10.9402428225005;14.2973959636872;17.4378898405375;20.3037747608902;22.8330150748335;24.9648333493157;26.6455907993192;27.8346556062704;28.5095568025486;28.6696754018818;28.3378247451934;27.5593278013155;26.3985785306198;24.9335038991237;23.2487223013012;21.4284236643774;19.5500109207528;17.6793352472128];
figure;
plot(speed,fuel_mpg,'LineWidth',2)
xlabel('speed (mph)');   ylabel('Fuel Economy (mpg)');
set(gca,'fontsize',12)
title(strcat('Average Fuel Economy for Constant Vehicle Speeds'));
% now adding a luggage rack 80kg + added drag
%https://www.osti.gov/pages/servlets/purl/1257753 p.5
%https://www.researchgate.net/figure/Percentage-increase-of-drag-coefficient-CD-and-projected-frontal-area-A-over-the_tbl2_257726255
% Cd*1.204, A*1.012, m+80
%15% greater resistance from snow tires
%https://openroadautogroup.com/blog/5-reasons-why-treating-your-winter-tires-all-seasons-dangerous#:~:text=Due%20to%20the%20softer%20and,when%20the%20tire%20is%20rolling.&text=The%20level%20of%20wear%20on,than%20that%20of%20summer%20tires.
%fuel_econ_rack=[6.67832,10.9177,10.8658,7.72714,4.49349,2.36691,1.14636,0.498528,0.18951,0.0613997];
fuel_mpg_rack=[7.40426080883640;10.9078192572813;14.2243723391795;17.2946329144303;20.0501882296197;22.4196914192377;24.3361481688264;25.7446772023050;26.6098162115432;26.9212728589147;26.6970676471628;25.9833253559959;24.8505171743569;23.3866273593789;21.6883447691824;19.8517783899314;17.9642397748425;16.0983058757274;14.3087773835135];
% figure;
% plot(speed,fuel_mpg_rack,'LineWidth',2)
% xlabel('speed (mph)');   ylabel('Fuel Economy (mpg)');
% set(gca,'fontsize',12)
% title(strcat('Average Fuel Economy With Roof Rack'));
%now adding snow tires and roof rack
%fuel_econ_racksnow=[6.61869,10.7336,10.6237,7.54447,4.39621,2.32113,1.1256,0.489689,0.186121,0.0602713];
fuel_mpg_racksnow=[7.37421773019179;10.8418041712145;14.1103549642031;17.1227476595618;19.8134165296531;22.1145184728886;23.9630711602406;25.3084413627059;26.1192778929083;26.3888376588020;26.1377218051695;25.4133573490132;24.2860949019226;22.8424348798522;21.1764774979532;19.3810451397178;17.5399361810952;15.7224295959566;13.9805769344713];
% figure;
% plot(speed,fuel_mpg_rack,'-r',speed,fuel_mpg_racksnow,'-b','LineWidth',2)
% xlabel('speed (mph)');   ylabel('Fuel Economy (mpg)');
% set(gca,'fontsize',12)
% title(strcat('Average Fuel Economy With Roof Rack and Snow Tires'));
%just snow tires
%fuel_econ_snow=[6.66419,11.1101,11.6698,8.97638,5.63433,3.18463,1.67533,0.809565,0.351579,0.13434];
fuel_mpg_snow=[7.38707168320876;10.8769508445654;14.1877814418575;17.2719837389699;20.0739808241561;22.5346742382461;24.5967058165591;26.2101635075638;27.3381914157444;27.9618269557345;28.0833579747130;27.7276038140712;26.9407814235741;25.7869863944056;24.3427262666030;22.6902935671991;20.9109665844920;19.0790194054816;17.2573086378612];
figure;
plot(speed,fuel_mpg,'-p',speed,fuel_mpg_rack,'-r',speed,fuel_mpg_racksnow,'-b',speed,fuel_mpg_snow,'-g','LineWidth',2)
xlabel('speed (mph)');   ylabel('Fuel Economy (mpg)');
set(gca,'fontsize',12)
title(strcat('Average Fuel Economy With Roof Rack and Snow Tires'));
legend({'standard','rack','rack and tires', 'tires'},'Location','northwest')
%% part b


