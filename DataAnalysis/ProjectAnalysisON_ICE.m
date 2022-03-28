%% HOCKEY DATA ANALYSIS - SKATING ANALYSIS

%DATA

%SKATING
drakeB = readtable('Feb6_D_Backward.xlsx');
drakeL = readtable('Feb6_D_Laps.xlsx');
drakeC = readtable('Feb6_D_Cross.xlsx');
drakeS = readtable('Feb6_D_Stop.xlsx');
%SHOOTING
drakeBS = readtable('16_D_BlueSlap.xlsx');
drakeBW = readtable('16_D_BlueWrist.xlsx');
drakeHS = readtable('16_D_HashSlap.xlsx');
drakeHW = readtable('16_D_HashWrist.xlsx');

%day 2
%SKATING
drakeB2 = readtable('Mar2_D_back.xlsx');
drakeL2 = readtable('Mar2_D_laps.xlsx');
drakeC2 = readtable('Mar2_D_cross.xlsx');
drakeS2 = readtable('Mar2_D_stop.xlsx');
%SHOOTING
drakeBS2 = readtable('16_D_BlueSlap.xlsx');
drakeBW2 = readtable('16_D_BlueWrist.xlsx');
drakeHS2 = readtable('16_D_HashSlap.xlsx');
drakeHW2 = readtable('16_D_HashWrist.xlsx');

%SKATING
connorB = readtable('Feb9_C_Backward.xlsx');
connorL = readtable('Feb9_C_Laps.xlsx');
connorC = readtable('Feb9_C_Cross.xlsx');
connorS = readtable('Feb9_C_Stop.xlsx');
%SHOOTING
connorBS = readtable('16_C_BlueSlap.xlsx');
connorBW = readtable('16_C_BlueWrist.xlsx');
connorHS = readtable('16_C_HashSlap.xlsx');
connorHW = readtable('16_C_HashWrist.xlsx');

%(drill_emg_person)

%% PARTICIPANT 1 DATA

%skating
x1 = drakeC{:, 2}; %time var for drake cross overs
x2 = drakeS{:, 2}; %time var for drake stopping
x3 = drakeL{:, 2}; %time var for drake laps
x4 = drakeB{:, 2}; %time var for drake backwards

%DRILL 1 DATA - crossover
% x1
d1_emg1_1 = drakeC{:, 7}; %emg 1 Gastrocnemius (Right Leg)
d1_emg2_1 = drakeC{:, 8}; %emg 2 Bicep Femoris (Right Leg)
d1_emg3_1 = drakeC{:, 9}; %emg 3 Vastus Lateralis (Right Leg)
d1_emg4_1 = drakeC{:, 10}; %emg 4 Gastrocnemius (Left Leg)
d1_emg5_1 = drakeC{:, 11}; %emg 5 Bicep Femoris (Left Leg)
d1_emg6_1 = drakeC{:, 12}; %emg 6 Vastus Lateralis (Left Leg)
d1_pr_1 = drakeC{:, 13}; %right pressure plate
d1_pl_1 = drakeC{:, 14}; %left pressure plate

%DRILL 2 DATA stopping
% x2
d2_emg1_1 = drakeS{:, 7};
d2_emg2_1 = drakeS{:, 8};
d2_emg3_1 = drakeS{:, 9};
d2_emg4_1 = drakeS{:, 10};
d2_emg5_1 = drakeS{:, 11};
d2_emg6_1 = drakeS{:, 12};
d2_pr_1 = drakeS{:, 14}; 
d2_pl_1 = drakeS{:, 15}; 


%DRILL 3 DATA laps
% x3
d3_emg1_1 = drakeL{:, 7};
d3_emg2_1 = drakeL{:, 8};
d3_emg3_1 = drakeL{:, 9};
d3_emg4_1 = drakeL{:, 10};
d3_emg5_1 = drakeL{:, 11};
d3_emg6_1 = drakeL{:, 12};
d3_pr_1 = drakeL{:, 14}; 
d3_pl_1 = drakeL{:, 15};

%DRILL 4 DATA backwards
% x4
d4_emg1_1 = drakeB{:, 7};
d4_emg2_1 = drakeB{:, 8};
d4_emg3_1 = drakeB{:, 9};
d4_emg4_1 = drakeB{:, 10};
d4_emg5_1 = drakeB{:, 11};
d4_emg6_1 = drakeB{:, 12};
d4_pr_1 = drakeB{:, 14}; 
d4_pl_1 = drakeB{:, 15};

%shooting
x9 = drakeHS{:, 2}; %time var for drake hashline slapshot
x10 = drakeHW{:, 2}; %time var for drake hashline wristshot
x11 = drakeBS{:, 2}; %time var for drake blueline slapshot
x12 = drakeBW{:, 2}; %time var for drake blueline wristshot

