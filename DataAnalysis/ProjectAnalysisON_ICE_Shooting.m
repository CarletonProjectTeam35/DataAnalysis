%% HOCKEY DATA ANALYSIS - SHOOTING ANALYSIS

%DATA

drakeBS = readtable('16_D_BlueSlap.xlsx');
drakeBW = readtable('16_D_BlueWrist.xlsx');
drakeHS = readtable('16_D_HashSlap.xlsx');
drakeHW = readtable('16_D_HashWrist.xlsx');


connorBS = readtable('16_C_BlueSlap.xlsx');
connorBW = readtable('16_C_BlueWrist.xlsx');
connorHS = readtable('16_C_HashSlap.xlsx');
connorHW = readtable('16_C_HashWrist.xlsx');

%% PERSON 1 DATA

%shooting
x9 = drakeHS{:, 2}; %time var for drake hashline slapshot
x10 = drakeBS{:, 2}; %time var for drake hashline wristshot
x11 = drakeHW{:, 2}; %time var for drake blueline slapshot
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
d6_emg1_1 = drakeBS{:, 8};
d6_emg2_1 = drakeBS{:, 9};
d6_emg3_1 = drakeBS{:, 10};
d6_emg4_1 = drakeBS{:, 11};
d6_emg5_1 = drakeBS{:, 12};
d6_emg6_1 = drakeBS{:, 13};
d6_pr_1 = drakeBS{:, 14}; 
d6_pl_1 = drakeBS{:, 15}; 


%DRILL 3 DATA - hashline wrist shot
% x11
d7_emg1_1 = drakeHW{:, 8};
d7_emg2_1 = drakeHW{:, 9};
d7_emg3_1 = drakeHW{:, 10};
d7_emg4_1 = drakeHW{:, 11};
d7_emg5_1 = drakeHW{:, 12};
d7_emg6_1 = drakeHW{:, 13};
d7_pr_1 = drakeHW{:, 14}; 
d7_pl_1 = drakeHW{:, 15};

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

%% PERSON 2 DATA


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

% x9
d5_emg1_2 = connorHS{:, 8}; %emg 1 Brachioradialis (Right Arm) 
d5_emg2_2 = connorHS{:, 9}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_2 = connorHS{:, 10}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_2 = connorHS{:, 11}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_2 = connorHS{:, 12}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_2 = connorHS{:, 13}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_2 = connorHS{:, 14}; %right pressure plate
d5_pl_2 = drakeHS{:, 15}; %left pressure plate


%DRILL 6 DATA - blueline slapshot
% x10
d6_emg1_2 = connorBS{:, 8};
d6_emg2_2 = connorBS{:, 9};
d6_emg3_2 = connorBS{:, 10};
d6_emg4_2 = connorBS{:, 11};
d6_emg5_2 = connorBS{:, 12};
d6_emg6_2 = connorBS{:, 13};
d6_pr_2 = connorBS{:, 14}; 
d6_pl_2 = connorBS{:, 15}; 


%DRILL 7 DATA - hashline wrist shot
% x11
d7_emg1_2 = connorHW{:, 8};
d7_emg2_2 = connorHW{:, 9};
d7_emg3_2 = connorHW{:, 10};
d7_emg4_2 = connorHW{:, 11};
d7_emg5_2 = connorHW{:, 12};
d7_emg6_2 = connorHW{:, 13};
d7_pr_2 = connorHW{:, 14}; 
d7_pl_2 = connorHW{:, 15};

%DRILL 8 DATA - blueline wrist shot
% x12
d8_emg1_2 = connorBW{:, 8};
d8_emg2_2 = connorBW{:, 9};
d8_emg3_2 = connorBW{:, 10};
d8_emg4_2 = connorBW{:, 11};
d8_emg5_2 = connorBW{:, 12};
d8_emg6_2 = connorBW{:, 13};
d8_pr_2 = connorBW{:, 14}; 
d8_pl_2 = connorBW{:, 15};

%% DRILL 5 - HASHLINE SLAPSHOT -  All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT

