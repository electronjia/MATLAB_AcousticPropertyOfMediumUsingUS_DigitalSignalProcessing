%BE 3344        Lab 4 - Ultrasound         04/29/2022

clear
close all
clc

%% Air Injected in Silicone Tubes
%Import data and plot signal
Air = readmatrix('BK000001.csv');
A = Air(:,2); %extracting only data from CH1
figure
plot(A)
xlabel('Sample Number')
ylabel('Intensity (V)')
title('Raw Ultrasound Signal - Air')

%Signal plotted w/ peak envelopes to visualize boundaries
figure
plot(A(5000:8000,:)) %plotting only central waveform representing reflection of silicone tube
xlabel('Sample Number')
ylabel('Intensity (V)')
hold on
envelope(A(5000:8000,:),5,'peak')
hold off
title('Ultrasound Signal with Peak Envelopes (Air)')


%Generate frequency spectrum using FFT
fs = 50000000; %sampling frequency (Hz)
L = length(A);
y = fft(A);
ds = abs(y/L); %double-sided amplitude spectrum
ss = ds(1:(L/2)+1); 
ss(2:end-1) = 2*ss(2:end-1); %single-sided amplitude spectrum
f = (0:L/2)*fs/L; %converts freq axis from freq bins to Hz
figure
plot(f,ss)
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Single-Sided Amplitude Spectrum')

%Filter the signal
T=1/fs;
t = (0:L-1)*T;

y1 = lowpass(A,300,fs);
[up,lo] = envelope(y1,5,'peak');
figure
plot(t,y1,t,up,t,lo)
hold on
title('Ultrasound Signal with Peak Envelopes (Air) after Filtered')
xlabel('Time(s)'),ylabel('Signal Intensity (V)')
hold off

% y2 = bandpass(A,[100 300],fs);
% figure
% plot(t,y2)
% hold on
% envelope(y2,5,'peak')
% title('Peak Envelopes (Bandpass Filter)')
% xlabel('Time(s)'),ylabel('Signal Intensity (V)')
% hold off

%% Water Injected in Silicone Tubes
%Import data and plot signal
Water = readmatrix('BK000002.csv');
W = Water(:,2);
figure
plot(W)
xlabel('Sample Number')
ylabel('Intensity (V)')
title('Raw Ultrasound Signal - Water') 

%Signal plotted w/ peak envelopes to visualize boundaries
figure
plot(W(5000:8000,:))
xlabel('Sample Number')
ylabel('Intensity (V)')
hold on
envelope(W(5000:8000,:),5,'peak')
hold off
title('Ultrasound Signal with Peak Envelopes (Water)')


%Generate frequency spectrum using FFT
fs = 50000000; %sampling frequency (Hz)
L = length(W);
y = fft(W);
ds = abs(y/L); %double-sided amplitude spectrum
ss = ds(1:(L/2)+1); 
ss(2:end-1) = 2*ss(2:end-1); %single-sided amplitude spectrum
f = (0:L/2)*fs/L; %converts freq axis from freq bins to Hz
figure
plot(f,ss)
xlabel('Frequency (Hz)')
ylabel('Amplitude')
title('Single-Sided Amplitude Spectrum')

%Filter the signal
T=1/fs;
t = (0:L-1)*T;

y1 = lowpass(W,300,fs);
[up,lo] = envelope(y1,5,'peak');
figure
plot(t,y1,t,up,t,lo)
title('Ultrasound Signal with Peak Envelopes (Water) after Filtered')
xlabel('Time(s)'),ylabel('Signal Intensity (V)')
hold off

% y2 = bandpass(W,[100 300],fs);
% figure
% plot(t,y2)
% hold on
% envelope(y2,5,'peak')
% title('Peak Envelopes (Bandpass Filter)')
% hold off

