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


%DRILL 6 DATA - blueline slapsbone
% a6
d6_emg1_a = onHW{:, 21};
d6_emg2_a = onHW{:, 22};
d6_emg3_a = onHW{:, 23};
d6_emg4_a = onHW{:, 24};
d6_emg5_a = onHW{:, 25};
d6_emg6_a = onHW{:, 26};
d6_pr_a = onHW{:, 27}; 
d6_pl_a = onHW{:, 28}; 


%DRILL 7 DATA - hashline wrist sbone
% a7
d7_emg1_a = onBS{:, 21};
d7_emg2_a = onBS{:, 22};
d7_emg3_a = onBS{:, 23};
d7_emg4_a = onBS{:, 24};
d7_emg5_a = onBS{:, 25};
d7_emg6_a = onBS{:, 26};
d7_pr_a = onBS{:, 27}; 
d7_pl_a = onBS{:, 28};

%DRILL 8 DATA - blueline wrist sbone
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


%DRILL 6 DATA - blueline slapsbone
% a6
d6_emg1_b = offHW{:, 22};
d6_emg2_b = offHW{:, 23};
d6_emg3_b = offHW{:, 24};
d6_emg4_b = offHW{:, 25};
d6_emg5_b = offHW{:, 26};
d6_emg6_b = offHW{:, 27};
d6_pr_b = offHW{:, 28}; 
d6_pl_b = offHW{:, 29}; 


%DRILL 7 DATA - hashline wrist sbone
% a7
d7_emg1_b = offBS{:, 21};
d7_emg2_b = offBS{:, 22};
d7_emg3_b = offBS{:, 23};
d7_emg4_b = offBS{:, 24};
d7_emg5_b = offBS{:, 25};
d7_emg6_b = offBS{:, 26};
d7_pr_b = offBS{:, 27}; 
d7_pl_b = offBS{:, 28};

%DRILL 8 DATA - blueline wrist sbone
% a8
d8_emg1_b = offBW{:, 21};
d8_emg2_b = offBW{:, 22};
d8_emg3_b = offBW{:, 23};
d8_emg4_b = offBW{:, 24};
d8_emg5_b = offBW{:, 25};
d8_emg6_b = offBW{:, 26};
d8_pr_b = offBW{:, 27}; 
d8_pl_b = offBW{:, 28};




