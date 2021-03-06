%% HOCKEY DATA ANALYSIS - ROLLER BLADING ANALYSIS
clear
%DATA

%ROLLER BLADING
drakeRB = readtable('Mar9_D_back.xlsx');
drakeRL = readtable('Mar9_D_laps.xlsx');
drakeRC = readtable('Mar9_D_cross.xlsx');
drakeRS = readtable('Mar9_D_stop.xlsx');
%SHOOTING
drakeRBS = readtable('Mar16_D_BlueSlap.xlsx');
drakeRBW = readtable('Mar16_D_BlueWrist.xlsx');
drakeRHS = readtable('Mar16_D_HashSlap.xlsx');
drakeRHW = readtable('Mar16_D_HashWrist.xlsx');

%ROLLER BLADING
connorRB = readtable('Mar16_C_back.xlsx');
connorRL = readtable('Mar16_C_laps.xlsx');
connorRC = readtable('Mar16_C_cross.xlsx');
connorRS = readtable('Mar16_C_stop.xlsx');
%SHOOTING
connorRBS = readtable('Mar16_C_BlueSlap.xlsx');
connorRBW = readtable('Mar16_C_BlueWrist.xlsx');
connorRHS = readtable('Mar16_C_HashSlap.xlsx');
connorRHW = readtable('Mar16_C_HashWrsit.xlsx');

%(drill_emg_person)

%% PARTICIPANT 1 DATA

%skating
rx1 = drakeRC{:, 2}; %time var for drake cross overs
rx2 = drakeRS{:, 2}; %time var for drake stopping
rx3 = drakeRL{:, 2}; %time var for drake laps
rx4 = drakeRB{:, 2}; %time var for drake backwards