%DRILL 1 DATA - hashline slapshot
% x9
d5_emg1_1 = drakeHS{:, 8}; %emg 1 Brachioradialis (Right Arm)
d5_emg2_1 = drakeHS{:, 9}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_1 = drakeHS{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_1 = drakeHS{:, 11}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_1 = drakeHS{:, 12}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_1 = drakeHS{:, 13}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_1 = drakeHS{:, 14}; %right pressure plate
d5_pl_1 = drakeHS{:, 15}; %left pressure plate


%DRILL 2 DATA - blueline slapshot
% x10
d6_emg1_1 = drakeHW{:, 8};
d6_emg2_1 = drakeHW{:, 9};
d6_emg3_1 = drakeHW{:, 10};
d6_emg4_1 = drakeHW{:, 11};
d6_emg5_1 = drakeHW{:, 12};
d6_emg6_1 = drakeHW{:, 13};
d6_pr_1 = drakeHW{:, 14}; 
d6_pl_1 = drakeHW{:, 15}; 


%DRILL 3 DATA - hashline wrist shot
% x11
d7_emg1_1 = drakeBS{:, 8};
d7_emg2_1 = drakeBS{:, 9};
d7_emg3_1 = drakeBS{:, 10};
d7_emg4_1 = drakeBS{:, 11};
d7_emg5_1 = drakeBS{:, 12};
d7_emg6_1 = drakeBS{:, 13};
d7_pr_1 = drakeBS{:, 14}; 
d7_pl_1 = drakeBS{:, 15};

%DRILL 4 DATA - blueline wrist shot
% x12
d8_emg1_1 = drakeBW{:, 8};
d8_emg2_1 = drakeBW{:, 9};
d8_emg3_1 = drakeBW{:, 10};
d8_emg4_1 = drakeBW{:, 11};
d8_emg5_1 = drakeBW{:, 12};
d8_emg6_1 = drakeBW{:, 13};
d8_pr_1 = drakeBW{:, 14}; 
d8_pl_1 = drakeBW{:, 15};

%day 2
x1_2 = drakeC2{:, 2}; %time var for drake cross overs
x2_2 = drakeS2{:, 2}; %time var for drake stopping
x3_2 = drakeL2{:, 2}; %time var for drake laps
x4_2 = drakeB2{:, 2}; %time var for drake backwards

%DRILL 1 DATA - crossover
% x1
d1_emg1_12 = drakeC2{:, 8}; %emg 1 Gastrocnemius (Right Leg)
d1_emg2_12 = drakeC2{:, 9}; %emg 2 Bicep Femoris (Right Leg)
d1_emg3_12 = drakeC2{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
d1_emg4_12 = drakeC2{:, 11}; %emg 4 Gastrocnemius (Left Leg)
d1_emg5_12 = drakeC2{:, 12}; %emg 5 Bicep Femoris (Left Leg)
d1_emg6_12 = drakeC2{:, 13}; %emg 6 Vastus Lateralis (Left Leg)
d1_pr_12 = drakeC2{:, 14}; %right pressure plate
d1_pl_12 = drakeC2{:, 15}; %left pressure plate

%DRILL 2 DATA stopping
% x2
d2_emg1_12 = drakeS2{:, 8};
d2_emg2_12 = drakeS2{:, 9};
d2_emg3_12 = drakeS2{:, 10};
d2_emg4_12 = drakeS2{:, 11};
d2_emg5_12 = drakeS2{:, 12};
d2_emg6_12 = drakeS2{:, 13};
d2_pr_12 = drakeS2{:, 14}; 
d2_pl_12 = drakeS2{:, 15}; 


%DRILL 3 DATA laps
% x3
d3_emg1_12 = drakeL2{:, 8};
d3_emg2_12 = drakeL2{:, 17};
d3_emg3_12 = drakeL2{:, 10};
d3_emg4_12 = drakeL2{:, 11};
d3_emg5_12 = drakeL2{:, 18};
d3_emg6_12 = drakeL2{:, 13};
d3_pr_12 = drakeL2{:, 14}; 
d3_pl_12 = drakeL2{:, 15};

%DRILL 4 DATA backwards
% x4
d4_emg1_12 = drakeB2{:, 9};
d4_emg2_12 = drakeB2{:, 18};
d4_emg3_12 = drakeB2{:, 11};
d4_emg4_12 = drakeB2{:, 12};
d4_emg5_12 = drakeB2{:, 19};
d4_emg6_12 = drakeB2{:, 14};
d4_pr_12 = drakeB2{:, 15}; 
d4_pl_12 = drakeB2{:, 16};

%shooting
x9_2 = drakeHS2{:, 2}; %time var for drake hashline slapshot
x10_2 = drakeBS2{:, 2}; %time var for drake hashline wristshot
x11_2 = drakeHW2{:, 2}; %time var for drake blueline slapshot
x12_2 = drakeBW2{:, 2}; %time var for drake blueline wristshot

%DRILL 1 DATA - hashline slapshot
% x9
d5_emg1_12 = drakeHS2{:, 8}; %emg 1 Brachioradialis (Right Arm)
d5_emg2_12 = drakeHS2{:, 9}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_12 = drakeHS2{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_12 = drakeHS2{:, 11}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_12 = drakeHS2{:, 12}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_12 = drakeHS2{:, 13}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_12 = drakeHS2{:, 14}; %right pressure plate
d5_pl_12 = drakeHS2{:, 15}; %left pressure plate


%DRILL 2 DATA - blueline slapshot
% x10
d6_emg1_12 = drakeBS2{:, 8};
d6_emg2_12 = drakeBS2{:, 9};
d6_emg3_12 = drakeBS2{:, 10};
d6_emg4_12 = drakeBS2{:, 11};
d6_emg5_12 = drakeBS2{:, 12};
d6_emg6_12 = drakeBS2{:, 13};
d6_pr_12 = drakeBS2{:, 14}; 
d6_pl_12 = drakeBS2{:, 15}; 


%DRILL 3 DATA - hashline wrist shot
% x11
d7_emg1_12 = drakeHW2{:, 8};
d7_emg2_12 = drakeHW2{:, 9};
d7_emg3_12 = drakeHW2{:, 10};
d7_emg4_12 = drakeHW2{:, 11};
d7_emg5_12 = drakeHW2{:, 12};
d7_emg6_12 = drakeHW2{:, 13};
d7_pr_12 = drakeHW2{:, 14}; 
d7_pl_12 = drakeHW2{:, 15};

%DRILL 4 DATA - blueline wrist shot
% x12
d8_emg1_12 = drakeBW2{:, 8};
d8_emg2_12 = drakeBW2{:, 9};
d8_emg3_12 = drakeBW2{:, 10};
d8_emg4_12 = drakeBW2{:, 11};
d8_emg5_12 = drakeBW2{:, 12};
d8_emg6_12 = drakeBW2{:, 13};
d8_pr_12 = drakeBW2{:, 14}; 
d8_pl_12 = drakeBW2{:, 15};

%% PERSON 2 DATA

%skating
x5 = connorC{:, 2}; %time var for drake cross overs
x6 = connorS{:, 2}; %time var for drake stopping
x7 = connorL{:, 2}; %time var for drake laps
x8 = connorB{:, 2}; %time var for drake backwards

%DRILL 1 DATA 
% x5 
d1_emg1_2 = connorC{:, 8};
d1_emg2_2 = connorC{:, 9};
d1_emg3_2 = connorC{:, 10};
d1_emg4_2 = connorC{:, 11};
d1_emg5_2 = connorC{:, 12};
d1_emg6_2 = connorC{:, 13};
d1_pr_2 = connorC{:, 14}; 
d1_pl_2 = connorC{:, 15};
% 
%DRILL 2 DATA
% x6 
d2_emg1_2 = connorS{:, 8};
d2_emg2_2 = connorS{:, 9};
d2_emg3_2 = connorS{:, 10};
d2_emg4_2 = connorS{:, 11};
d2_emg5_2 = connorS{:, 12};
d2_emg6_2 = connorS{:, 13};
d2_pr_2 = connorS{:, 14}; 
d2_pl_2 = connorS{:, 15};

%DRILL 3 DATA 
% x7
d3_emg1_2 = connorL{:, 8};
d3_emg2_2 = connorL{:, 9};
d3_emg3_2 = connorL{:, 10};
d3_emg4_2 = connorL{:, 11};
d3_emg5_2 = connorL{:, 12};
d3_emg6_2 = connorL{:, 13};
d3_pr_2 = connorL{:, 14}; 
d3_pl_2 = connorL{:, 15};

%DRILL 4 DATA 
% x8
d4_emg1_2 = connorB{:, 8};
d4_emg2_2 = connorB{:, 9};
d4_emg3_2 = connorB{:, 10};
d4_emg4_2 = connorB{:, 11};
d4_emg5_2 = connorB{:, 12};
d4_emg6_2 = connorB{:, 13};
d4_pr_2 = connorB{:, 14}; 
d4_pl_2 = connorB{:, 15};

%shooting
x13 = connorHS{:, 2}; %time var for drake hashline slapshot
x14 = connorBS{:, 2}; %time var for drake hashline wristshot
x15 = connorHW{:, 2}; %time var for drake blueline slapshot
x16 = connorBW{:, 2}; %time var for drake blueline wristshot

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

% x13
d5_emg1_2 = connorHS{:, 8}; %emg 1 Brachioradialis (Right Arm) 
d5_emg2_2 = connorHS{:, 9}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_2 = connorHS{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_2 = connorHS{:, 11}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_2 = connorHS{:, 12}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_2 = connorHS{:, 13}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_2 = connorHS{:, 14}; %right pressure plate
d5_pl_2 = connorHS{:, 15}; %left pressure plate


%DRILL 6 DATA - blueline slapshot
% x14
d6_emg1_2 = connorBS{:, 8};
d6_emg2_2 = connorBS{:, 9};
d6_emg3_2 = connorBS{:, 10};
d6_emg4_2 = connorBS{:, 11};
d6_emg5_2 = connorBS{:, 12};
d6_emg6_2 = connorBS{:, 13};
d6_pr_2 = connorBS{:, 14}; 
d6_pl_2 = connorBS{:, 15}; 


%DRILL 7 DATA - hashline wrist shot
% x15
d7_emg1_2 = connorHW{:, 8};
d7_emg2_2 = connorHW{:, 9};
d7_emg3_2 = connorHW{:, 10};
d7_emg4_2 = connorHW{:, 11};
d7_emg5_2 = connorHW{:, 12};
d7_emg6_2 = connorHW{:, 13};
d7_pr_2 = connorHW{:, 14}; 
d7_pl_2 = connorHW{:, 15};

%DRILL 8 DATA - blueline wrist shot
% x16
d8_emg1_2 = connorBW{:, 8};
d8_emg2_2 = connorBW{:, 9};
d8_emg3_2 = connorBW{:, 10};
d8_emg4_2 = connorBW{:, 11};
d8_emg5_2 = connorBW{:, 12};
d8_emg6_2 = connorBW{:, 13};
d8_pr_2 = connorBW{:, 14}; 
d8_pl_2 = connorBW{:, 15};

%% AVERAGING??

%SKATING
onC = readtable('ON_Cross.xlsx');
onS = readtable('ON_Stop.xlsx');
onL = readtable('ON_Laps.xlsx');
onB = readtable('ON_Back.xlsx');
onHW = readtable('ON_HW.xlsx');
onHS = readtable('ON_HS.xlsx');
onBW = readtable('ON_BW.xlsx');
onBS = readtable('ON_BS.xlsx');

a1 = onC{:,29};
a2 = onS{:,29};
a3 = onL{:,29};
a4 = onB{:,29};
a5 = onHS{:,20};
a6 = onHW{:,20};
a7 = onBS{:,20};
a8 = onBW{:,20};


%DRILL 1 DATA 
% a1
d1_emg1_a = onC{:, 30};
d1_emg2_a = onC{:, 31};
d1_emg3_a = onC{:, 32};
d1_emg4_a = onC{:, 33};
d1_emg5_a = onC{:, 34};
d1_emg6_a = onC{:, 35};
d1_pr_a = onC{:, 36}; 
d1_pl_a = onC{:, 37};
% 
%DRILL 2 DATA
% a2
d2_emg1_a = onS{:, 30};
d2_emg2_a = onS{:, 31};
d2_emg3_a = onS{:, 32};
d2_emg4_a = onS{:, 33};
d2_emg5_a = onS{:, 34};
d2_emg6_a = onS{:, 35};
d2_pr_a = onS{:, 36}; 
d2_pl_a = onS{:, 37};

%DRILL 3 DATA 
% a3
d3_emg1_a = onL{:, 30};
d3_emg2_a = onL{:, 31};
d3_emg3_a = onL{:, 32};
d3_emg4_a = onL{:, 33};
d3_emg5_a = onL{:, 34};
d3_emg6_a = onL{:, 35};
d3_pr_a = onL{:, 36}; 
d3_pl_a = onL{:, 37};

%DRILL 4 DATA 
% a4
d4_emg1_a = onB{:, 30};
d4_emg2_a = onB{:, 31};
d4_emg3_a = onB{:, 32};
d4_emg4_a = onB{:, 33};
d4_emg5_a = onB{:, 34};
d4_emg6_a = onB{:, 35};
d4_pr_a = onB{:, 36}; 
d4_pl_a = onB{:, 37};

% a5
d5_emg1_a = onHS{:, 21}; %emg 1 Brachioradialis (Right Arm) 
d5_emg2_a = onHS{:, 22}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_a = onHS{:, 23}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_a = onHS{:, 24}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_a = onHS{:, 25}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_a = onHS{:, 26}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_a = onHS{:, 27}; %right pressure plate
d5_pl_a = onHS{:, 28}; %left pressure plate


%DRILL 6 DATA - blueline slapshot
% a6
d6_emg1_a = onHW{:, 21};
d6_emg2_a = onHW{:, 22};
d6_emg3_a = onHW{:, 23};
d6_emg4_a = onHW{:, 24};
d6_emg5_a = onHW{:, 25};
d6_emg6_a = onHW{:, 26};
d6_pr_a = onHW{:, 27}; 
d6_pl_a = onHW{:, 28}; 


%DRILL 7 DATA - hashline wrist shot
% a7
d7_emg1_a = onBS{:, 21};
d7_emg2_a = onBS{:, 22};
d7_emg3_a = onBS{:, 23};
d7_emg4_a = onBS{:, 24};
d7_emg5_a = onBS{:, 25};
d7_emg6_a = onBS{:, 26};
d7_pr_a = onBS{:, 27}; 
d7_pl_a = onBS{:, 28};

%DRILL 8 DATA - blueline wrist shot
% a8
d8_emg1_a = onBW{:, 21};
d8_emg2_a = onBW{:, 22};
d8_emg3_a = onBW{:, 23};
d8_emg4_a = onBW{:, 24};
d8_emg5_a = onBW{:, 25};
d8_emg6_a = onBW{:, 26};
d8_pr_a = onBW{:, 27}; 
d8_pl_a = onBW{:, 28};

%% EMG SENSOR ANALYSIS

%ON-ICE

%% DRILL 1 - CROSS-OVERS - All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE 
% EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANTS

figure(1)
subplot(4,2,1)
plot(x1, d1_emg1_1)
hold on
plot(x5, d1_emg1_2)
plot(x1_2, d1_emg1_12)
plot(a1, d1_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 1 - Gastrocnemius (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,3)
plot(x1, d1_emg2_1)
hold on
plot(x5, d1_emg2_2)
plot(x1_2, d1_emg2_12)
plot(a1, d1_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 2 - Bicep Femoris (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,5)
plot(x1, d1_emg3_1)
hold on
plot(x5, d1_emg3_2)
plot(x1_2, d1_emg3_12)
plot(a1, d1_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 3 - Vastus Lateralis (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,2)
plot(x1, d1_emg4_1)
hold on
plot(x5, d1_emg4_2)
plot(x1_2, d1_emg4_12)
plot(a1, d1_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 4 - Gastrocnemius (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,4)
plot(x1, d1_emg5_1)
hold on
plot(x5, d1_emg5_2)
plot(x1_2, d1_emg5_12)
plot(a1, d1_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 5 - Bicep Femoris (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,6)
plot(x1, d1_emg6_1)
hold on
plot(x5, d1_emg6_2)
plot(x1_2, d1_emg6_12)
plot(a1, d1_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 6 - Vastus Lateralis (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,7)
plot(x1, d1_pr_1)
hold on
plot(x5, d1_pr_2)
plot(x1_2, d1_pr_12)
plot(a1, d1_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Right Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
subplot(4,2,8)
plot(x1, d1_pl_1)
hold on
plot(x5, d1_pl_2)
plot(x1_2, d1_pl_12)
plot(a1, d1_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Left Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
sgtitle('Drill 1 - Cross-Over Drill')



%% DRILL 2 - STOPPING - All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT
figure(3)
subplot(4,2,1)
plot(x2, d2_emg1_1)
hold on
plot(x6, d2_emg1_2)
plot(x2_2, d2_emg1_12)
plot(a2, d2_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 1 - Gastrocnemius (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,3)
plot(x2, d2_emg2_1)
hold on
plot(x6, d2_emg2_2)
plot(x2_2, d2_emg2_12)
plot(a2, d2_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 2 - Bicep Femoris (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,5)
plot(x2, d2_emg3_1)
hold on
plot(x6, d2_emg3_2)
plot(x2_2, d2_emg3_12)
plot(a2, d2_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 3 - Vastus Lateralis (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,2)
plot(x2, d2_emg4_1)
hold on
plot(x6, d2_emg4_2)
plot(x2_2, d2_emg4_12)
plot(a2, d2_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 4 - Gastrocnemius (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,4)
plot(x2, d2_emg5_1)
hold on
plot(x6, d2_emg5_2)
plot(x2_2, d2_emg5_12)
plot(a2, d2_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 5 - Bicep Femoris (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,6)
plot(x2, d2_emg6_1)
hold on
plot(x6, d2_emg6_2)
plot(x2_2, d2_emg6_12)
plot(a2, d2_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 6 - Vastus Lateralis (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,7)
plot(x2, d2_pr_1)
hold on
plot(x6, d2_pr_2)
plot(x2_2, d2_pr_12)
plot(a2, d2_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Right Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
subplot(4,2,8)
plot(x2, d2_pl_1)
hold on
plot(x6, d2_pl_2)
plot(x2_2, d2_pl_12)
plot(a2, d2_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Left Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
sgtitle('Drill 2 - Stopping Drill')


%% DRILL 3 - LAPS - All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT

figure(5)
subplot(4,2,1)
plot(x3, d3_emg1_1)
hold on
plot(x7, d3_emg1_2)
plot(x3_2, d3_emg1_12)
plot(a3, d3_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 1 - Gastrocnemius (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,3)
plot(x3, d3_emg2_1)
hold on
plot(x7, d3_emg2_2)
plot(x3_2, d3_emg2_12)
plot(a3, d3_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 2 - Bicep Femoris (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,5)
plot(x3, d3_emg3_1)
hold on
plot(x7, d3_emg3_2)
plot(x3_2, d3_emg3_12)
plot(a3, d3_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 3 - Vastus Lateralis (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,2)
plot(x3, d3_emg4_1)
hold on
plot(x7, d3_emg4_2)
plot(x3_2, d3_emg4_12)
plot(a3, d3_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 4 - Gastrocnemius (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,4)
plot(x3, d3_emg5_1)
hold on
plot(x7, d3_emg5_2)
plot(x3_2, d3_emg5_12)
plot(a3, d3_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 5 - Bicep Femoris (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,6)
plot(x3, d3_emg6_1)
hold on
plot(x7, d3_emg6_2)
plot(x3_2, d3_emg6_12)
plot(a3, d3_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 6 - Vastus Lateralis (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,7)
plot(x3, d3_pr_1)
hold on
plot(x7, d3_pr_2)
plot(x3_2, d3_pr_12)
plot(a3, d3_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Right Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
subplot(4,2,8)
plot(x3, d3_pl_1)
hold on
plot(x7, d3_pl_2)
plot(x3_2, d3_pl_12)
plot(a3, d3_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Left Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
sgtitle('Drill 3 - Laps Drill')


%% DRILL 4 - BACKWARDS LAPS - All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT

figure(7)
subplot(4,2,1)
plot(x4, d4_emg1_1)
hold on
plot(x8, d4_emg1_2)
plot(x4_2, d4_emg1_12)
plot(a4, d4_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 1 - Gastrocnemius (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,3)
plot(x4, d4_emg2_1)
hold on
plot(x8, d4_emg2_2)
plot(x4_2, d4_emg2_12)
plot(a4, d4_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 2 - Bicep Femoris (Rightt Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,5)
plot(x4, d4_emg3_1)
hold on
plot(x8, d4_emg3_2)
plot(x4_2, d4_emg3_12)
plot(a4, d4_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 3 - Vastus Lateralis (Right Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,2)
plot(x4, d4_emg4_1)
hold on
plot(x8, d4_emg4_2)
plot(x4_2, d4_emg4_12)
plot(a4, d4_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 4 - Gastrocnemius (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,4)
plot(x4, d4_emg5_1)
hold on
plot(x8, d4_emg5_2)
plot(x4_2, d4_emg5_12)
plot(a4, d4_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 5 - Bicep Femoris (Leftt Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,6)
plot(x4, d4_emg6_1)
hold on
plot(x8, d4_emg6_2)
plot(x4_2, d4_emg6_12)
plot(a4, d4_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
ylim([0 4.8])
hold off
title('EMG 6 - Vastus Lateralis (Left Leg)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,7)
plot(x4, d4_pr_1)
hold on
plot(x8, d4_pr_2)
plot(x4_2, d4_pr_12)
plot(a4, d4_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Right Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
subplot(4,2,8)
plot(x4, d4_pl_1)
hold on
plot(x8, d4_pl_2)
plot(x4_2, d4_pl_12)
plot(a4, d4_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
xlim([0 60])
hold off
title('Left Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
sgtitle('Drill 4 - Backwards Laps Drill')


%% PLOTS OF ALL DRILLS
% 5 BAR GRAPH DISPLAYING EACH SHOWING THE PARTICIPANT GROUPS OF MUSCLES --
% I.E. GRAPH 1 LEFT TO RIGHT:
%   GT P1 - GT P2 - GT P3 -- BF P1 - BF P2 - BF P3 -- VL P1 - VL P2 - VL P3

% ******************
%
%
% ** NEED TO REDO **
%
%
% ******************


% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(9)
% subplot(4,3,1)
% plot(x1, d1_emg1_1)
% hold on
% plot(x1, d1_emg2_1)
% plot(x1, d1_emg3_1)
% plot(x1, d1_emg4_1)
% plot(x1, d1_emg5_1)
% plot(x1, d1_emg6_1)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,4)
% plot(x2, d2_emg1_1)
% hold on
% plot(x2, d2_emg2_1)
% plot(x2, d2_emg3_1)
% plot(x2, d2_emg4_1)
% plot(x2, d2_emg5_1)
% plot(x2, d2_emg6_1)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,7)
% plot(x3, d3_emg1_1)
% hold on
% plot(x3, d3_emg2_1)
% plot(x3, d3_emg3_1)
% plot(x3, d3_emg4_1)
% plot(x3, d3_emg5_1)
% plot(x3, d3_emg6_1)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,10)
% plot(x4, d4_emg1_1)
% hold on
% plot(x4, d4_emg2_1)
% plot(x4, d4_emg3_1)
% plot(x4, d4_emg4_1)
% plot(x4, d4_emg5_1)
% plot(x4, d4_emg6_1)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,2)
% plot(x5, d1_emg1_2)
% hold on
% plot(x5, d1_emg2_2)
% plot(x5, d1_emg3_2)
% plot(x5, d1_emg4_2)
% plot(x5, d1_emg5_2)
% plot(x5, d1_emg6_2)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
% plot(x6, d2_emg1_2)
% hold on
% plot(x6, d2_emg2_2)
% plot(x6, d2_emg3_2)
% plot(x6, d2_emg4_2)
% plot(x6, d2_emg5_2)
% plot(x6, d2_emg6_2)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
% plot(x7, d3_emg1_2)
% hold on
% plot(x7, d3_emg2_2)
% plot(x7, d3_emg3_2)
% plot(x7, d3_emg4_2)
% plot(x7, d3_emg5_2)
% plot(x7, d3_emg6_2)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
% plot(x8, d4_emg1_2)
% hold on
% plot(x8, d4_emg2_2)
% plot(x8, d4_emg3_2)
% plot(x8, d4_emg4_2)
% plot(x8, d4_emg5_2)
% plot(x8, d4_emg6_2)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% multilineTitle={sprintf('All 4 Drills                                                                                            '),
%     sprintf('Participant 1                                                                               Participant 2                                                                                         ')};
% sgtitle(multilineTitle);
% subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
% l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
% l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
% l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
% l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
% l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.65 0.23 0.15 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off


%% PARTICIPANT 1 DRILLS
% 6 FIGURES, EACH DISPLAYING THE DIFFERENT LINES SHOWING THE MUSLCES USED
% IN EACH DRILL

% **************************
%
%
% ** VISUALLY UNAPPEALING **
%
% ** DIFFICULT TO ANALYZE **
%
%
% **************************

% figure(6)
% subplot(3,3,1)
% plot(x1, d1_emg1_1)
% hold on
% plot(x2, d2_emg1_1)
% plot(x3, d3_emg1_1)
% plot(x4, d4_emg1_1)
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(3,3,2)
% plot(x1, d1_emg2_1)
% hold on
% plot(x2, d2_emg2_1)
% plot(x3, d3_emg2_1)
% plot(x4, d4_emg2_1)
% hold off
% title('EMG 2 - Gastrocnemius (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(3,3,4)
% plot(x1, d1_emg3_1)
% hold on
% plot(x2, d2_emg3_1)
% plot(x3, d3_emg3_1)
% plot(x4, d4_emg3_1)
% hold off
% title('EMG 3 - Anterior Deltoid (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(3,3,5)
% plot(x1, d1_emg4_1)
% hold on
% plot(x2, d2_emg4_1)
% plot(x3, d3_emg4_1)
% plot(x4, d4_emg4_1)
% hold off
% title('EMG 4 - Anterior Deltoid (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(3,3,7)
% plot(x1, d1_emg5_1)
% hold on
% plot(x2, d2_emg5_1)
% plot(x3, d3_emg5_1)
% plot(x4, d4_emg5_1)
% hold off
% title('EMG 5 - Bicep Femoris (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(3,3,8)
% plot(x1, d1_emg6_1)
% hold on
% plot(x2, d2_emg6_1)
% plot(x3, d3_emg6_1)
% plot(x4, d4_emg6_1)
% hold off
% title('EMG 6 - Bicep Femoris (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills')
% 
% subplot (3, 3,[3 6 9]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'Lunges (left leg back)';
% l2 = 'Lunges (right leg back)';
% l3 = 'Squats';
% l4 = 'Pull-Ups';
% hleg1 = legend (l1, l2, l3, l4);
% set(hleg1,'position',[0.6 0.25 0.20 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off
% 

%% SHOOTING DRILLS
% 
% 
%% COMPARE SHOOTING DRILLS Participant 1 vs Participant 2
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(15)
% subplot(4,3,1)
% plot(x9, d5_emg1_1)
% hold on
% plot(x9, d5_emg2_1)
% plot(x9, d5_emg3_1)
% plot(x9, d5_emg4_1)
% plot(x9, d5_emg5_1)
% plot(x9, d5_emg6_1)
% hold off
% title('Hashline Slapshot (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,4)
% plot(x10, d6_emg1_1)
% hold on
% plot(x10, d6_emg2_1)
% plot(x10, d6_emg3_1)
% plot(x10, d6_emg4_1)
% plot(x10, d6_emg5_1)
% plot(x10, d6_emg6_1)
% hold off
% title('Blueline Slapshot (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,7)
% plot(x11, d7_emg1_1)
% hold on
% plot(x11, d7_emg2_1)
% plot(x11, d7_emg3_1)
% plot(x11, d7_emg4_1)
% plot(x11, d7_emg5_1)
% plot(x11, d7_emg6_1)
% hold off
% title('Hashline Wristshot (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,10)
% plot(x12, d8_emg1_1)
% hold on
% plot(x12, d8_emg2_1)
% plot(x12, d8_emg3_1)
% plot(x12, d8_emg4_1)
% plot(x12, d8_emg5_1)
% plot(x12, d8_emg6_1)
% hold off
% title('Blueline Slapshot (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,2)
% plot(x13, d5_emg1_2)
% hold on
% plot(x13, d5_emg2_2)
% plot(x13, d5_emg3_2)
% plot(x13, d5_emg4_2)
% plot(x13, d5_emg5_2)
% plot(x13, d5_emg6_2)
% hold off
% title('Hashline Slapshot (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
% plot(x14, d6_emg1_2)
% hold on
% plot(x14, d6_emg2_2)
% plot(x14, d6_emg3_2)
% plot(x14, d6_emg4_2)
% plot(x14, d6_emg5_2)
% plot(x14, d6_emg6_2)
% hold off
% title('Blueline Slapshot (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
% plot(x15, d7_emg1_2)
% hold on
% plot(x15, d7_emg2_2)
% plot(x15, d7_emg3_2)
% plot(x15, d7_emg4_2)
% plot(x15, d7_emg5_2)
% plot(x15, d7_emg6_2)
% hold off
% title('Hashline Wristshot (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
% plot(x16, d8_emg1_2)
% hold on
% plot(x16, d8_emg2_2)
% plot(x16, d8_emg3_2)
% plot(x16, d8_emg4_2)
% plot(x16, d8_emg5_2)
% plot(x16, d8_emg6_2)
% hold off
% title('Blueline Slapshot (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)') 
% multilineTitle={sprintf('All 4 Shooting Drills                                                                                             '),
%     sprintf('Participant 1                                                                                         Participant 2                                                                                                ')};
% sgtitle(multilineTitle);
% subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 20)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Brachioradialis (Right Arm)';
% l2 = 'EMG 2 - Anterior Deltoid (Right Arm)';
% l3 = 'EMG 3 - Latissimus Dorsi (Right Back)';
% l4 = 'EMG 4 - Brachioradialis (Left Arm)';
% l5 = 'EMG 5 - Anterior Deltoid (Left Arm)';
% l6 = 'EMG 6 - Latissimus Dorsi (Left Back)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.65 0.23 0.15 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off

%% DRILL 5 - HASHLINE SLAPSHOT -  All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT
% 
% figure(10)
% subplot(4,2,1)
% plot(x9, d5_emg1_1)
% hold on
% plot(x13, d5_emg1_2)
% % plot(x5_2, d5_emg1_12)
% plot(a5, d5_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(x9, d5_emg2_1)
% hold on
% plot(x13, d5_emg2_2)
% % plot(x5_2, d5_emg2_12)
% plot(a5, d5_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(x9, d5_emg3_1)
% hold on
% plot(x13, d5_emg3_2)
% % plot(x5_2, d5_emg3_12)
% plot(a5, d5_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(x9, d5_emg4_1)
% hold on
% plot(x13, d5_emg4_2)
% % plot(x5_2, d5_emg4_12)
% plot(a5, d5_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 4 - Brachioradialis (Leftt Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(x9, d5_emg5_1)
% hold on
% plot(x13, d5_emg5_2)
% % plot(x5_2, d5_emg5_12)
% plot(a5, d5_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(x9, d5_emg6_1)
% hold on
% plot(x13, d5_emg6_2)
% % plot(x5_2, d5_emg6_12)
% plot(a5, d5_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(x9, d5_pr_1)
% hold on
% plot(x13, d5_pr_2)
% % plot(x5_2, d5_pr_12)
% plot(a5, d5_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(x9, d5_pl_1)
% hold on
% plot(x13, d5_pl_2)
% % plot(x5_2, d5_pl_12)
% plot(a5, d5_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 5 - Hashline Slapshot Drill (Shooting)')
% 
% %% DRILL 6 - BLUELINE SLAPSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(11)
% subplot(4,2,1)
% plot(x10, d6_emg1_1)
% hold on
% plot(x14, d6_emg1_2)
% % plot(x6_2, d6_emg1_12)
% plot(a6, d6_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(x10, d6_emg2_1)
% hold on
% plot(x14, d6_emg2_2)
% % plot(x6_2, d6_emg2_12)
% plot(a6, d6_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(x10, d6_emg3_1)
% hold on
% plot(x14, d6_emg3_2)
% % plot(x6_2, d6_emg3_12)
% plot(a6, d6_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(x10, d6_emg4_1)
% hold on
% plot(x14, d6_emg4_2)
% % plot(x6_2, d6_emg4_12)
% plot(a6, d6_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(x10, d6_emg5_1)
% hold on
% plot(x14, d6_emg5_2)
% % plot(x6_2, d6_emg5_12)
% plot(a6, d6_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(x10, d6_emg6_1)
% hold on
% plot(x14, d6_emg6_2)
% % plot(x6_2, d6_emg6_12)
% plot(a6, d6_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(x10, d6_pr_1)
% hold on
% plot(x14, d6_pr_2)
% % plot(x6_2, d6_pr_12)
% plot(a6, d6_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(x10, d6_pl_1)
% hold on
% plot(x14, d6_pl_2)
% % plot(x6_2, d6_pl_12)
% plot(a6, d6_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 6 - Blueline Slapshot Drill (Shooting)')
% 
% %% DRILL 7 - HASHLINE WRISTSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(12)
% subplot(4,2,1)
% plot(x11, d7_emg1_1)
% hold on
% plot(x15, d7_emg1_2)
% % plot(x7_2, d7_emg1_12)
% plot(a7, d7_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(x11, d7_emg2_1)
% hold on
% plot(x15, d7_emg2_2)
% % plot(x7_2, d7_emg2_12)
% plot(a7, d7_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(x11, d7_emg3_1)
% hold on
% plot(x15, d7_emg3_2)
% % plot(x7_2, d7_emg3_12)
% plot(a7, d7_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(x11, d7_emg4_1)
% hold on
% plot(x15, d7_emg4_2)
% % plot(x7_2, d7_emg4_12)
% plot(a7, d7_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(x11, d7_emg5_1)
% hold on
% plot(x15, d7_emg5_2)
% % plot(x7_2, d7_emg5_12)
% plot(a7, d7_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(x11, d7_emg6_1)
% hold on
% plot(x15, d7_emg6_2)
% % plot(x7_2, d7_emg6_12)
% plot(a7, d7_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(x11, d7_pr_1)
% hold on
% plot(x15, d7_pr_2)
% % plot(x7_2, d7_pr_12)
% plot(a7, d7_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(x11, d7_pl_1)
% hold on
% plot(x15, d7_pl_2)
% % plot(x7_2, d7_pl_12)
% plot(a7, d7_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 7 - Hashline Wristshot Drill (Shooting)')
% 
% %% DRILL 8 - BLUELINE WRISTSHOT -  All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANT
% 
% figure(13)
% subplot(4,2,1)
% plot(x12, d8_emg1_1)
% hold on
% plot(x16, d8_emg1_2)
% % plot(x8_2, d8_emg1_12)
% plot(a8, d8_emg1_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(x12, d8_emg2_1)
% hold on
% plot(x16, d8_emg2_2)
% % plot(x8_2, d8_emg2_12)
% plot(a8, d8_emg2_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(x12, d8_emg3_1)
% hold on
% plot(x16, d8_emg3_2)
% % plot(x8_2, d8_emg3_12)
% plot(a8, d8_emg3_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(x12, d8_emg4_1)
% hold on
% plot(x16, d8_emg4_2)
% % plot(x8_2, d8_emg4_12)
% plot(a8, d8_emg4_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(x12, d8_emg5_1)
% hold on
% plot(x16, d8_emg5_2)
% % plot(x8_2, d8_emg5_12)
% plot(a8, d8_emg5_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(x12, d8_emg6_1)
% hold on
% plot(x16, d8_emg6_2)
% % plot(x8_2, d8_emg6_12)
% plot(a8, d8_emg6_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% ylim([0 4.8])
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(x12, d8_pr_1)
% hold on
% plot(x16, d8_pr_2)
% % plot(x8_2, d8_pr_12)
% plot(a8, d8_pr_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(x12, d8_pl_1)
% hold on
% plot(x16, d8_pl_2)
% % plot(x8_2, d8_pl_12)
% plot(a8, d8_pl_a, 'LineWidth', 1.1, 'Color', '#F879EE')
% xlim([0 10])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 8 - Blueline Wristshot Drill (Shooting)')

%% COMPARE DIFFERENT DAYS DAY 1 vs DAY 2 - Participant 1

% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(14)
% subplot(4,3,1)
% plot(x1, d1_emg1_1)
% hold on
% plot(x1, d1_emg2_1)
% plot(x1, d1_emg3_1)
% plot(x1, d1_emg4_1)
% plot(x1, d1_emg5_1)
% plot(x1, d1_emg6_1)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,4)
% plot(x2, d2_emg1_1)
% hold on
% plot(x2, d2_emg2_1)
% plot(x2, d2_emg3_1)
% plot(x2, d2_emg4_1)
% plot(x2, d2_emg5_1)
% plot(x2, d2_emg6_1)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,7)
% plot(x3, d3_emg1_1)
% hold on
% plot(x3, d3_emg2_1)
% plot(x3, d3_emg3_1)
% plot(x3, d3_emg4_1)
% plot(x3, d3_emg5_1)
% plot(x3, d3_emg6_1)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,10)
% plot(x4, d4_emg1_1)
% hold on
% plot(x4, d4_emg2_1)
% plot(x4, d4_emg3_1)
% plot(x4, d4_emg4_1)
% plot(x4, d4_emg5_1)
% plot(x4, d4_emg6_1)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,2)
% plot(x1_2, d1_emg1_12)
% hold on
% plot(x1_2, d1_emg2_12)
% plot(x1_2, d1_emg3_12)
% plot(x1_2, d1_emg4_12)
% plot(x1_2, d1_emg5_12)
% plot(x1_2, d1_emg6_12)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
% plot(x2_2, d2_emg1_12)
% hold on
% plot(x2_2, d2_emg2_12)
% plot(x2_2, d2_emg3_12)
% plot(x2_2, d2_emg4_12)
% plot(x2_2, d2_emg5_12)
% plot(x2_2, d2_emg6_12)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
% plot(x3_2, d3_emg1_12)
% hold on
% plot(x3_2, d3_emg2_12)
% plot(x3_2, d3_emg3_12)
% plot(x3_2, d3_emg4_12)
% plot(x3_2, d3_emg5_12)
% plot(x3_2, d3_emg6_12)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
% plot(x4_2, d4_emg1_12)
% hold on
% plot(x4_2, d4_emg2_12)
% plot(x4_2, d4_emg3_12)
% plot(x4_2, d4_emg4_12)
% plot(x4_2, d4_emg5_12)
% plot(x4_2, d4_emg6_12)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)') 
% multilineTitle={sprintf('All 4 Drills - Participant 1                                                                                             '),
%     sprintf('DAY A                                                                                                DAY B                                                                                                ')};
% sgtitle(multilineTitle);
% subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 20)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
% l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
% l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
% l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
% l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
% l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.65 0.23 0.15 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off

% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(11)
% subplot(2,3,1)
% plot(a1, d1_emg1_a)
% hold on
% plot(a1, d1_emg2_a)
% plot(a1, d1_emg3_a)
% plot(a1, d1_emg4_a)
% plot(a1, d1_emg5_a)
% plot(a1, d1_emg6_a)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,2)
% plot(a2, d2_emg1_a)
% hold on
% plot(a2, d2_emg2_a)
% plot(a2, d2_emg3_a)
% plot(a2, d2_emg4_a)
% plot(a2, d2_emg5_a)
% plot(a2, d2_emg6_a)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,4)
% plot(a3, d3_emg1_a)
% hold on
% plot(a3, d3_emg2_a)
% plot(a3, d3_emg3_a)
% plot(a3, d3_emg4_a)
% plot(a3, d3_emg5_a)
% plot(a3, d3_emg6_a)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,5)
% plot(a4, d4_emg1_a)
% hold on
% plot(a4, d4_emg2_a)
% plot(a4, d4_emg3_a)
% plot(a4, d4_emg4_a)
% plot(a4, d4_emg5_a)
% plot(a4, d4_emg6_a)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Averaged                                                                          ')
% subplot (2,3,[3 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
% l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
% l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
% l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
% l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
% l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(12)
% subplot(2,3,1)
% plot(a1, d1_pr_a)
% hold on
% plot(a1, d1_pl_a)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,2)
% plot(a2, d2_pr_a)
% hold on
% plot(a2, d2_pl_a)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,4)
% plot(a3, d3_pr_a)
% hold on
% plot(a3, d3_pl_a)
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,5)
% plot(a4, d4_pr_a)
% hold on
% plot(a4, d4_pl_a)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Averaged                                                                          ')
% subplot (2,3,[3 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'Right Foot Pressure Plate';
% l2 = 'Left Foot Pressure Plate';
% hleg1 = legend (l1, l2);
% set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(13)
% subplot(2,3,1)
% plot(a5, d5_emg1_a)
% hold on
% plot(a5, d5_emg2_a)
% plot(a5, d5_emg3_a)
% plot(a5, d5_emg4_a)
% plot(a5, d5_emg5_a)
% plot(a5, d5_emg6_a)
% hold off
% title('Hashline Slapshot (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,2)
% plot(a6, d6_emg1_a)
% hold on
% plot(a6, d6_emg2_a)
% plot(a6, d6_emg3_a)
% plot(a6, d6_emg4_a)
% plot(a6, d6_emg5_a)
% plot(a6, d6_emg6_a)
% hold off
% title('Hashline Wristshot (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,4)
% plot(a7, d7_emg1_a)
% hold on
% plot(a7, d7_emg2_a)
% plot(a7, d7_emg3_a)
% plot(a7, d7_emg4_a)
% plot(a7, d7_emg5_a)
% plot(a7, d7_emg6_a)
% hold off
% title('Blueline Slapshot (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,5)
% plot(a8, d8_emg1_a)
% hold on
% plot(a8, d8_emg2_a)
% plot(a8, d8_emg3_a)
% plot(a8, d8_emg4_a)
% plot(a8, d8_emg5_a)
% plot(a8, d8_emg6_a)
% hold off
% title('Blueline Wristshot (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Averaged                                                                          ')
% subplot (2,3,[3 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'EMG 1 - Brachioradialis (Right Arm)';
% l2 = 'EMG 2 - Anterior Deltoid (Right Arm)';
% l3 = 'EMG 3 - Latissimus Dorsi (Right Back)';
% l4 = 'EMG 4 - Brachioradialis (Left Arm)';
% l5 = 'EMG 5 - Anterior Deltoid (Left Arm)';
% l6 = 'EMG 6 - Latissimus Dorsi (Left Back)';
% hleg1 = legend (l1, l2, l3, l4, l5, l6);
% set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off
% 
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(14)
% subplot(2,3,1)
% plot(a5, d5_pr_a)
% hold on
% plot(a5, d5_pl_a)
% hold off
% title('Hashline Slapshot (Drill 5)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,2)
% plot(a6, d6_pr_a)
% hold on
% plot(a6, d6_pl_a)
% hold off
% title('Hashline Wristshot (Drill 6)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,4)
% plot(a7, d7_pr_a)
% hold on
% plot(a7, d7_pl_a)
% hold off
% title('Blueline Slapshot (Drill 7)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,3,5)
% plot(a8, d8_pr_a)
% hold on
% plot(a8, d8_pl_a)
% hold off
% title('Blueline Wristshot (Drill 8)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - Averaged                                                                          ')
% subplot (2,3,[3 6]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 10)';
% plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
% l1 = 'Right Foot Pressure Plate';
% l2 = 'Left Foot Pressure Plate';
% hleg1 = legend (l1, l2);
% set(hleg1,'position',[0.70 0.21 0.07 0.55], 'linewidth',1.5)
% set(gca,'fontsize',12)
% 
% axis off


figure(16)
subplot(4,2,1)
plot(a5, d5_emg1_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_emg1_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_emg1_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_emg1_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([0 4.8])
hold off
title('EMG 1 - Brachioradialis (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,3)
plot(a5, d5_emg2_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_emg2_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_emg2_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_emg2_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([0 4.8])
hold off
title('EMG 2 - Anterior Deltoid (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,5)
plot(a5, d5_emg3_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_emg3_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_emg3_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_emg3_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([0 4.8])
hold off
title('EMG 3 - Latissimus Dorsi (Right Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,2)
plot(a5, d5_emg4_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_emg4_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_emg4_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_emg4_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([0 4.8])
hold off
title('EMG 4 - Brachioradialis (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,4)
plot(a5, d5_emg5_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_emg5_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_emg5_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_emg5_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([0 4.8])
hold off
title('EMG 5 - Anterior Deltoid (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,6)
plot(a5, d5_emg6_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_emg6_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_emg6_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_emg6_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([0 4.8])
hold off
title('EMG 6 - Latissimus Dorsi (Left Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,2,7)
plot(a5, d5_pr_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_pr_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_pr_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_pr_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([-60 60])
hold off
title('Right Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
subplot(4,2,8)
plot(a5, d5_pl_a, 'LineWidth', 1.1, 'Color', '#F6A056')
hold on
plot(a6, d6_pl_a, 'LineWidth', 1.1, 'Color', '#F97DD2')
plot(a7, d7_pl_a, 'LineWidth', 1.1, 'Color', '#70D06F  ')
plot(a8, d8_pl_a, 'LineWidth', 1.1, 'Color', '#86BFFF ')
xlim([0 10])
ylim([-60 60])
hold off
title('Left Foot Pressure Plate')
xlabel('time (s)')
ylabel('Force (lb)')
sgtitle('         All Shooting Drills')