% figind = [1 2 4 5]; % locations where we actually want to imsec data
% figure(2)
% subplot(4,3,1)
% imsec(a1, d1_emg1_a)
% hold on
% imsec(a1, d1_emg2_a)
% imsec(a1, d1_emg3_a)
% imsec(a1, d1_emg4_a)
% imsec(a1, d1_emg5_a)
% imsec(a1, d1_emg6_a)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,4)
% imsec(a2, d2_emg1_a)
% hold on
% imsec(a2, d2_emg2_a)
% imsec(a2, d2_emg3_a)
% imsec(a2, d2_emg4_a)
% imsec(a2, d2_emg5_a)
% imsec(a2, d2_emg6_a)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,7)
% imsec(a3, d3_emg1_a)
% hold on
% imsec(a3, d3_emg2_a)
% imsec(a3, d3_emg3_a)
% imsec(a3, d3_emg4_a)
% imsec(a3, d3_emg5_a)
% imsec(a3, d3_emg6_a)
% hold off
% title('Laps (Drill 3)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,10)
% imsec(a4, d4_emg1_a)
% hold on
% imsec(a4, d4_emg2_a)
% imsec(a4, d4_emg3_a)
% imsec(a4, d4_emg4_a)
% imsec(a4, d4_emg5_a)
% imsec(a4, d4_emg6_a)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')      
% subplot(4,3,2)
% imsec(b1, d1_emg1_b)
% hold on
% imsec(b1, d1_emg2_b)
% imsec(b1, d1_emg3_b)
% imsec(b1, d1_emg4_b)
% imsec(b1, d1_emg5_b)
% imsec(b1, d1_emg6_b)
% hold off
% title('Cross Overs (Drill 1)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
% imsec(b2, d2_emg1_b)
% hold on
% imsec(b2, d2_emg2_b)
% imsec(b2, d2_emg3_b)
% imsec(b2, d2_emg4_b)
% imsec(b2, d2_emg5_b)
% imsec(b2, d2_emg6_b)
% hold off
% title('Stopping (Drill 2)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
% imsec(b3, d3_emg1_b)
% hold on
% imsec(b3, d3_emg2_b)
% imsec(b3, d3_emg3_b)
% imsec(b3, d3_emg4_b)
% imsec(b3, d3_emg5_b)
% imsec(b3, d3_emg6_b)
% hold off
% title('Laps (Drill 3)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
% imsec(b4, d4_emg1_b)
% hold on
% imsec(b4, d4_emg2_b)
% imsec(b4, d4_emg3_b)
% imsec(b4, d4_emg4_b)
% imsec(b4, d4_emg5_b)
% imsec(b4, d4_emg6_b)
% hold off
% title('Backwards Laps (Drill 4)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')  
% multilineTitle={sprintf('All 4 Drills                                                                                                              '),
%     sprintf('ON-ICE                                                                                                    OFF-ICE                                                                                                   ')};
% sgtitle(multilineTitle);subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 20)';
% imsec(x, nan) % imsec nans (hack to generate correct legend but imsec no data)
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
% %% COMPARING PARTICIPANT 1 ON ICE vs OFF ICE for SHOOTING
% figind = [1 2 4 5]; % locations where we actually want to imsec data
% figure(3)
% subplot(4,3,1)
% imsec(a5, d5_emg1_a)
% hold on
% imsec(a5, d5_emg2_a)
% imsec(a5, d5_emg3_a)
% imsec(a5, d5_emg4_a)
% imsec(a5, d5_emg5_a)
% imsec(a5, d5_emg6_a)
% hold off
% title('Hashline Slapsbone (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,4)
% imsec(a6, d6_emg1_a)
% hold on
% imsec(a6, d6_emg2_a)
% imsec(a6, d6_emg3_a)
% imsec(a6, d6_emg4_a)
% imsec(a6, d6_emg5_a)
% imsec(a6, d6_emg6_a)
% hold off
% title('Blueline Slapsbone (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,7)
% imsec(a7, d7_emg1_a)
% hold on
% imsec(a7, d7_emg2_a)
% imsec(a7, d7_emg3_a)
% imsec(a7, d7_emg4_a)
% imsec(a7, d7_emg5_a)
% imsec(a7, d7_emg6_a)
% hold off
% title('Hashline Wristsbone (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,10)
% imsec(a8, d8_emg1_a)
% hold on
% imsec(a8, d8_emg2_a)
% imsec(a8, d8_emg3_a)
% imsec(a8, d8_emg4_a)
% imsec(a8, d8_emg5_a)
% imsec(a8, d8_emg6_a)
% hold off
% title('Blueline Wristsbone (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')      
% subplot(4,3,2)
% imsec(b5, d5_emg1_b)
% hold on
% imsec(b5, d5_emg2_b)
% imsec(b5, d5_emg3_b)
% imsec(b5, d5_emg4_b)
% imsec(b5, d5_emg5_b)
% imsec(b5, d5_emg6_b)
% hold off
% title('Hashline Slapsbone (Drill 5)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,5)
% imsec(b6, d6_emg1_b)
% hold on
% imsec(b6, d6_emg2_b)
% imsec(b6, d6_emg3_b)
% imsec(b6, d6_emg4_b)
% imsec(b6, d6_emg5_b)
% imsec(b6, d6_emg6_b)
% hold off
% title('Blueline Slapsbone (Drill 6)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,8)
% imsec(b7, d7_emg1_b)
% hold on
% imsec(b7, d7_emg2_b)
% imsec(b7, d7_emg3_b)
% imsec(b7, d7_emg4_b)
% imsec(b7, d7_emg5_b)
% imsec(b7, d7_emg6_b)
% hold off
% title('Hashline Wristsbone (Drill 7)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')
% subplot(4,3,11)
% imsec(b8, d8_emg1_b)
% hold on
% imsec(b8, d8_emg2_b)
% imsec(b8, d8_emg3_b)
% imsec(b8, d8_emg4_b)
% imsec(b8, d8_emg5_b)
% imsec(b8, d8_emg6_b)
% hold off
% title('Blueline Wristsbone (Drill 8)')
% xlim([0 10])
% ylim([0 4.8])
% xlabel('time (s)')
% ylabel('Amplitude (mV)')  
% multilineTitle={sprintf('All 4 Shooting Drills                                                                                                 '),
%     sprintf('ON-ICE                                                                                                    OFF-ICE                                                                                                   ')};
% sgtitle(multilineTitle);subplot (4,3,[3 6 9 12]) % merge remaining subplots and put legend here
% x = linspace(0, 1, 20)';
% imsec(x, nan) % imsec nans (hack to generate correct legend but imsec no data)
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

Fs = 1/60;
[S11,F11,T11,P11] = spectrogram(d1_emg1_a,4,3,2,Fs);
[S12,F12,T12,P12] = spectrogram(d1_emg2_a,4,3,2,Fs);
[S13,F13,T13,P13] = spectrogram(d1_emg3_a,4,3,2,Fs);
[S14,F14,T14,P14] = spectrogram(d1_emg4_a,4,3,2,Fs);
[S15,F15,T15,P15] = spectrogram(d1_emg5_a,4,3,2,Fs);
[S16,F16,T16,P16] = spectrogram(d1_emg6_a,4,3,2,Fs);
s1a = S11+S12+S13+S14+S15+S16;
f1a = F11+F12+F13+F14+F15+F16;
t1a = T11+T12+T13+T14+T15+T16;
p1a = P11+P12+P13+P14+P15+P16;
[S21,F21,T21,P21] = spectrogram(d2_emg1_a,4,3,2,Fs);
[S22,F22,T22,P22] = spectrogram(d2_emg2_a,4,3,2,Fs);
[S23,F23,T23,P23] = spectrogram(d2_emg3_a,4,3,2,Fs);
[S24,F24,T24,P24] = spectrogram(d2_emg4_a,4,3,2,Fs);
[S25,F25,T25,P25] = spectrogram(d2_emg5_a,4,3,2,Fs);
[S26,F26,T26,P26] = spectrogram(d2_emg6_a,4,3,2,Fs);
s2a = S21+S22+S23+S24+S25+S26;
f2a = F21+F22+F23+F24+F25+F26;
t2a = T21+T22+T23+T24+T25+T26;
p2a = P21+P22+P23+P24+P25+P26;
[S31,F31,T31,P31] = spectrogram(d3_emg1_a,4,3,2,Fs);
[S32,F32,T32,P32] = spectrogram(d3_emg2_a,4,3,2,Fs);
[S33,F33,T33,P33] = spectrogram(d3_emg3_a,4,3,2,Fs);
[S34,F34,T34,P34] = spectrogram(d3_emg4_a,4,3,2,Fs);
[S35,F35,T35,P35] = spectrogram(d3_emg5_a,4,3,2,Fs);
[S36,F36,T36,P36] = spectrogram(d3_emg6_a,4,3,2,Fs);
s3a = S31+S32+S33+S34+S35+S36;
f3a = F31+F32+F33+F34+F35+F36;
t3a = T31+T32+T33+T34+T35+T36;
p3a = P31+P32+P33+P34+P35+P36;
[S41,F41,T41,P41] = spectrogram(d4_emg1_a,4,3,2,Fs);
[S42,F42,T42,P42] = spectrogram(d4_emg2_a,4,3,2,Fs);
[S43,F43,T43,P43] = spectrogram(d4_emg3_a,4,3,2,Fs);
[S44,F44,T44,P44] = spectrogram(d4_emg4_a,4,3,2,Fs);
[S45,F45,T45,P45] = spectrogram(d4_emg5_a,4,3,2,Fs);
[S46,F46,T46,P46] = spectrogram(d4_emg6_a,4,3,2,Fs);
s4a = S41+S42+S43+S44+S45+S46;
f4a = F41+F42+F43+F44+F45+F46;
t4a = T41+T42+T43+T44+T45+T46;
p4a = P41+P42+P43+P44+P45+P46;

[S11b,F11b,T11b,P11b] = spectrogram(d1_emg1_b,4,3,2,Fs);
[S12b,F12b,T12b,P12b] = spectrogram(d1_emg2_b,4,3,2,Fs);
[S13b,F13b,T13b,P13b] = spectrogram(d1_emg3_b,4,3,2,Fs);
[S14b,F14b,T14b,P14b] = spectrogram(d1_emg4_b,4,3,2,Fs);
[S15b,F15b,T15b,P15b] = spectrogram(d1_emg5_b,4,3,2,Fs);
[S16b,F16b,T16b,P16b] = spectrogram(d1_emg6_b,4,3,2,Fs);
s1b = S11b+S12b+S13b+S14b+S15b+S16b;
f1b = F11b+F12b+F13b+F14b+F15b+F16b;
t1b = T11b+T12b+T13b+T14b+T15b+T16b;
p1b = P11b+P12b+P13b+P14b+P15b+P16b;
[S21b,F21b,T21b,P21b] = spectrogram(d2_emg1_b,4,3,2,Fs);
[S22b,F22b,T22b,P22b] = spectrogram(d2_emg2_b,4,3,2,Fs);
[S23b,F23b,T23b,P23b] = spectrogram(d2_emg3_b,4,3,2,Fs);
[S24b,F24b,T24b,P24b] = spectrogram(d2_emg4_b,4,3,2,Fs);
[S25b,F25b,T25b,P25b] = spectrogram(d2_emg5_b,4,3,2,Fs);
[S26b,F26b,T26b,P26b] = spectrogram(d2_emg6_b,4,3,2,Fs);
s2b = S21b+S22b+S23b+S24b+S25b+S26b;
f2b = F21b+F22b+F23b+F24b+F25b+F26b;
t2b = T21b+T22b+T23b+T24b+T25b+T26b;
p2b = P21b+P22b+P23b+P24b+P25b+P26b;
[S31b,F31b,T31b,P31b] = spectrogram(d3_emg1_b,4,3,2,Fs);
[S32b,F32b,T32b,P32b] = spectrogram(d3_emg2_b,4,3,2,Fs);
[S33b,F33b,T33b,P33b] = spectrogram(d3_emg3_b,4,3,2,Fs);
[S34b,F34b,T34b,P34b] = spectrogram(d3_emg4_b,4,3,2,Fs);
[S35b,F35b,T35b,P35b] = spectrogram(d3_emg5_b,4,3,2,Fs);
[S36b,F36b,T36b,P36b] = spectrogram(d3_emg6_b,4,3,2,Fs);
s3b = S31b+S32b+S33b+S34b+S35b+S36b;
f3b = F31b+F32b+F33b+F34b+F35b+F36b;
t3b = T31b+T32b+T33b+T34b+T35b+T36b;
p3b = P31b+P32b+P33b+P34b+P35b+P36b;
[S41b,F41b,T41b,P41b] = spectrogram(d4_emg1_b,4,3,2,Fs);
[S42b,F42b,T42b,P42b] = spectrogram(d4_emg2_b,4,3,2,Fs);
[S43b,F43b,T43b,P43b] = spectrogram(d4_emg3_b,4,3,2,Fs);
[S44b,F44b,T44b,P44b] = spectrogram(d4_emg4_b,4,3,2,Fs);
[S45b,F45b,T45b,P45b] = spectrogram(d4_emg5_b,4,3,2,Fs);
[S46b,F46b,T46b,P46b] = spectrogram(d4_emg6_b,4,3,2,Fs);
s4b = S41b+S42b+S43b+S44b+S45b+S46b;
f4b = F41b+F42b+F43b+F44b+F45b+F46b;
t4b = T41b+T42b+T43b+T44b+T45b+T46b;
p4b = P41b+P42b+P43b+P44b+P45b+P46b;
% figure(1)
% subplot(4,2,1)
% surf(t1a,f1a,10*log10(abs(p1a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 1 Cross Overs')
% subplot(4,2,3)
% surf(t2a,f2a,10*log10(abs(p2a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 2 Stopping')
% subplot(4,2,5)
% surf(t3a,f3a,10*log10(abs(p3a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 3 Laps')
% subplot(4,2,7)
% surf(t4a,f4a,10*log10(abs(p4a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 4 Backwards Laps')
% subplot(4,2,2)
% surf(t1b,f1b,10*log10(abs(p1b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 1 Cross Overs')
% subplot(4,2,4)
% surf(t2b,f2b,10*log10(abs(p2b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 2 Stopping')
% subplot(4,2,6)
% surf(t3b,f3b,10*log10(abs(p3b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 3 Laps')
% subplot(4,2,8)
% surf(t4b,f4b,10*log10(abs(p4b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 4 Backwards Laps')
% multilineTitle={sprintf('   All 4 Drills'),
%     sprintf('                  ON-ICE                                                                                                      OFF-ICE        ')};
% sgtitle(multilineTitle);

Fsb = 1/10;
[S51,F51,T51,P51] = spectrogram(d5_emg1_a,4,3,2,Fsb);
[S52,F52,T52,P52] = spectrogram(d5_emg2_a,4,3,2,Fsb);
[S53,F53,T53,P53] = spectrogram(d5_emg3_a,4,3,2,Fsb);
[S54,F54,T54,P54] = spectrogram(d5_emg4_a,4,3,2,Fsb);
[S55,F55,T55,P55] = spectrogram(d5_emg5_a,4,3,2,Fsb);
[S56,F56,T56,P56] = spectrogram(d5_emg6_a,4,3,2,Fsb);
s5a = S51+S52+S53+S54+S55+S56;
f5a = F51+F52+F53+F54+F55+F56;
t5a = T51+T52+T53+T54+T55+T56;
p5a = P51+P52+P53+P54+P55+P56;
[S61,F61,T61,P61] = spectrogram(d6_emg1_a,4,3,2,Fsb);
[S62,F62,T62,P62] = spectrogram(d6_emg2_a,4,3,2,Fsb);
[S63,F63,T63,P63] = spectrogram(d6_emg3_a,4,3,2,Fsb);
[S64,F64,T64,P64] = spectrogram(d6_emg4_a,4,3,2,Fsb);
[S65,F65,T65,P65] = spectrogram(d6_emg5_a,4,3,2,Fsb);
[S66,F66,T66,P66] = spectrogram(d6_emg6_a,4,3,2,Fsb);
s6a = S61+S62+S63+S64+S65+S66;
f6a = F61+F62+F63+F64+F65+F66;
t6a = T61+T62+T63+T64+T65+T66;
p6a = P61+P62+P63+P64+P65+P66;
[S71,F71,T71,P71] = spectrogram(d7_emg1_a,4,3,2,Fsb);
[S72,F72,T72,P72] = spectrogram(d7_emg2_a,4,3,2,Fsb);
[S73,F73,T73,P73] = spectrogram(d7_emg3_a,4,3,2,Fsb);
[S74,F74,T74,P74] = spectrogram(d7_emg4_a,4,3,2,Fsb);
[S75,F75,T75,P75] = spectrogram(d7_emg5_a,4,3,2,Fsb);
[S76,F76,T76,P76] = spectrogram(d7_emg6_a,4,3,2,Fsb);
s7a = S71+S72+S73+S74+S75+S76;
f7a = F71+F72+F73+F74+F75+F76;
t7a = T71+T72+T73+T74+T75+T76;
p7a = P71+P72+P73+P74+P75+P76;
[S81,F81,T81,P81] = spectrogram(d8_emg1_a,4,3,2,Fsb);
[S82,F82,T82,P82] = spectrogram(d8_emg2_a,4,3,2,Fsb);
[S83,F83,T83,P83] = spectrogram(d8_emg3_a,4,3,2,Fsb);
[S84,F84,T84,P84] = spectrogram(d8_emg4_a,4,3,2,Fsb);
[S85,F85,T85,P85] = spectrogram(d8_emg5_a,4,3,2,Fsb);
[S86,F86,T86,P86] = spectrogram(d8_emg6_a,4,3,2,Fsb);
s8a = S81+S82+S83+S84+S85+S86;
f8a = F81+F82+F83+F84+F85+F86;
t8a = T81+T82+T83+T84+T85+T86;
p8a = P81+P82+P83+P84+P85+P86;

[S51b,F51b,T51b,P51b] = spectrogram(d5_emg1_b,4,3,2,Fsb);
[S52b,F52b,T52b,P52b] = spectrogram(d5_emg2_b,4,3,2,Fsb);
[S53b,F53b,T53b,P53b] = spectrogram(d5_emg3_b,4,3,2,Fsb);
[S54b,F54b,T54b,P54b] = spectrogram(d5_emg4_b,4,3,2,Fsb);
[S55b,F55b,T55b,P55b] = spectrogram(d5_emg5_b,4,3,2,Fsb);
[S56b,F56b,T56b,P56b] = spectrogram(d5_emg6_b,4,3,2,Fsb);
s5b = S51b+S52b+S53b+S54b+S55b+S56b;
f5b = F51b+F52b+F53b+F54b+F55b+F56b;
t5b = T51b+T52b+T53b+T54b+T55b+T56b;
p5b = P51b+P52b+P53b+P54b+P55b+P56b;
[S61b,F61b,T61b,P61b] = spectrogram(d6_emg1_b,4,3,2,Fsb);
[S62b,F62b,T62b,P62b] = spectrogram(d6_emg2_b,4,3,2,Fsb);
[S63b,F63b,T63b,P63b] = spectrogram(d6_emg3_b,4,3,2,Fsb);
[S64b,F64b,T64b,P64b] = spectrogram(d6_emg4_b,4,3,2,Fsb);
[S65b,F65b,T65b,P65b] = spectrogram(d6_emg5_b,4,3,2,Fsb);
[S66b,F66b,T66b,P66b] = spectrogram(d6_emg6_b,4,3,2,Fsb);
s6b = S61b+S62b+S63b+S64b+S65b+S66b;
f6b = F61b+F62b+F63b+F64b+F65b+F66b;
t6b = T61b+T62b+T63b+T64b+T65b+T66b;
p6b = P61b+P62b+P63b+P64b+P65b+P66b;
[S71b,F71b,T71b,P71b] = spectrogram(d7_emg1_b,4,3,2,Fsb);
[S72b,F72b,T72b,P72b] = spectrogram(d7_emg2_b,4,3,2,Fsb);
[S73b,F73b,T73b,P73b] = spectrogram(d7_emg3_b,4,3,2,Fsb);
[S74b,F74b,T74b,P74b] = spectrogram(d7_emg4_b,4,3,2,Fsb);
[S75b,F75b,T75b,P75b] = spectrogram(d7_emg5_b,4,3,2,Fsb);
[S76b,F76b,T76b,P76b] = spectrogram(d7_emg6_b,4,3,2,Fsb);
s7b = S71b+S72b+S73b+S74b+S75b+S76b;
f7b = F71b+F72b+F73b+F74b+F75b+F76b;
t7b = T71b+T72b+T73b+T74b+T75b+T76b;
p7b = P71b+P72b+P73b+P74b+P75b+P76b;
[S81b,F81b,T81b,P81b] = spectrogram(d8_emg1_b,4,3,2,Fsb);
[S82b,F82b,T82b,P82b] = spectrogram(d8_emg2_b,4,3,2,Fsb);
[S83b,F83b,T83b,P83b] = spectrogram(d8_emg3_b,4,3,2,Fsb);
[S84b,F84b,T84b,P84b] = spectrogram(d8_emg4_b,4,3,2,Fsb);
[S85b,F85b,T85b,P85b] = spectrogram(d8_emg5_b,4,3,2,Fsb);
[S86b,F86b,T86b,P86b] = spectrogram(d8_emg6_b,4,3,2,Fsb);
s8b = S81b+S82b+S83b+S84b+S85b+S86b;
f8b = F81b+F82b+F83b+F84b+F85b+F86b;
t8b = T81b+T82b+T83b+T84b+T85b+T86b;
p8b = P81b+P82b+P83b+P84b+P85b+P86b;
% figure(2)
% subplot(4,2,1)
% surf(t5a,f5a,10*log10(abs(p5a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 5 Hashline Slapshot')
% subplot(4,2,3)
% surf(t6a,f6a,10*log10(abs(p6a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 6 Blueline Slapshot')
% subplot(4,2,5)
% surf(t7a,f7a,10*log10(abs(p7a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 7 Hashline Wristshot')
% subplot(4,2,7)
% surf(t8a,f8a,10*log10(abs(p8a)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 8 Blueline Wristshot')
% subplot(4,2,2)
% surf(t5b,f5b,10*log10(abs(p5b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 5 Hashline Slapshot')
% subplot(4,2,4)
% surf(t6b,f6b,10*log10(abs(p6b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 6 Blueline Slapshot')
% subplot(4,2,6)
% surf(t7b,f7b,10*log10(abs(p7b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 7 Hashline Wristshot')
% subplot(4,2,8)
% surf(t8b,f8b,10*log10(abs(p8b)),'EdgeColor','none');   
% axis xy; axis tight; colormap(bone); view(0,90);
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Drill 8 Blueline Wristshot')
% multilineTitle={sprintf('   All 4 Shooting Drills'),
%     sprintf('                  ON-ICE                                                                                                      OFF-ICE        ')};
% sgtitle(multilineTitle);


%n
na1 = length(a1);
sum_a1 = na1*2;
nb1 = length(b1);
sum_b1 = nb1*2;

na2 = length(a2);
sum_a2 = na2*2;
nb2 = length(b2);
sum_b2 = nb2*2;

na5 = length(a5);
sum_a5 = na5*2;
nb5 = length(b5);
sum_b5 = nb5*2;

na6 = length(a6);
sum_a6 = na6*2;
nb6 = length(b6);
sum_b6 = nb6*2;



%mean and std
md1e1_a = mean(d1_emg1_a);
sd1e1_a = std(d1_emg1_a);
md1e2_a = mean(d1_emg2_a);
sd1e2_a = std(d1_emg2_a);
md1e3_a = mean(d1_emg3_a);
sd1e3_a = std(d1_emg3_a);
md1e4_a = mean(d1_emg4_a);
sd1e4_a = std(d1_emg4_a);
md1e5_a = mean(d1_emg5_a);
sd1e5_a = std(d1_emg5_a);
md1e6_a = mean(d1_emg6_a);
sd1e6_a = std(d1_emg6_a);

md1e1_b = mean(d1_emg1_b);
sd1e1_b = std(d1_emg1_b);
md1e2_b = mean(d1_emg2_b);
sd1e2_b = std(d1_emg2_b);
md1e3_b = mean(d1_emg3_b);
sd1e3_b = std(d1_emg3_b);
md1e4_b = mean(d1_emg4_b);
sd1e4_b = std(d1_emg4_b);
md1e5_b = mean(d1_emg5_b);
sd1e5_b = std(d1_emg5_b);
md1e6_b = mean(d1_emg6_b);
sd1e6_b = std(d1_emg6_b);


e1_a = ((na1-1)*(sd1e1_a.^2));
e2_a = ((na1-1)*(sd1e2_a.^2));
e3_a = ((na1-1)*(sd1e3_a.^2));
e4_a = ((na1-1)*(sd1e4_a.^2));
e5_a = ((na1-1)*(sd1e5_a.^2));
e6_a = ((na1-1)*(sd1e6_a.^2));

e1_b = ((nb1-1)*(sd1e1_b.^2));
e2_b = ((nb1-1)*(sd1e2_b.^2));
e3_b = ((nb1-1)*(sd1e3_b.^2));
e4_b = ((nb1-1)*(sd1e4_b.^2));
e5_b = ((nb1-1)*(sd1e5_b.^2));
e6_b = ((nb1-1)*(sd1e6_b.^2));

mpool_d1m1a = (md1e1_a+md1e4_a)/2;
spool_d1m1a = sqrt((e1_a+e4_a)/(sum_a1-2));
mpool_d1m2a = (md1e2_a+md1e5_a)/2;
spool_d1m2a = sqrt((e2_a+e5_a)/(sum_a1-2));
mpool_d1m3a = (md1e3_a+md1e6_a)/2;
spool_d1m3a = sqrt((e3_a+e6_a)/(sum_a1-2));

mpool_d1m1b = (md1e1_b+md1e4_b)/2;
spool_d1m1b = sqrt((e1_b+e4_b)/(sum_b1-2));
mpool_d1m2b = (md1e2_b+md1e5_b)/2;
spool_d1m2b = sqrt((e2_b+e5_b)/(sum_b1-2));
mpool_d1m3b = (md1e3_b+md1e6_b)/2;
spool_d1m3b = sqrt((e3_b+e6_b)/(sum_b1-2));

data = [mpool_d1m1a mpool_d1m1b; mpool_d1m2a mpool_d1m2b; mpool_d1m3a mpool_d1m3b];
error = [spool_d1m1a spool_d1m1b; spool_d1m2a spool_d1m2b; spool_d1m3a spool_d1m3b];
figure(1)
bg1 = bar(data, 'grouped');
hold on
[ngroups, nbars] = size(data);
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = bg1(i).XEndPoints;
end
errorbar(x',data,error,'k','linestyle','none');
set(gca,'xticklabel',{'Gastrocnemius','Bicep Femoris','Vastus Lateralis'})
hold off
title('Drill 1 - Cross Overs')
xlabel('Muscles')
ylabel('EMG Mean (mV)')

d1a = (d1_emg1_a + d1_emg2_a + d1_emg3_a + d1_emg4_a + d1_emg5_a + d1_emg6_a);
d1b = (d1_emg1_b + d1_emg2_b + d1_emg3_b + d1_emg4_b + d1_emg5_b + d1_emg6_b);
[h1,p1,ci1,stats1] = ttest2(d1a,d1b,'Vartype','unequal');
fprintf('Drill 1:\n h = %d\n p = %0.6f\n', h1, p1);

%DRILL 2
md2e1_a = mean(d2_emg1_a);
sd2e1_a = std(d2_emg1_a);
md2e2_a = mean(d2_emg2_a);
sd2e2_a = std(d2_emg2_a);
md2e3_a = mean(d2_emg3_a);
sd2e3_a = std(d2_emg3_a);
md2e4_a = mean(d2_emg4_a);
sd2e4_a = std(d2_emg4_a);
md2e5_a = mean(d2_emg5_a);
sd2e5_a = std(d2_emg5_a);
md2e6_a = mean(d2_emg6_a);
sd2e6_a = std(d2_emg6_a);

md2e1_b = mean(d2_emg1_b);
sd2e1_b = std(d2_emg1_b);
md2e2_b = mean(d2_emg2_b);
sd2e2_b = std(d2_emg2_b);
md2e3_b = mean(d2_emg3_b);
sd2e3_b = std(d2_emg3_b);
md2e4_b = mean(d2_emg4_b);
sd2e4_b = std(d2_emg4_b);
md2e5_b = mean(d2_emg5_b);
sd2e5_b = std(d2_emg5_b);
md2e6_b = mean(d2_emg6_b);
sd2e6_b = std(d2_emg6_b);

e1_2a = ((na2-1)*(sd2e1_a.^2));
e2_2a = ((na2-1)*(sd2e2_a.^2));
e3_2a = ((na2-1)*(sd2e3_a.^2));
e4_2a = ((na2-1)*(sd2e4_a.^2));
e5_2a = ((na2-1)*(sd2e5_a.^2));
e6_2a = ((na2-1)*(sd2e6_a.^2));

e1_2b = ((nb2-1)*(sd2e1_b.^2));
e2_2b = ((nb2-1)*(sd2e2_b.^2));
e3_2b = ((nb2-1)*(sd2e3_b.^2));
e4_2b = ((nb2-1)*(sd2e4_b.^2));
e5_2b = ((nb2-1)*(sd2e5_b.^2));
e6_2b = ((nb2-1)*(sd2e6_b.^2));

mpool_d2m1a = (md2e1_a+md2e4_a)/2;
spool_d2m1a = sqrt((e1_2a+e4_2a)/(sum_a2-2));
mpool_d2m2a = (md2e2_a+md2e5_a)/2;
spool_d2m2a = sqrt((e2_2a+e5_2a)/(sum_a2-2));
mpool_d2m3a = (md2e3_a+md2e6_a)/2;
spool_d2m3a = sqrt((e3_2a+e6_2a)/(sum_a2-2));

mpool_d2m1b = (md2e1_b+md2e4_b)/2;
spool_d2m1b = sqrt((e1_2b+e4_2b)/(sum_b2-2));
mpool_d2m2b = (md2e2_b+md2e5_b)/2;
spool_d2m2b = sqrt((e2_2b+e5_2b)/(sum_b2-2));
mpool_d2m3b = (md2e3_b+md2e6_b)/2;
spool_d2m3b = sqrt((e3_2b+e6_2b)/(sum_b2-2));

data2 = [mpool_d2m1a mpool_d2m1b; mpool_d2m2a mpool_d2m2b; mpool_d2m3a mpool_d2m3b];
error2 = [spool_d2m1a spool_d2m1b; spool_d2m2a spool_d2m2b; spool_d2m3a spool_d2m3b];

figure(2)
bg2 = bar(data2, 'grouped');
hold on
[ngroups, nbars] = size(data2);
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = bg2(i).XEndPoints;
end
errorbar(x',data2,error2,'k','linestyle','none');
set(gca,'xticklabel',{'Gastrocnemius','Bicep Femoris','Vastus Lateralis'})
hold off
title('Drill 2 - Stopping')
xlabel('Muscles')
ylabel('EMG Mean (mV)')

d2a = (d2_emg1_a + d2_emg2_a + d2_emg3_a + d2_emg4_a + d2_emg5_a + d2_emg6_a);
d2b = (d2_emg1_b + d2_emg2_b + d2_emg3_b + d2_emg4_b + d2_emg5_b + d2_emg6_b);
[h2,p2, ci2, stats2] = ttest2(d2a,d2b,'Vartype','unequal');
fprintf('Drill 2:\n h = %d\n p = %0.6f\n', h2, p2);

%DRILL 5
md5e1_a = mean(d5_emg1_a);
sd5e1_a = std(d5_emg1_a);
md5e2_a = mean(d5_emg2_a);
sd5e2_a = std(d5_emg2_a);
md5e3_a = mean(d5_emg3_a);
sd5e3_a = std(d5_emg3_a);
md5e4_a = mean(d5_emg4_a);
sd5e4_a = std(d5_emg4_a);
md5e5_a = mean(d5_emg5_a);
sd5e5_a = std(d5_emg5_a);
md5e6_a = mean(d5_emg6_a);
sd5e6_a = std(d5_emg6_a);

md5e1_b = mean(d5_emg1_b);
sd5e1_b = std(d5_emg1_b);
md5e2_b = mean(d5_emg2_b);
sd5e2_b = std(d5_emg2_b);
md5e3_b = mean(d5_emg3_b);
sd5e3_b = std(d5_emg3_b);
md5e4_b = mean(d5_emg4_b);
sd5e4_b = std(d5_emg4_b);
md5e5_b = mean(d5_emg5_b);
sd5e5_b = std(d5_emg5_b);
md5e6_b = mean(d5_emg6_b);
sd5e6_b = std(d5_emg6_b);

e1_5a = ((na5-1)*(sd5e1_a.^2));
e2_5a = ((na5-1)*(sd5e2_a.^2));
e3_5a = ((na5-1)*(sd5e3_a.^2));
e4_5a = ((na5-1)*(sd5e4_a.^2));
e5_5a = ((na5-1)*(sd5e5_a.^2));
e6_5a = ((na5-1)*(sd5e6_a.^2));

e1_5b = ((nb5-1)*(sd5e1_b.^2));
e2_5b = ((nb5-1)*(sd5e2_b.^2));
e3_5b = ((nb5-1)*(sd5e3_b.^2));
e4_5b = ((nb5-1)*(sd5e4_b.^2));
e5_5b = ((nb5-1)*(sd5e5_b.^2));
e6_5b = ((nb5-1)*(sd5e6_b.^2));

mpool_d5m1a = (md5e1_a+md5e4_a)/2;
spool_d5m1a = sqrt((e1_5a+e4_5a)/(sum_a2-2));
mpool_d5m2a = (md5e2_a+md5e5_a)/2;
spool_d5m2a = sqrt((e2_5a+e5_5a)/(sum_a2-2));
mpool_d5m3a = (md5e3_a+md5e6_a)/2;
spool_d5m3a = sqrt((e3_5a+e6_5a)/(sum_a2-2));

mpool_d5m1b = (md5e1_b+md5e4_b)/2;
spool_d5m1b = sqrt((e1_5b+e4_5b)/(sum_b2-2));
mpool_d5m2b = (md5e2_b+md5e5_b)/2;
spool_d5m2b = sqrt((e2_5b+e5_5b)/(sum_b2-2));
mpool_d5m3b = (md5e3_b+md5e6_b)/2;
spool_d5m3b = sqrt((e3_5b+e6_5b)/(sum_b2-2));

data5 = [mpool_d5m1a mpool_d5m1b; mpool_d5m2a mpool_d5m2b; mpool_d5m3a mpool_d5m3b];
error5 = [spool_d5m1a spool_d5m1b; spool_d5m2a spool_d5m2b; spool_d5m3a spool_d5m3b];

figure(3)
bg5 = bar(data5, 'grouped');
hold on
[ngroups, nbars] = size(data2);
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = bg2(i).XEndPoints;
end
errorbar(x',data5,error5,'k','linestyle','none');
set(gca,'xticklabel',{'Gastrocnemius','Bicep Femoris','Vastus Lateralis'})
hold off
title('Drill 5 - Hashline Slapshot')
xlabel('Muscles')
ylabel('EMG Mean (mV)')

d5a = (d5_emg1_a + d5_emg2_a + d5_emg3_a + d5_emg4_a + d5_emg5_a + d5_emg6_a);
d5b = (d5_emg1_b + d5_emg2_b + d5_emg3_b + d5_emg4_b + d5_emg5_b + d5_emg6_b);
[h5,p5, ci5, stats5] = ttest2(d5a,d5b,'Vartype','unequal');
fprintf('Drill 5:\n h = %d\n p = %0.6f\n', h5, p5);


%DRILL 2
md6e1_a = mean(d6_emg1_a);
sd6e1_a = std(d6_emg1_a);
md6e2_a = mean(d6_emg2_a);
sd6e2_a = std(d6_emg2_a);
md6e3_a = mean(d6_emg3_a);
sd6e3_a = std(d6_emg3_a);
md6e4_a = mean(d6_emg4_a);
sd6e4_a = std(d6_emg4_a);
md6e5_a = mean(d6_emg5_a);
sd6e5_a = std(d6_emg5_a);
md6e6_a = mean(d6_emg6_a);
sd6e6_a = std(d6_emg6_a);

md6e1_b = mean(d6_emg1_b);
sd6e1_b = std(d6_emg1_b);
md6e2_b = mean(d6_emg2_b);
sd6e2_b = std(d6_emg2_b);
md6e3_b = mean(d6_emg3_b);
sd6e3_b = std(d6_emg3_b);
md6e4_b = mean(d6_emg4_b);
sd6e4_b = std(d6_emg4_b);
md6e5_b = mean(d6_emg5_b);
sd6e5_b = std(d6_emg5_b);
md6e6_b = mean(d6_emg6_b);
sd6e6_b = std(d6_emg6_b);

e1_6a = ((na6-1)*(sd6e1_a.^2));
e2_6a = ((na6-1)*(sd6e2_a.^2));
e3_6a = ((na6-1)*(sd6e3_a.^2));
e4_6a = ((na6-1)*(sd6e4_a.^2));
e5_6a = ((na6-1)*(sd6e5_a.^2));
e6_6a = ((na6-1)*(sd6e6_a.^2));

e1_6b = ((nb6-1)*(sd6e1_b.^2));
e2_6b = ((nb6-1)*(sd6e2_b.^2));
e3_6b = ((nb6-1)*(sd6e3_b.^2));
e4_6b = ((nb6-1)*(sd6e4_b.^2));
e5_6b = ((nb6-1)*(sd6e5_b.^2));
e6_6b = ((nb6-1)*(sd6e6_b.^2));

mpool_d6m1a = (md6e1_a+md6e4_a)/2;
spool_d6m1a = sqrt((e1_6a+e4_6a)/(sum_a2-2));
mpool_d6m2a = (md6e2_a+md6e5_a)/2;
spool_d6m2a = sqrt((e2_6a+e5_6a)/(sum_a2-2));
mpool_d6m3a = (md6e3_a+md6e6_a)/2;
spool_d6m3a = sqrt((e3_6a+e6_6a)/(sum_a2-2));

mpool_d6m1b = (md6e1_b+md6e4_b)/2;
spool_d6m1b = sqrt((e1_6b+e4_6b)/(sum_b2-2));
mpool_d6m2b = (md6e2_b+md6e5_b)/2;
spool_d6m2b = sqrt((e2_6b+e5_6b)/(sum_b2-2));
mpool_d6m3b = (md6e3_b+md6e6_b)/2;
spool_d6m3b = sqrt((e3_6b+e6_6b)/(sum_b2-2));

data6 = [mpool_d6m1a mpool_d6m1b; mpool_d6m2a mpool_d6m2b; mpool_d6m3a mpool_d6m3b];
error6 = [spool_d6m1a spool_d6m1b; spool_d6m2a spool_d6m2b; spool_d6m3a spool_d6m3b];

figure(4)
bg6 = bar(data6, 'grouped');
hold on
[ngroups, nbars] = size(data2);
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = bg2(i).XEndPoints;
end
errorbar(x',data6,error6,'k','linestyle','none');
set(gca,'xticklabel',{'Gastrocnemius','Bicep Femoris','Vastus Lateralis'})
hold off
title('Drill 6 - Hashline Wristshot')
xlabel('Muscles')
ylabel('EMG Mean (mV)')

d6a = (d6_emg1_a + d6_emg2_a + d6_emg3_a + d6_emg4_a + d6_emg5_a + d6_emg6_a);
d6b = (d6_emg1_b + d6_emg2_b + d6_emg3_b + d6_emg4_b + d6_emg5_b + d6_emg6_b);
[h6,p6, ci6, stats6] = ttest2(d6a,d6b,'Vartype','unequal');
fprintf('Drill 6:\n h = %d\n p = %0.6f\n', h6, p6);


d4a = (d4_emg1_a + d4_emg2_a + d4_emg3_a + d4_emg4_a + d4_emg5_a + d4_emg6_a)/6;
d4b = (d4_emg1_b + d4_emg2_b + d4_emg3_b + d4_emg4_b + d4_emg5_b + d4_emg6_b)/6;
d3a = (d3_emg1_a + d3_emg2_a + d3_emg3_a + d3_emg4_a + d3_emg5_a + d3_emg6_a)/6;
d3b = (d3_emg1_b + d3_emg2_b + d3_emg3_b + d3_emg4_b + d3_emg5_b + d3_emg6_b)/6;
d7a = (d7_emg1_a + d7_emg2_a + d7_emg3_a + d7_emg4_a + d7_emg5_a + d7_emg6_a)/6;
d7b = (d7_emg1_b + d7_emg2_b + d7_emg3_b + d7_emg4_b + d7_emg5_b + d7_emg6_b)/6;
d8a = (d8_emg1_a + d8_emg2_a + d8_emg3_a + d8_emg4_a + d8_emg5_a + d8_emg6_a)/6;
d8b = (d8_emg1_b + d8_emg2_b + d8_emg3_b + d8_emg4_b + d8_emg5_b + d8_emg6_b)/6;

avgda = (d1a+d2a+d3a+d4a+d5a+d6a+d7a+d8a)/8;
bvgdb = (d1b+d2b+d3b+d4b+d5b+d6b+d7b+d8b)/8;


figure(10)
plot(avgda)
hold on
plot(bvgdb)