%DRILL 1 DATA - crossover
% x1
rd1_emg1_1 = drakeRC{:, 8}; %emg 1 Gastrocnemius (Right Leg)
rd1_emg2_1 = drakeRC{:, 17}; %emg 2 Bicep Femoris (Right Leg)
rd1_emg3_1 = drakeRC{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
rd1_emg4_1 = drakeRC{:, 11}; %emg 4 Gastrocnemius (Left Leg)
rd1_emg5_1 = drakeRC{:, 12}; %emg 5 Bicep Femoris (Left Leg)
rd1_emg6_1 = drakeRC{:, 13}; %emg 6 Vastus Lateralis (Left Leg)
rd1_pr_1 = drakeRC{:, 14}; %right pressure plate
rd1_pl_1 = drakeRC{:, 15}; %left pressure plate

%DRILL 2 DATA stopping
% x2
rd2_emg1_1 = drakeRS{:, 8};
rd2_emg2_1 = drakeRS{:, 17};
rd2_emg3_1 = drakeRS{:, 10};
rd2_emg4_1 = drakeRS{:, 11};
rd2_emg5_1 = drakeRS{:, 12};
rd2_emg6_1 = drakeRS{:, 13};
rd2_pr_1 = drakeRS{:, 14}; 
rd2_pl_1 = drakeRS{:, 15}; 


%DRILL 3 DATA laps
% x3
rd3_emg1_1 = drakeRL{:, 8};
rd3_emg2_1 = drakeRL{:, 17};
rd3_emg3_1 = drakeRL{:, 10};
rd3_emg4_1 = drakeRL{:, 11};
rd3_emg5_1 = drakeRL{:, 12};
rd3_emg6_1 = drakeRL{:, 13};
rd3_pr_1 = drakeRL{:, 14}; 
rd3_pl_1 = drakeRL{:, 15};

%DRILL 4 DATA backwards
% x4
rd4_emg1_1 = drakeRB{:, 8};
rd4_emg2_1 = drakeRB{:, 17};
rd4_emg3_1 = drakeRB{:, 10};
rd4_emg4_1 = drakeRB{:, 11};
rd4_emg5_1 = drakeRB{:, 12};
rd4_emg6_1 = drakeRB{:, 13};
rd4_pr_1 = drakeRB{:, 14}; 
rd4_pl_1 = drakeRB{:, 15};

%shooting
rx9 = drakeRHS{:, 2}; %time var for drake hashline slapshot
rx10 = drakeRHW{:, 2}; %time var for drake hashline wristshot
rx11 = drakeRBS{:, 2}; %time var for drake blueline slapshot
rx12 = drakeRBW{:, 2}; %time var for drake blueline wristshot

%DRILL 1 DATA - hashline slapshot
% x9
rd5_emg1_1 = drakeRHS{:, 8}; %emg 1 Brachioradialis (Right Arm)
rd5_emg2_1 = drakeRHS{:, 9}; %emg 2 Anterior Deltoid (Right Arm)
rd5_emg3_1 = drakeRHS{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
rd5_emg4_1 = drakeRHS{:, 11}; %emg 4 Brachioradialis (Left Arm)
rd5_emg5_1 = drakeRHS{:, 12}; %emg 5 Anterior Deltoid (Left Arm)
rd5_emg6_1 = drakeRHS{:, 13}; %emg 6 Latissimus Dorsi (Left Back)
rd5_pr_1 = drakeRHS{:, 14}; %right pressure plate
rd5_pl_1 = drakeRHS{:, 15}; %left pressure plate


%DRILL 2 DATA - blueline slapshot
% x10
rd6_emg1_1 = drakeRHW{:, 8};
rd6_emg2_1 = drakeRHW{:, 9};
rd6_emg3_1 = drakeRHW{:, 10};
rd6_emg4_1 = drakeRHW{:, 11};
rd6_emg5_1 = drakeRHW{:, 12};
rd6_emg6_1 = drakeRHW{:, 13};
rd6_pr_1 = drakeRHW{:, 14}; 
rd6_pl_1 = drakeRHW{:, 15}; 


%DRILL 3 DATA - hashline wrist shot
% x11
rd7_emg1_1 = drakeRBS{:, 8};
rd7_emg2_1 = drakeRBS{:, 9};
rd7_emg3_1 = drakeRBS{:, 10};
rd7_emg4_1 = drakeRBS{:, 11};
rd7_emg5_1 = drakeRBS{:, 12};
rd7_emg6_1 = drakeRBS{:, 13};
rd7_pr_1 = drakeRBS{:, 14}; 
rd7_pl_1 = drakeRBS{:, 15};

%DRILL 4 DATA - blueline wrist shot
% x12
rd8_emg1_1 = drakeRBW{:, 8};
rd8_emg2_1 = drakeRBW{:, 9};
rd8_emg3_1 = drakeRBW{:, 10};
rd8_emg4_1 = drakeRBW{:, 11};
rd8_emg5_1 = drakeRBW{:, 12};
rd8_emg6_1 = drakeRBW{:, 13};
rd8_pr_1 = drakeRBW{:, 14}; 
rd8_pl_1 = drakeRBW{:, 15};

%% PERSON 2 DATA

%skating
rx5 = connorRC{:, 2}; %time var for drake cross overs
rx6 = connorRS{:, 2}; %time var for drake stopping
rx7 = connorRL{:, 2}; %time var for drake laps
rx8 = connorRB{:, 2}; %time var for drake backwards



%DRILL 1 DATA 
% x5 
rd1_emg1_2 = connorRC{:, 8};
rd1_emg2_2 = connorRC{:, 9};
rd1_emg3_2 = connorRC{:, 10};
rd1_emg4_2 = connorRC{:, 11};
rd1_emg5_2 = connorRC{:, 12};
rd1_emg6_2 = connorRC{:, 13};
rd1_pr_2 = connorRC{:, 14}; 
rd1_pl_2 = connorRC{:, 15};
% 
%DRILL 2 DATA
% x6 
rd2_emg1_2 = connorRS{:, 8};
rd2_emg2_2 = connorRS{:, 9};
rd2_emg3_2 = connorRS{:, 10};
rd2_emg4_2 = connorRS{:, 11};
rd2_emg5_2 = connorRS{:, 12};
rd2_emg6_2 = connorRS{:, 13};
rd2_pr_2 = connorRS{:, 14}; 
rd2_pl_2 = connorRS{:, 15};

%DRILL 3 DATA 
% x7
rd3_emg1_2 = connorRL{:, 8};
rd3_emg2_2 = connorRL{:, 9};
rd3_emg3_2 = connorRL{:, 10};
rd3_emg4_2 = connorRL{:, 11};
rd3_emg5_2 = connorRL{:, 12};
rd3_emg6_2 = connorRL{:, 13};
rd3_pr_2 = connorRL{:, 14}; 
rd3_pl_2 = connorRL{:, 15};

%DRILL 4 DATA 
% x8
rd4_emg1_2 = connorRB{:, 8};
rd4_emg2_2 = connorRB{:, 9};
rd4_emg3_2 = connorRB{:, 10};
rd4_emg4_2 = connorRB{:, 11};
rd4_emg5_2 = connorRB{:, 12};
rd4_emg6_2 = connorRB{:, 13};
rd4_pr_2 = connorRB{:, 14}; 
rd4_pl_2 = connorRB{:, 15};

%shooting
rx13 = connorRHS{:, 2}; %time var for drake hashline slapshot
rx14 = connorRHW{:, 2}; %time var for drake hashline wristshot
rx15 = connorRBS{:, 2}; %time var for drake blueline slapshot
rx16 = connorRBW{:, 2}; %time var for drake blueline wristshot


%DRILL 5 DATA - hashline slapshot 

% ********************
%
%
% ** DATA INCORRECT **
%
% ** SAME AS DRAKE **
%
%
% ********************

% x9
rd5_emg1_2 = connorRHS{:, 8}; %emg 1 Brachioradialis (Right Arm) 
rd5_emg2_2 = connorRHS{:, 9}; %emg 2 Anterior Deltoid (Right Arm)
rd5_emg3_2 = connorRHS{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
rd5_emg4_2 = connorRHS{:, 11}; %emg 4 Brachioradialis (Left Arm)
rd5_emg5_2 = connorRHS{:, 12}; %emg 5 Anterior Deltoid (Left Arm)
rd5_emg6_2 = connorRHS{:, 13}; %emg 6 Latissimus Dorsi (Left Back)
rd5_pr_2 = connorRHS{:, 14}; %right pressure plate
rd5_pl_2 = connorRHS{:, 15}; %left pressure plate


%DRILL 6 DATA - hashline wrist shot
% x10
rd6_emg1_2 = connorRHW{:, 8};
rd6_emg2_2 = connorRHW{:, 9};
rd6_emg3_2 = connorRHW{:, 10};
rd6_emg4_2 = connorRHW{:, 11};
rd6_emg5_2 = connorRHW{:, 12};
rd6_emg6_2 = connorRHW{:, 13};
rd6_pr_2 = connorRHW{:, 14}; 
rd6_pl_2 = connorRHW{:, 15}; 


%DRILL 7 DATA - blueline slap shot
% x11
rd7_emg1_2 = connorRBS{:, 8};
rd7_emg2_2 = connorRBS{:, 9};
rd7_emg3_2 = connorRBS{:, 10};
rd7_emg4_2 = connorRBS{:, 11};
rd7_emg5_2 = connorRBS{:, 12};
rd7_emg6_2 = connorRBS{:, 13};
rd7_pr_2 = connorRBS{:, 14}; 
rd7_pl_2 = connorRBS{:, 15};

%DRILL 8 DATA - blueline wrist shot
% x12
rd8_emg1_2 = connorRBW{:, 8};
rd8_emg2_2 = connorRBW{:, 9};
rd8_emg3_2 = connorRBW{:, 10};
rd8_emg4_2 = connorRBW{:, 11};
rd8_emg5_2 = connorRBW{:, 12};
rd8_emg6_2 = connorRBW{:, 13};
rd8_pr_2 = connorRBW{:, 14}; 
rd8_pl_2 = connorRBW{:, 15};

%% AVERAGED DATA

%% AVERAGING??

%ROLLER BLADING
offC = readtable('OFF_Cross.xlsx');
offS = readtable('OFF_Stop.xlsx');
offL = readtable('OFF_Laps.xlsx');
offB = readtable('OFF_Back.xlsx');
offHW = readtable('OFF_HW.xlsx');
offHS = readtable('OFF_HS.xlsx');
offBW = readtable('OFF_BW.xlsx');
offBS = readtable('OFF_BS.xlsx');

a1 = offC{:,20};
a2 = offS{:,20};
a3 = offL{:,20};
a4 = offB{:,20};
a5 = offHS{:,21};
a6 = offHW{:,21};
a7 = offBS{:,20};
a8 = offBW{:,20};


%DRILL 1 DATA 
% a1
d1_emg1_a = offC{:, 21};
d1_emg2_a = offC{:, 22};
d1_emg3_a = offC{:, 23};
d1_emg4_a = offC{:, 24};
d1_emg5_a = offC{:, 25};
d1_emg6_a = offC{:, 26};
d1_pr_a = offC{:, 27}; 
d1_pl_a = offC{:, 28};
% 
%DRILL 2 DATA
% a2
d2_emg1_a = offS{:, 21};
d2_emg2_a = offS{:, 22};
d2_emg3_a = offS{:, 23};
d2_emg4_a = offS{:, 24};
d2_emg5_a = offS{:, 25};
d2_emg6_a = offS{:, 26};
d2_pr_a = offS{:, 27}; 
d2_pl_a = offS{:, 28};

%DRILL 3 DATA 
% a3
d3_emg1_a = offL{:, 21};
d3_emg2_a = offL{:, 22};
d3_emg3_a = offL{:, 23};
d3_emg4_a = offL{:, 24};
d3_emg5_a = offL{:, 25};
d3_emg6_a = offL{:, 26};
d3_pr_a = offL{:, 27}; 
d3_pl_a = offL{:, 28};

%DRILL 4 DATA 
% a4
d4_emg1_a = offB{:, 21};
d4_emg2_a = offB{:, 22};
d4_emg3_a = offB{:, 23};
d4_emg4_a = offB{:, 24};
d4_emg5_a = offB{:, 25};
d4_emg6_a = offB{:, 26};
d4_pr_a = offB{:, 27}; 
d4_pl_a = offB{:, 28};

% a5
d5_emg1_a = offHS{:, 22}; %emg 1 Brachioradialis (Right Arm) 
d5_emg2_a = offHS{:, 23}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_a = offHS{:, 24}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_a = offHS{:, 25}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_a = offHS{:, 26}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_a = offHS{:, 27}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_a = offHS{:, 28}; %right pressure plate
d5_pl_a = offHS{:, 29}; %left pressure plate


%DRILL 6 DATA - blueline slapshot
% a6
d6_emg1_a = offHW{:, 22};
d6_emg2_a = offHW{:, 23};
d6_emg3_a = offHW{:, 24};
d6_emg4_a = offHW{:, 25};
d6_emg5_a = offHW{:, 26};
d6_emg6_a = offHW{:, 27};
d6_pr_a = offHW{:, 28}; 
d6_pl_a = offHW{:, 29}; 


%DRILL 7 DATA - hashline wrist shot
% a7
d7_emg1_a = offBS{:, 21};
d7_emg2_a = offBS{:, 22};
d7_emg3_a = offBS{:, 23};
d7_emg4_a = offBS{:, 24};
d7_emg5_a = offBS{:, 25};
d7_emg6_a = offBS{:, 26};
d7_pr_a = offBS{:, 27}; 
d7_pl_a = offBS{:, 28};

%DRILL 8 DATA - blueline wrist shot
% a8
d8_emg1_a = offBW{:, 21};
d8_emg2_a = offBW{:, 22};
d8_emg3_a = offBW{:, 23};
d8_emg4_a = offBW{:, 24};
d8_emg5_a = offBW{:, 25};
d8_emg6_a = offBW{:, 26};
d8_pr_a = offBW{:, 27}; 
d8_pl_a = offBW{:, 28};


%% EMG SENSOR ANALYSIS

%ON-ICE

%% DRILL 1 - CROSS-OVERS - All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE 
% EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANTS

% figure(1)
% subplot(4,2,1)
% plot(rx1, rd1_emg1_1)
% hold on
% plot(rx5, rd1_emg1_2)
% plot(a1, d1_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx1, rd1_emg2_1)
% hold on
% plot(rx5, rd1_emg2_2)
% plot(a1, d1_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx1, rd1_emg3_1)
% hold on
% plot(rx5, rd1_emg3_2)
% plot(a1, d1_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx1, rd1_emg4_1)
% hold on
% plot(rx5, rd1_emg4_2)
% plot(a1, d1_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx1, rd1_emg5_1)
% hold on
% plot(rx5, rd1_emg5_2)
% plot(a1, d1_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx1, rd1_emg6_1)
% hold on
% plot(rx5, rd1_emg6_2)
% plot(a1, d1_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx1, rd1_pr_1)
% hold on
% plot(rx5, rd1_pr_2)
% plot(a1, d1_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx1, rd1_pl_1)
% hold on
% plot(rx5, rd1_pl_2)
% plot(a1, d1_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 1 - Cross-Over Drill')
% 
% % 
% %% DRILL 2 - STOPPING - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% figure(2)
% subplot(4,2,1)
% plot(rx2, rd2_emg1_1)
% hold on
% plot(rx6, rd2_emg1_2)
% plot(a2, d2_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx2, rd2_emg2_1)
% hold on
% plot(rx6, rd2_emg2_2)
% plot(a2, d2_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx2, rd2_emg3_1)
% hold on
% plot(rx6, rd2_emg3_2)
% plot(a2, d2_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx2, rd2_emg4_1)
% hold on
% plot(rx6, rd2_emg4_2)
% plot(a2, d2_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx2, rd2_emg5_1)
% hold on
% plot(rx6, rd2_emg5_2)
% plot(a2, d2_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx2, rd2_emg6_1)
% hold on
% plot(rx6, rd2_emg6_2)
% plot(a2, d2_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx2, rd2_pr_1)
% hold on
% plot(rx6, rd2_pr_2)
% plot(a2, d2_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx2, rd2_pl_1)
% hold on
% plot(rx6, rd2_pl_2)
% plot(a2, d2_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 2 - Stopping Drill')
% 
% 
% %% DRILL 3 - LAPS - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(3)
% subplot(4,2,1)
% plot(rx3, rd3_emg1_1)
% hold on
% plot(rx7, rd3_emg1_2)
% plot(a3, d3_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx3, rd3_emg2_1)
% hold on
% plot(rx7, rd3_emg2_2)
% plot(a3, d3_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx3, rd3_emg3_1)
% hold on
% plot(rx7, rd3_emg3_2)
% plot(a3, d3_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx3, rd3_emg4_1)
% hold on
% plot(rx7, rd3_emg4_2)
% plot(a3, d3_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx3, rd3_emg5_1)
% hold on
% plot(rx7, rd3_emg5_2)
% plot(a3, d3_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx3, rd3_emg6_1)
% hold on
% plot(rx7, rd3_emg6_2)
% plot(a3, d3_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx3, rd3_pr_1)
% hold on
% plot(rx7, rd3_pr_2)
% plot(a3, d3_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx3, rd3_pl_1)
% hold on
% plot(rx7, rd3_pl_2)
% plot(a3, d3_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 3 - Laps Drill')
% 
% %% DRILL 4 - BACKWARDS LAPS - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(4)
% subplot(4,2,1)
% plot(rx4, rd4_emg1_1)
% hold on
% plot(rx8, rd4_emg1_2)
% plot(a4, d4_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx4, rd4_emg2_1)
% hold on
% plot(rx8, rd4_emg2_2)
% plot(a4, d4_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Bicep Femoris (Rightt Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx4, rd4_emg3_1)
% hold on
% plot(rx8, rd4_emg3_2)
% plot(a4, d4_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx4, rd4_emg4_1)
% hold on
% plot(rx8, rd4_emg4_2)
% plot(a4, d4_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx4, rd4_emg5_1)
% hold on
% plot(rx8, rd4_emg5_2)
% plot(a4, d4_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Bicep Femoris (Leftt Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx4, rd4_emg6_1)
% hold on
% plot(rx8, rd4_emg6_2)
% plot(a4, d4_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx4, rd4_pr_1)
% hold on
% plot(rx8, rd4_pr_2)
% plot(a4, d4_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx4, rd4_pl_1)
% hold on
% plot(rx8, rd4_pl_2)
% plot(a4, d4_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 4 - Backwards Laps Drill')
% 
% 
% %% PLOTS OF ALL DRILLS
% % 5 BAR GRAPH DISPLAYING EACH SHOWING THE PARTICIPANT GROUPS OF MUSCLES --
% % I.E. GRAPH 1 LEFT TO RIGHT:
% %   GT P1 - GT P2 - GT P3 -- BF P1 - BF P2 - BF P3 -- VL P1 - VL P2 - VL P3
% 
% % ******************
% %
% %
% % ** NEED TO REDO **
% %
% %
% % ******************
% 
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(5)
% subplot(4,2,1)
% plot(rx1, rd1_emg1_1)
% hold on
% plot(rx1, rd1_emg2_1)
% plot(rx1, rd1_emg3_1)
% plot(rx1, rd1_emg4_1)
% plot(rx1, rd1_emg5_1)
% plot(rx1, rd1_emg6_1)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx2, rd2_emg1_1)
% hold on
% plot(rx2, rd2_emg2_1)
% plot(rx2, rd2_emg3_1)
% plot(rx2, rd2_emg4_1)
% plot(rx2, rd2_emg5_1)
% plot(rx2, rd2_emg6_1)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx3, rd3_emg1_1)
% hold on
% plot(rx3, rd3_emg2_1)
% plot(rx3, rd3_emg3_1)
% plot(rx3, rd3_emg4_1)
% plot(rx3, rd3_emg5_1)
% plot(rx3, rd3_emg6_1)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx4, rd4_emg1_1)
% hold on
% plot(rx4, rd4_emg2_1)
% plot(rx4, rd4_emg3_1)
% plot(rx4, rd4_emg4_1)
% plot(rx4, rd4_emg5_1)
% plot(rx4, rd4_emg6_1)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Participant 1')
% 
% subplot (4,2,[2 4 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
% l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
% l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
% l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
% l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
% l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.48 0.23 0.20 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off
% 
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(6)
% subplot(4,2,1)
% plot(rx5, rd1_emg1_2)
% hold on
% plot(rx5, rd1_emg2_2)
% plot(rx5, rd1_emg3_2)
% plot(rx5, rd1_emg4_2)
% plot(rx5, rd1_emg5_2)
% plot(rx5, rd1_emg6_2)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx6, rd2_emg1_2)
% hold on
% plot(rx6, rd2_emg2_2)
% plot(rx6, rd2_emg3_2)
% plot(rx6, rd2_emg4_2)
% plot(rx6, rd2_emg5_2)
% plot(rx6, rd2_emg6_2)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx7, rd3_emg1_2)
% hold on
% plot(rx7, rd3_emg2_2)
% plot(rx7, rd3_emg3_2)
% plot(rx7, rd3_emg4_2)
% plot(rx7, rd3_emg5_2)
% plot(rx7, rd3_emg6_2)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx8, rd4_emg1_2)
% hold on
% plot(rx8, rd4_emg2_2)
% plot(rx8, rd4_emg3_2)
% plot(rx8, rd4_emg4_2)
% plot(rx8, rd4_emg5_2)
% plot(rx8, rd4_emg6_2)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Participant 1')
% 
% subplot (4,2,[2 4 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
% l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
% l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
% l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
% l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
% l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.48 0.23 0.20 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off
% 
% %% PARTICIPANT 1 DRILLS
% % 6 FIGURES, EACH DISPLAYING THE DIFFERENT LINES SHOWING THE MUSLCES USED
% % IN EACH DRILL
% 
% % **************************
% %
% %
% % ** VISUALLY UNAPPEALING **
% %
% % ** DIFFICULT TO ANALYZE **
% %
% %
% % **************************
% 
% % figure(6)
% % subplot(3,3,1)
% % plot(x1, d1_emg1_1)
% % hold on
% % plot(x2, d2_emg1_1)
% % plot(x3, d3_emg1_1)
% % plot(x4, d4_emg1_1)
% % hold off
% % title('EMG 1 - Gastrocnemius (Right Leg)')
% % xlabel('time (s)')
% % ylabel('Amplitude (mV)')
% % subplot(3,3,2)
% % plot(x1, d1_emg2_1)
% % hold on
% % plot(x2, d2_emg2_1)
% % plot(x3, d3_emg2_1)
% % plot(x4, d4_emg2_1)
% % hold off
% % title('EMG 2 - Gastrocnemius (Left Leg)')
% % xlabel('time (s)')
% % ylabel('Amplitude (mV)')
% % subplot(3,3,4)
% % plot(x1, d1_emg3_1)
% % hold on
% % plot(x2, d2_emg3_1)
% % plot(x3, d3_emg3_1)
% % plot(x4, d4_emg3_1)
% % hold off
% % title('EMG 3 - Anterior Deltoid (Right Arm)')
% % xlabel('time (s)')
% % ylabel('Amplitude (mV)')
% % subplot(3,3,5)
% % plot(x1, d1_emg4_1)
% % hold on
% % plot(x2, d2_emg4_1)
% % plot(x3, d3_emg4_1)
% % plot(x4, d4_emg4_1)
% % hold off
% % title('EMG 4 - Anterior Deltoid (Left Arm)')
% % xlabel('time (s)')
% % ylabel('Amplitude (mV)')
% % subplot(3,3,7)
% % plot(x1, d1_emg5_1)
% % hold on
% % plot(x2, d2_emg5_1)
% % plot(x3, d3_emg5_1)
% % plot(x4, d4_emg5_1)
% % hold off
% % title('EMG 5 - Bicep Femoris (Right Leg)')
% % xlabel('time (s)')
% % ylabel('Amplitude (mV)')
% % subplot(3,3,8)
% % plot(x1, d1_emg6_1)
% % hold on
% % plot(x2, d2_emg6_1)
% % plot(x3, d3_emg6_1)
% % plot(x4, d4_emg6_1)
% % hold off
% % title('EMG 6 - Bicep Femoris (Left Leg)')
% % xlabel('time (s)')
% % ylabel('Amplitude (mV)')
% % sgtitle('All 4 Drills')
% % 
% % subplot (3, 3,[3 6 9]) % merge remaining subplots and put legend here
% % x = linspace(0, 1, 10)';
% % plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% % l1 = 'Lunges (left leg back)';
% % l2 = 'Lunges (right leg back)';
% % l3 = 'Squats';
% % l4 = 'Pull-Ups';
% % hleg1 = legend (l1, l2, l3, l4);
% % set(hleg1,'position',[0.6 0.25 0.20 0.55], 'linewidth',1.5)
% % set(gca,'fontsize',12)
% % 
% % axis off
% % 
% 
% %% SHOOTING DRILLS
% % 
% % 
% %% DRILL 5 - HASHLINE SLAPSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(7)
% subplot(4,2,1)
% plot(rx9, rd5_emg1_1)
% hold on
% plot(rx13, rd5_emg1_2)
% plot(a5, d5_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx9, rd5_emg2_1)
% hold on
% plot(rx13, rd5_emg2_2)
% plot(a5, d5_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx9, rd5_emg3_1)
% hold on
% plot(rx13, rd5_emg3_2)
% plot(a5, d5_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx9, rd5_emg4_1)
% hold on
% plot(rx13, rd5_emg4_2)
% plot(a5, d5_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Brachioradialis (Leftt Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx9, rd5_emg5_1)
% hold on
% plot(rx13, rd5_emg5_2)
% plot(a5, d5_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx9, rd5_emg6_1)
% hold on
% plot(rx13, rd5_emg6_2)
% plot(a5, d5_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx9, rd5_pr_1)
% hold on
% plot(rx13, rd5_pr_2)
% plot(a5, d5_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx9, rd5_pl_1)
% hold on
% plot(rx13, rd5_pl_2)
% plot(a5, d5_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 5 - Hashline Slapshot Drill (Shooting)')
% 
% 
% %% DRILL 6 - HASHLINE WRISTSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT

figure(8)
subplot(4,2,1)
plot(rx10, rd6_emg1_1)
hold on
plot(rx14, rd6_emg1_2)
plot(a6, d6_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('EMG 1 - Brachioradialis (Right Arm)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,3)
plot(rx10, rd6_emg2_1)
hold on
plot(rx14, rd6_emg2_2)
plot(a6, d6_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('EMG 2 - Anterior Deltoid (Right Arm)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,5)
plot(rx10, rd6_emg3_1)
hold on
plot(rx14, rd6_emg3_2)
plot(a6, d6_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('EMG 3 - Latissimus Dorsi (Right Back)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,2)
plot(rx10, rd6_emg4_1)
hold on
plot(rx14, rd6_emg4_2)
plot(a6, d6_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('EMG 4 - Brachioradialis (Left Arm)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,4)
plot(rx10, rd6_emg5_1)
hold on
plot(rx14, rd6_emg5_2)
plot(a6, d6_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('EMG 5 - Anterior Deltoid (Left Arm)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,6)
plot(rx10, rd6_emg6_1)
hold on
plot(rx14, rd6_emg6_2)
plot(a6, d6_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('EMG 6 - Latissimus Dorsi (Left Back)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,7)
plot(rx10, rd6_pr_1)
hold on
plot(rx14, rd6_pr_2)
plot(a6, d6_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('Right Foot Pressure Plate')
xlim([0 10])
xlabel('time (s)')
ylabel('Force (lb)')
subplot(4,2,8)
plot(rx10, rd6_pl_1)
hold on
plot(rx14, rd6_pl_2)
plot(a6, d6_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
hold off
title('Left Foot Pressure Plate')
xlim([0 10])
xlabel('time (s)')
ylabel('Force (lb)')
sgtitle('Drill 6 - Hashline Wristshot Drill (Shooting)')
% 
% 
% %% DRILL 7 - BLUELINE SLAPSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(9)
% subplot(4,2,1)
% plot(rx11, rd7_emg1_1)
% hold on
% plot(rx15, rd7_emg1_2)
% plot(a7, d7_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx11, rd7_emg2_1)
% hold on
% plot(rx15, rd7_emg2_2)
% plot(a7, d7_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx11, rd7_emg3_1)
% hold on
% plot(rx15, rd7_emg3_2)
% plot(a7, d7_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx11, rd7_emg4_1)
% hold on
% plot(rx15, rd7_emg4_2)
% plot(a7, d7_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx11, rd7_emg5_1)
% hold on
% plot(rx15, rd7_emg5_2)
% plot(a7, d7_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx11, rd7_emg6_1)
% hold on
% plot(rx15, rd7_emg6_2)
% plot(a7, d7_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx11, rd7_pr_1)
% hold on
% plot(rx15, rd7_pr_2)
% plot(a7, d7_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx11, rd7_pl_1)
% hold on
% plot(rx15, rd7_pl_2)
% plot(a7, d7_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 7 - Blueline Slapshot Drill (Shooting)')
% 
% 
% %% DRILL 8 - BLUELINE WRISTSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(10)
% subplot(4,2,1)
% plot(rx12, rd8_emg1_1)
% hold on
% plot(rx16, rd8_emg1_2)
% plot(a8, d8_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx12, rd8_emg2_1)
% hold on
% plot(rx16, rd8_emg2_2)
% plot(a8, d8_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx12, rd8_emg3_1)
% hold on
% plot(rx16, rd8_emg3_2)
% plot(a8, d8_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(rx12, rd8_emg4_1)
% hold on
% plot(rx16, rd8_emg4_2)
% plot(a8, d8_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(rx12, rd8_emg5_1)
% hold on
% plot(rx16, rd8_emg5_2)
% plot(a8, d8_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(rx12, rd8_emg6_1)
% hold on
% plot(rx16, rd8_emg6_2)
% plot(a8, d8_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx12, rd8_pr_1)
% hold on
% plot(rx16, rd8_pr_2)
% plot(a8, d8_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(rx12, rd8_pl_1)
% hold on
% plot(rx16, rd8_pl_2)
% plot(a8, d8_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 8 - Blueline Wristshot Drill (Shooting)')
% 
% 
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(5)
% subplot(4,2,1)
% plot(rx1, rd1_emg1_1)
% hold on
% plot(rx1, rd1_emg2_1)
% plot(rx1, rd1_emg3_1)
% plot(rx1, rd1_emg4_1)
% plot(rx1, rd1_emg5_1)
% plot(rx1, rd1_emg6_1)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(rx2, rd2_emg1_1)
% hold on
% plot(rx2, rd2_emg2_1)
% plot(rx2, rd2_emg3_1)
% plot(rx2, rd2_emg4_1)
% plot(rx2, rd2_emg5_1)
% plot(rx2, rd2_emg6_1)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(rx3, rd3_emg1_1)
% hold on
% plot(rx3, rd3_emg2_1)
% plot(rx3, rd3_emg3_1)
% plot(rx3, rd3_emg4_1)
% plot(rx3, rd3_emg5_1)
% plot(rx3, rd3_emg6_1)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(rx4, rd4_emg1_1)
% hold on
% plot(rx4, rd4_emg2_1)
% plot(rx4, rd4_emg3_1)
% plot(rx4, rd4_emg4_1)
% plot(rx4, rd4_emg5_1)
% plot(rx4, rd4_emg6_1)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Participant 1')
% 
% subplot (4,2,[2 4 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
% l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
% l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
% l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
% l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
% l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.48 0.23 0.20 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off


figind = [1 2 4 5]; % locations where we actually want to plot data
figure(11)
subplot(2,3,1)
plot(a1, d1_emg1_a)
hold on
plot(a1, d1_emg2_a)
plot(a1, d1_emg3_a)
plot(a1, d1_emg4_a)
plot(a1, d1_emg5_a)
plot(a1, d1_emg6_a)
hold off
title('Cross Overs (Drill 1)')
xlim([0 60])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,2)
plot(a2, d2_emg1_a)
hold on
plot(a2, d2_emg2_a)
plot(a2, d2_emg3_a)
plot(a2, d2_emg4_a)
plot(a2, d2_emg5_a)
plot(a2, d2_emg6_a)
hold off
title('Stopping (Drill 2)')
xlim([0 60])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,4)
plot(a3, d3_emg1_a)
hold on
plot(a3, d3_emg2_a)
plot(a3, d3_emg3_a)
plot(a3, d3_emg4_a)
plot(a3, d3_emg5_a)
plot(a3, d3_emg6_a)
hold off
title('Laps (Drill 3)')
xlim([0 60])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,5)
plot(a4, d4_emg1_a)
hold on
plot(a4, d4_emg2_a)
plot(a4, d4_emg3_a)
plot(a4, d4_emg4_a)
plot(a4, d4_emg5_a)
plot(a4, d4_emg6_a)
hold off
title('Backwards Laps (Drill 4)')
xlim([0 60])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('All 4 Drills - Averaged                                                                          ')
subplot (2,3,[3 6]) % merge remaining subplots and put legend here
x = linspace(0, 1, 10)';
plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
hleg1 = legend (l1, l2, l3, l4, l5, l6);
set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
set(gca,'fontsize',12)

axis off

figind = [1 2 4 5]; % locations where we actually want to plot data
figure(12)
subplot(2,3,1)
plot(a1, d1_pr_a)
hold on
plot(a1, d1_pl_a)
hold off
title('Cross Overs (Drill 1)')
xlim([0 60])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,2)
plot(a2, d2_pr_a)
hold on
plot(a2, d2_pl_a)
hold off
title('Stopping (Drill 2)')
xlim([0 60])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,4)
plot(a3, d3_pr_a)
hold on
plot(a3, d3_pl_a)
hold off
title('Laps (Drill 3)')
xlim([0 60])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,5)
plot(a4, d4_pr_a)
hold on
plot(a4, d4_pl_a)
hold off
title('Backwards Laps (Drill 4)')
xlim([0 60])
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('All 4 Drills - Averaged                                                                          ')
subplot (2,3,[3 6]) % merge remaining subplots and put legend here
x = linspace(0, 1, 10)';
plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
l1 = 'Right Foot Pressure Plate';
l2 = 'Left Foot Pressure Plate';
hleg1 = legend (l1, l2);
set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
set(gca,'fontsize',12)

axis off

figind = [1 2 4 5]; % locations where we actually want to plot data
figure(13)
subplot(2,3,1)
plot(a5, d5_emg1_a)
hold on
plot(a5, d5_emg2_a)
plot(a5, d5_emg3_a)
plot(a5, d5_emg4_a)
plot(a5, d5_emg5_a)
plot(a5, d5_emg6_a)
hold off
title('Hashline Slapshot (Drill 5)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,2)
plot(a6, d6_emg1_a)
hold on
plot(a6, d6_emg2_a)
plot(a6, d6_emg3_a)
plot(a6, d6_emg4_a)
plot(a6, d6_emg5_a)
plot(a6, d6_emg6_a)
hold off
title('Hashline Wristshot (Drill 6)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,4)
plot(a7, d7_emg1_a)
hold on
plot(a7, d7_emg2_a)
plot(a7, d7_emg3_a)
plot(a7, d7_emg4_a)
plot(a7, d7_emg5_a)
plot(a7, d7_emg6_a)
hold off
title('Blueline Slapshot (Drill 7)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,5)
plot(a8, d8_emg1_a)
hold on
plot(a8, d8_emg2_a)
plot(a8, d8_emg3_a)
plot(a8, d8_emg4_a)
plot(a8, d8_emg5_a)
plot(a8, d8_emg6_a)
hold off
title('Blueline Wristshot (Drill 8)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('All 4 Drills - Averaged                                                                          ')
subplot (2,3,[3 6]) % merge remaining subplots and put legend here
x = linspace(0, 1, 10)';
plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
l1 = 'EMG 1 - Brachioradialis (Right Arm)';
l2 = 'EMG 2 - Anterior Deltoid (Right Arm)';
l3 = 'EMG 3 - Latissimus Dorsi (Right Back)';
l4 = 'EMG 4 - Brachioradialis (Left Arm)';
l5 = 'EMG 5 - Anterior Deltoid (Left Arm)';
l6 = 'EMG 6 - Latissimus Dorsi (Left Back)';
hleg1 = legend (l1, l2, l3, l4, l5, l6);
set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
set(gca,'fontsize',12)

axis off

figind = [1 2 4 5]; % locations where we actually want to plot data
figure(14)
subplot(2,3,1)
plot(a5, d5_pr_a)
hold on
plot(a5, d5_pl_a)
hold off
title('Hashline Slapshot (Drill 5)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,2)
plot(a6, d6_pr_a)
hold on
plot(a6, d6_pl_a)
hold off
title('Hashline Wristshot (Drill 6)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,4)
plot(a7, d7_pr_a)
hold on
plot(a7, d7_pl_a)
hold off
title('Blueline Slapshot (Drill 7)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(2,3,5)
plot(a8, d8_pr_a)
hold on
plot(a8, d8_pl_a)
hold off
title('Blueline Wristshot (Drill 8)')
xlim([0 10])
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('All 4 Drills - Averaged                                                                          ')
subplot (2,3,[3 6]) % merge remaining subplots and put legend here
x = linspace(0, 1, 10)';
plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
l1 = 'Right Foot Pressure Plate';
l2 = 'Left Foot Pressure Plate';
hleg1 = legend (l1, l2);
set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
set(gca,'fontsize',12)

axis off

