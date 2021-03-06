%%COMPARING ON ICE VS OFF ICE

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

%% PARTICIPANT 1 DATA
%OFF ICE PARTICIPANT 1
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
d1_pr_1 = drakeC{:, 14}; %right pressure plate
d1_pl_1 = drakeC{:, 15}; %left pressure plate

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
%ON ICE PARTICIPANT 1
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
rx10 = drakeRBS{:, 2}; %time var for drake hashline wristshot
rx11 = drakeRHW{:, 2}; %time var for drake blueline slapshot
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
rd6_emg1_1 = drakeRBS{:, 8};
rd6_emg2_1 = drakeRBS{:, 9};
rd6_emg3_1 = drakeRBS{:, 10};
rd6_emg4_1 = drakeRBS{:, 11};
rd6_emg5_1 = drakeRBS{:, 12};
rd6_emg6_1 = drakeRBS{:, 13};
rd6_pr_1 = drakeRBS{:, 14}; 
rd6_pl_1 = drakeRBS{:, 15}; 


%DRILL 3 DATA - hashline wrist shot
% x11
rd7_emg1_1 = drakeRHW{:, 8};
rd7_emg2_1 = drakeRHW{:, 9};
rd7_emg3_1 = drakeRHW{:, 10};
rd7_emg4_1 = drakeRHW{:, 11};
rd7_emg5_1 = drakeRHW{:, 12};
rd7_emg6_1 = drakeRHW{:, 13};
rd7_pr_1 = drakeRHW{:, 14}; 
rd7_pl_1 = drakeRHW{:, 15};

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

%% PARTICIPANT 2 DATA

%%ON ICE PARTICIPANT 2

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

%OFF ICE PARTICIPANT 2
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
rx14 = connorRBS{:, 2}; %time var for drake hashline wristshot
rx15 = connorRHW{:, 2}; %time var for drake blueline slapshot
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
rd5_pl_2 = drakeRHS{:, 15}; %left pressure plate


%DRILL 6 DATA - blueline slapshot
% x10
rd6_emg1_2 = connorRBS{:, 8};
rd6_emg2_2 = connorRBS{:, 9};
rd6_emg3_2 = connorRBS{:, 10};
rd6_emg4_2 = connorRBS{:, 11};
rd6_emg5_2 = connorRBS{:, 12};
rd6_emg6_2 = connorRBS{:, 13};
rd6_pr_2 = connorRBS{:, 14}; 
rd6_pl_2 = connorRBS{:, 15}; 


%DRILL 7 DATA - hashline wrist shot
% x11
rd7_emg1_2 = connorRHW{:, 8};
rd7_emg2_2 = connorRHW{:, 9};
rd7_emg3_2 = connorRHW{:, 10};
rd7_emg4_2 = connorRHW{:, 11};
rd7_emg5_2 = connorRHW{:, 12};
rd7_emg6_2 = connorRHW{:, 13};
rd7_pr_2 = connorRHW{:, 14}; 
rd7_pl_2 = connorRHW{:, 15};

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

% %% COMPARING PARTICIPANT 1 ON ICE vs OFF ICE for Each Drill
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(1)
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
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
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
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
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
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
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
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)') 
% multilineTitle={sprintf('All 4 Drills - Participant 1                                                                                               '),
%     sprintf('ON-ICE                                                                                                    OFF-ICE                                                                                                   ')};
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