figure(10)
subplot(3,2,1)
plot(x9, d5_emg1_1)
hold on
plot(x13, d5_emg1_2)
hold off
title('EMG 1 - Brachioradialis (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,3)
plot(x9, d5_emg2_1)
hold on
plot(x13, d5_emg2_2)
hold off
title('EMG 2 - Anterior Deltoid (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,5)
plot(x9, d5_emg3_1)
hold on
plot(x13, d5_emg3_2)
hold off
title('EMG 3 - Latissimus Dorsi (Right Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,2)
plot(x9, d5_emg4_1)
hold on
plot(x13, d5_emg4_2)
hold off
title('EMG 4 - Brachioradialis (Leftt Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,4)
plot(x9, d5_emg5_1)
hold on
plot(x13, d5_emg5_2)
hold off
title('EMG 5 - Anterior Deltoid (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,6)
plot(x9, d5_emg6_1)
hold on
plot(x13, d5_emg6_2)
hold off
title('EMG 6 - Latissimus Dorsi (Left Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('Drill 5 - Hashline Slapshot Drill (Shooting)')

%% DRILL 6 - HASHLINE WRISTSHOT -  All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT

figure(11)
subplot(3,2,1)
plot(x10, d6_emg1_1)
hold on
plot(x14, d6_emg1_2)
hold off
title('EMG 1 - Brachioradialis (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,3)
plot(x10, d6_emg2_1)
hold on
plot(x14, d6_emg2_2)
hold off
title('EMG 2 - Anterior Deltoid (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,5)
plot(x10, d6_emg3_1)
hold on
plot(x14, d6_emg3_2)
hold off
title('EMG 3 - Latissimus Dorsi (Right Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,2)
plot(x10, d6_emg4_1)
hold on
plot(x14, d6_emg4_2)
hold off
title('EMG 4 - Brachioradialis (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,4)
plot(x10, d6_emg5_1)
hold on
plot(x14, d6_emg5_2)
hold off
title('EMG 5 - Anterior Deltoid (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,6)
plot(x10, d6_emg6_1)
hold on
plot(x14, d6_emg6_2)
hold off
title('EMG 6 - Latissimus Dorsi (Left Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('Drill 6 - Hashline Wristshot Drill (Shooting)')

%% DRILL 7 - BLUELINE SLAPSHOT -  All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT

figure(12)
subplot(3,2,1)
plot(x11, d7_emg1_1)
hold on
plot(x15, d7_emg1_2)
hold off
title('EMG 1 - Brachioradialis (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,3)
plot(x11, d7_emg2_1)
hold on
plot(x15, d7_emg2_2)
hold off
title('EMG 2 - Anterior Deltoid (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,5)
plot(x11, d7_emg3_1)
hold on
plot(x15, d7_emg3_2)
hold off
title('EMG 3 - Latissimus Dorsi (Right Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,2)
plot(x11, d7_emg4_1)
hold on
plot(x15, d7_emg4_2)
hold off
title('EMG 4 - Brachioradialis (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,4)
plot(x11, d7_emg5_1)
hold on
plot(x15, d7_emg5_2)
hold off
title('EMG 5 - Anterior Deltoid (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,6)
plot(x11, d7_emg6_1)
hold on
plot(x15, d7_emg6_2)
hold off
title('EMG 6 - Latissimus Dorsi (Left Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('Drill 7 - Blueline Slapshot Drill (Shooting)')

%% DRILL 8 - BLUELINE WRISTSHOT -  All Participants
% DISPLAYING 6 PLOTS OF EACH MUSCLE -- EACH PLOT HAS MULTIPLE LINES SHOWING
% THE DIFFERENT PARTICIPANT

figure(13)
subplot(3,2,1)
plot(x12, d8_emg1_1)
hold on
plot(x16, d8_emg1_2)
hold off
title('EMG 1 - Brachioradialis (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,3)
plot(x12, d8_emg2_1)
hold on
plot(x16, d8_emg2_2)
hold off
title('EMG 2 - Anterior Deltoid (Right Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,5)
plot(x12, d8_emg3_1)
hold on
plot(x16, d8_emg3_2)
hold off
title('EMG 3 - Latissimus Dorsi (Right Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,2)
plot(x12, d8_emg4_1)
hold on
plot(x16, d8_emg4_2)
hold off
title('EMG 4 - Brachioradialis (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,4)
plot(x12, d8_emg5_1)
hold on
plot(x16, d8_emg5_2)
hold off
title('EMG 5 - Anterior Deltoid (Left Arm)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(3,2,6)
plot(x12, d8_emg6_1)
hold on
plot(x16, d8_emg6_2)
hold off
title('EMG 6 - Latissimus Dorsi (Left Back)')
xlabel('time (s)')
ylabel('Amplitude (mV)')
sgtitle('Drill 8 - Blueline Wristshot Drill (Shooting)')