% 
% %% COMPARING PARTICIPANT 2 ON ICE vs OFF ICE for SHOOTING
% figind = [1 2 4 5]; % locations where we actually want to plot data
% figure(4)
% subplot(4,3,1)
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
% subplot(4,3,4)
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
% subplot(4,3,7)
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
% subplot(4,3,10)
% plot(x16, d8_emg1_2)
% hold on
% plot(x16, d8_emg2_2)
% plot(x16, d8_emg3_2)
% plot(x16, d8_emg4_2)
% plot(x16, d8_emg5_2)
% plot(x16, d8_emg6_2)
% hold off
% title('Blueline Wristshot (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,2)
% plot(rx13, rd5_emg1_2)
% hold on
% plot(rx13, rd5_emg2_2)
% plot(rx13, rd5_emg3_2)
% plot(rx13, rd5_emg4_2)
% plot(rx13, rd5_emg5_2)
% plot(rx13, rd5_emg6_2)
% hold off
% title('Hashline Slapshot (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
% plot(rx14, rd6_emg1_2)
% hold on
% plot(rx14, rd6_emg2_2)
% plot(rx14, rd6_emg3_2)
% plot(rx14, rd6_emg4_2)
% plot(rx14, rd6_emg5_2)
% plot(rx14, rd6_emg6_2)
% hold off
% title('Blueline Slapshot (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
% plot(rx15, rd7_emg1_2)
% hold on
% plot(rx15, rd7_emg2_2)
% plot(rx15, rd7_emg3_2)
% plot(rx15, rd7_emg4_2)
% plot(rx15, rd7_emg5_2)
% plot(rx15, rd7_emg6_2)
% hold off
% title('Hashline Wristshot (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
% plot(rx16, rd8_emg1_2)
% hold on
% plot(rx16, rd8_emg2_2)
% plot(rx16, rd8_emg3_2)
% plot(rx16, rd8_emg4_2)
% plot(rx16, rd8_emg5_2)
% plot(rx16, rd8_emg6_2)
% hold off
% title('Blueline Wristshot (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)') 
% multilineTitle={sprintf('All 4 Shooting Drills - Participant 2                                                                                      '),
%     sprintf('ON-ICE                                                                                                    OFF-ICE                                                                                                   ')};
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

%ROLLER BLADING
offC = readtable('OFF_Cross.xlsx');
offS = readtable('OFF_Stop.xlsx');
offL = readtable('OFF_Laps.xlsx');
offB = readtable('OFF_Back.xlsx');
offHW = readtable('OFF_HW.xlsx');
offHS = readtable('OFF_HS.xlsx');
offBW = readtable('OFF_BW.xlsx');
offBS = readtable('OFF_BS.xlsx');

b1 = offC{:,20};
b2 = offS{:,20};
b3 = offL{:,20};
b4 = offB{:,20};
b5 = offHS{:,21};
b6 = offHW{:,21};
b7 = offBS{:,20};
b8 = offBW{:,20};


%DRILL 1 DATA 
% a1
d1_emg1_b = offC{:, 21};
d1_emg2_b = offC{:, 22};
d1_emg3_b = offC{:, 23};
d1_emg4_b = offC{:, 24};
d1_emg5_b = offC{:, 25};
d1_emg6_b = offC{:, 26};
d1_pr_b = offC{:, 27}; 
d1_pl_b = offC{:, 28};
% 
%DRILL 2 DATA
% a2
d2_emg1_b = offS{:, 21};
d2_emg2_b = offS{:, 22};
d2_emg3_b = offS{:, 23};
d2_emg4_b = offS{:, 24};
d2_emg5_b = offS{:, 25};
d2_emg6_b = offS{:, 26};
d2_pr_b = offS{:, 27}; 
d2_pl_b = offS{:, 28};

%DRILL 3 DATA 
% a3
d3_emg1_b = offL{:, 21};
d3_emg2_b = offL{:, 22};
d3_emg3_b = offL{:, 23};
d3_emg4_b = offL{:, 24};
d3_emg5_b = offL{:, 25};
d3_emg6_b = offL{:, 26};
d3_pr_b = offL{:, 27}; 
d3_pl_b = offL{:, 28};

%DRILL 4 DATA 
% a4
d4_emg1_b = offB{:, 21};
d4_emg2_b = offB{:, 22};
d4_emg3_b = offB{:, 23};
d4_emg4_b = offB{:, 24};
d4_emg5_b = offB{:, 25};
d4_emg6_b = offB{:, 26};
d4_pr_b = offB{:, 27}; 
d4_pl_b = offB{:, 28};

% a5
d5_emg1_b = offHS{:, 22}; %emg 1 Brachioradialis (Right Arm) 
d5_emg2_b = offHS{:, 23}; %emg 2 Anterior Deltoid (Right Arm)
d5_emg3_b = offHS{:, 24}; %emg 3 Vastus Lateralis (Right Leg)
d5_emg4_b = offHS{:, 25}; %emg 4 Brachioradialis (Left Arm)
d5_emg5_b = offHS{:, 26}; %emg 5 Anterior Deltoid (Left Arm)
d5_emg6_b = offHS{:, 27}; %emg 6 Latissimus Dorsi (Left Back)
d5_pr_b = offHS{:, 28}; %right pressure plate
d5_pl_b = offHS{:, 29}; %left pressure plate


%DRILL 6 DATA - blueline slapshot
% a6
d6_emg1_b = offHW{:, 22};
d6_emg2_b = offHW{:, 23};
d6_emg3_b = offHW{:, 24};
d6_emg4_b = offHW{:, 25};
d6_emg5_b = offHW{:, 26};
d6_emg6_b = offHW{:, 27};
d6_pr_b = offHW{:, 28}; 
d6_pl_b = offHW{:, 29}; 


%DRILL 7 DATA - hashline wrist shot
% a7
d7_emg1_b = offBS{:, 21};
d7_emg2_b = offBS{:, 22};
d7_emg3_b = offBS{:, 23};
d7_emg4_b = offBS{:, 24};
d7_emg5_b = offBS{:, 25};
d7_emg6_b = offBS{:, 26};
d7_pr_b = offBS{:, 27}; 
d7_pl_b = offBS{:, 28};

%DRILL 8 DATA - blueline wrist shot
% a8
d8_emg1_b = offBW{:, 21};
d8_emg2_b = offBW{:, 22};
d8_emg3_b = offBW{:, 23};
d8_emg4_b = offBW{:, 24};
d8_emg5_b = offBW{:, 25};
d8_emg6_b = offBW{:, 26};
d8_pr_b = offBW{:, 27}; 
d8_pl_b = offBW{:, 28};

% %% DRILL 1 - CROSS-OVERS - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% 
% figure(1)
% subplot(4,2,1)
% plot(a1, d1_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a1, d1_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a1, d1_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a1, d1_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a1, d1_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a1, d1_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a1, d1_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a1, d1_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b1, d1_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 1 - Cross-Over Drill')
% 
% %% DRILL 2 - STOPPING - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% 
% figure(2)
% subplot(4,2,1)
% plot(a2, d2_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a2, d2_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a2, d2_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a2, d2_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a2, d2_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a2, d2_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a2, d2_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a2, d2_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b2, d2_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 2 - Stopping Drill')
% 
% %% DRILL 3 - LAPS - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% 
% figure(3)
% subplot(4,2,1)
% plot(a3, d3_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a3, d3_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a3, d3_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a3, d3_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a3, d3_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a3, d3_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a3, d3_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a3, d3_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b3, d3_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 3 - Laps Drill')
% 
% %% DRILL 4 - BACKWARDS LAPS - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% 
% figure(4)
% subplot(4,2,1)
% plot(a4, d4_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 1 - Gastrocnemius (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a4, d4_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 2 - Bicep Femoris (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a4, d4_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 3 - Vastus Lateralis (Right Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a4, d4_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 4 - Gastrocnemius (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a4, d4_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 5 - Bicep Femoris (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a4, d4_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% ylim([0 5])
% hold off
% title('EMG 6 - Vastus Lateralis (Left Leg)')
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a4, d4_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Right Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a4, d4_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b4, d4_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% xlim([0 60])
% hold off
% title('Left Foot Pressure Plate')
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 4 - Backwards Laps Drill')
% 
% %% DRILL 5 - HASHLINE SLAP - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% figure(5)
% subplot(4,2,1)
% plot(a5, d5_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a5, d5_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a5, d5_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a5, d5_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a5, d5_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a5, d5_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a5, d5_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a5, d5_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b5, d5_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 5 - Hashline Slapshot Drill (Shooting)')
% 
% %% DRILL 6 - HASHLINE WRIST - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% figure(6)
% subplot(4,2,1)
% plot(a6, d6_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a6, d6_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a6, d6_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a6, d6_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a6, d6_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a6, d6_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a6, d6_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a6, d6_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b6, d6_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 6 - Hashline Wristshot Drill (Shooting)')
% 
% %% DRILL 7 - BLUELINE SLAP - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% figure(7)
% subplot(4,2,1)
% plot(a7, d7_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a7, d7_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a7, d7_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a7, d7_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a7, d7_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a7, d7_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a7, d7_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a7, d7_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b7, d7_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 7 - Blueline Slapshot Drill (Shooting)')
% 
% %% DRILL 8 - BLUELINE WRIST - All Participants
% % DISPLAYING 6 PLOTS OF EACH MUSCLE 
% % EACH PLOT HAS MULTIPLE LINES SHOWING
% % THE DIFFERENT PARTICIPANTS
% figure(8)
% subplot(4,2,1)
% plot(a8, d8_emg1_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_emg1_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 1 - Brachioradialis (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,3)
% plot(a8, d8_emg2_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_emg2_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 2 - Anterior Deltoid (Right Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,5)
% plot(a8, d8_emg3_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_emg3_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 3 - Latissimus Dorsi (Right Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,2)
% plot(a8, d8_emg4_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_emg4_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 4 - Brachioradialis (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,4)
% plot(a8, d8_emg5_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_emg5_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 5 - Anterior Deltoid (Left Arm)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,6)
% plot(a8, d8_emg6_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_emg6_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('EMG 6 - Latissimus Dorsi (Left Back)')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,2,7)
% plot(a8, d8_pr_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_pr_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Right Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% subplot(4,2,8)
% plot(a8, d8_pl_a, 'LineWidth', 1.1, 'Color', '#79C9F8')
% hold on
% plot(b8, d8_pl_b, 'LineWidth', 1.1, 'Color', '#F6A056')
% hold off
% title('Left Foot Pressure Plate')
% xlim([0 10])
% xlabel('time (s)')
% ylabel('Force (lb)')
% sgtitle('Drill 8 - Blueline Wristshot Drill (Shooting)')

%% COMPARING PARTICIPANT 1 ON ICE vs OFF ICE for SHOOTING
figind = [1 2 4 5]; % locations where we actually want to plot data
figure(2)
subplot(4,3,1)
plot(a1, d1_emg1_a)
hold on
plot(a1, d1_emg2_a)
plot(a1, d1_emg3_a)
plot(a1, d1_emg4_a)
plot(a1, d1_emg5_a)
plot(a1, d1_emg6_a)
hold off
title('Cross Overs (Drill 1)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,4)
plot(a2, d2_emg1_a)
hold on
plot(a2, d2_emg2_a)
plot(a2, d2_emg3_a)
plot(a2, d2_emg4_a)
plot(a2, d2_emg5_a)
plot(a2, d2_emg6_a)
hold off
title('Stopping (Drill 2)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,7)
plot(a3, d3_emg1_a)
hold on
plot(a3, d3_emg2_a)
plot(a3, d3_emg3_a)
plot(a3, d3_emg4_a)
plot(a3, d3_emg5_a)
plot(a3, d3_emg6_a)
hold off
title('Laps (Drill 3)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,10)
plot(a4, d4_emg1_a)
hold on
plot(a4, d4_emg2_a)
plot(a4, d4_emg3_a)
plot(a4, d4_emg4_a)
plot(a4, d4_emg5_a)
plot(a4, d4_emg6_a)
hold off
title('Backwards Laps (Drill 4)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')      
subplot(4,3,2)
plot(b1, d1_emg1_b)
hold on
plot(b1, d1_emg2_b)
plot(b1, d1_emg3_b)
plot(b1, d1_emg4_b)
plot(b1, d1_emg5_b)
plot(b1, d1_emg6_b)
hold off
title('Cross Overs (Drill 1)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,5)
plot(b2, d2_emg1_b)
hold on
plot(b2, d2_emg2_b)
plot(b2, d2_emg3_b)
plot(b2, d2_emg4_b)
plot(b2, d2_emg5_b)
plot(b2, d2_emg6_b)
hold off
title('Stopping (Drill 2)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,8)
plot(b3, d3_emg1_b)
hold on
plot(b3, d3_emg2_b)
plot(b3, d3_emg3_b)
plot(b3, d3_emg4_b)
plot(b3, d3_emg5_b)
plot(b3, d3_emg6_b)
hold off
title('Laps (Drill 3)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,11)
plot(b4, d4_emg1_b)
hold on
plot(b4, d4_emg2_b)
plot(b4, d4_emg3_b)
plot(b4, d4_emg4_b)
plot(b4, d4_emg5_b)
plot(b4, d4_emg6_b)
hold off
title('Backwards Laps (Drill 4)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')  
multilineTitle={sprintf('All 4 Drills                                                                                                              '),
    sprintf('ON-ICE                                                                                                    OFF-ICE                                                                                                   ')};
sgtitle(multilineTitle);subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
x = linspace(0, 1, 20)';
plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
l1 = 'EMG 1 - Gastrocnemius (Right Leg)';
l2 = 'EMG 2 - Bicep Femoris (Right Leg)';
l3 = 'EMG 3 - Vastus Lateralis (Right Leg)';
l4 = 'EMG 4 - Gastrocnemius (Left Leg)';
l5 = 'EMG 5 - Bicep Femoris (Left Leg)';
l6 = 'EMG 6 - Vastus Lateralis (Left Leg)';
hleg1 = legend (l1, l2, l3, l4, l5, l6);
set(hleg1,'position',[0.65 0.23 0.15 0.55], 'linewidth',1.5)
set(gca,'fontsize',12)

axis off


%% COMPARING PARTICIPANT 1 ON ICE vs OFF ICE for SHOOTING
figind = [1 2 4 5]; % locations where we actually want to plot data
figure(3)
subplot(4,3,1)
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
subplot(4,3,4)
plot(a6, d6_emg1_a)
hold on
plot(a6, d6_emg2_a)
plot(a6, d6_emg3_a)
plot(a6, d6_emg4_a)
plot(a6, d6_emg5_a)
plot(a6, d6_emg6_a)
hold off
title('Blueline Slapshot (Drill 6)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,7)
plot(a7, d7_emg1_a)
hold on
plot(a7, d7_emg2_a)
plot(a7, d7_emg3_a)
plot(a7, d7_emg4_a)
plot(a7, d7_emg5_a)
plot(a7, d7_emg6_a)
hold off
title('Hashline Wristshot (Drill 7)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,10)
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
subplot(4,3,2)
plot(b5, d5_emg1_b)
hold on
plot(b5, d5_emg2_b)
plot(b5, d5_emg3_b)
plot(b5, d5_emg4_b)
plot(b5, d5_emg5_b)
plot(b5, d5_emg6_b)
hold off
title('Hashline Slapshot (Drill 5)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,5)
plot(b6, d6_emg1_b)
hold on
plot(b6, d6_emg2_b)
plot(b6, d6_emg3_b)
plot(b6, d6_emg4_b)
plot(b6, d6_emg5_b)
plot(b6, d6_emg6_b)
hold off
title('Blueline Slapshot (Drill 6)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,8)
plot(b7, d7_emg1_b)
hold on
plot(b7, d7_emg2_b)
plot(b7, d7_emg3_b)
plot(b7, d7_emg4_b)
plot(b7, d7_emg5_b)
plot(b7, d7_emg6_b)
hold off
title('Hashline Wristshot (Drill 7)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')
subplot(4,3,11)
plot(b8, d8_emg1_b)
hold on
plot(b8, d8_emg2_b)
plot(b8, d8_emg3_b)
plot(b8, d8_emg4_b)
plot(b8, d8_emg5_b)
plot(b8, d8_emg6_b)
hold off
title('Blueline Wristshot (Drill 8)')
xlim([0 10])
ylim([0 4.8])
xlabel('time (s)')
ylabel('Amplitude (mV)')  
multilineTitle={sprintf('All 4 Shooting Drills                                                                                                 '),
    sprintf('ON-ICE                                                                                                    OFF-ICE                                                                                                   ')};
sgtitle(multilineTitle);
subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
x = linspace(0, 1, 20)';
plot(x, nan) % plot nans (hack to generate correct legend but plot no data)
l1 = 'EMG 1 - Brachioradialis (Right Arm)';
l2 = 'EMG 2 - Anterior Deltoid (Right Arm)';
l3 = 'EMG 3 - Latissimus Dorsi (Right Back)';
l4 = 'EMG 4 - Brachioradialis (Left Arm)';
l5 = 'EMG 5 - Anterior Deltoid (Left Arm)';
l6 = 'EMG 6 - Latissimus Dorsi (Left Back)';
hleg1 = legend (l1, l2, l3, l4, l5, l6);
set(hleg1,'position',[0.65 0.23 0.15 0.55], 'linewidth',1.5)
set(gca,'fontsize',12)

axis off


% %% COMPARING PARTICIPANT 2 ON ICE vs OFF ICE for Each Drill
% 
% figure(4)
% subplot(2,2,1)
% plot(a1, d1_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a1, d1_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a1, d1_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b1, d1_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b1, d1_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b1, d1_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,2,2)
% plot(a2, d2_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a2, d2_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a2, d2_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b2, d2_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b2, d2_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b2, d2_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Stopping (Drill 2)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,2,3)
% plot(a3, d3_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a3, d3_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a3, d3_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b3, d3_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b3, d3_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b3, d3_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Laps (Drill 3)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,2,4)
% plot(a4, d4_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a4, d4_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a4, d4_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b4, d4_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b4, d4_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b4, d4_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 60])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% sgtitle('All 4 Drills - ON-ICE vs OFF-ICE');
% 
% % l4 = 'ON EMG 4 - Gastrocnemius (Left Leg)';
% % l5 = 'ON EMG 5 - Bicep Femoris (Left Leg)';
% % l6 = 'ON EMG 6 - Vastus Lateralis (Left Leg)';
% % l10 = 'OFF EMG 4 - Gastrocnemius (Left Leg)';
% % l11 = 'OFF EMG 5 - Bicep Femoris (Left Leg)';
% % l12 = 'OFF EMG 6 - Vastus Lateralis (Left Leg)';
% 
% 
% %% COMPARING PARTICIPANT 1 ON ICE vs OFF ICE for SHOOTING
% 
% figure(5)
% subplot(2,2,1)
% plot(a5, d5_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a5, d5_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a5, d5_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b5, d5_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b5, d5_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b5, d5_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Hashline Slapshot (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,2,2)
% plot(a6, d6_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a6, d6_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a6, d6_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b6, d6_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b6, d6_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b6, d6_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Blueline Slapshot (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,2,3)
% plot(a7, d7_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a7, d7_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a7, d7_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b7, d7_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b7, d7_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b7, d7_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Hashline Wristshot (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(2,2,4)
% plot(a8, d8_emg4_a, 'linewidth', 0.7, 'Color', '#9B81F9 ')
% hold on
% plot(a8, d8_emg5_a, 'linewidth', 0.7, 'Color', '#819CF9 ')
% plot(a8, d8_emg6_a, 'linewidth', 0.7, 'Color', '#70C1CA ')
% plot(b8, d8_emg4_b, 'linewidth', 0.7, 'Color', '#DA6060 ')
% plot(b8, d8_emg5_b, 'linewidth', 0.7, 'Color', '#E99459')
% plot(b8, d8_emg6_b, 'linewidth', 0.7, 'Color', '#E171A0')
% hold off
% title('Blueline Wristshot (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')                                                                                                                                                     
% sgtitle('All 4 Shooting Drills - ON-ICE vs OFF-ICE');
% 
% % l4 = 'ON EMG 4 - Brachioradialis (Left Arm)';
% % l5 = 'ON EMG 5 - Anterior Deltoid (Left Arm)';
% % l6 = 'ON EMG 6 - Latissimus Dorsi (Left Back)';
% % l10 = 'OFF EMG 4 - Brachioradialis (Left Arm)';
% % l11 = 'OFF EMG 5 - Anterior Deltoid (Left Arm)';
% % l12 = 'OFF EMG 6 - Latissimus Dorsi (Left Back)';
% 
