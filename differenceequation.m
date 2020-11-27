%y[n]= y[n-L1] + x[n] - x[n-1]
[dataIn, Fs] = audioread('handel.wav');
%let L1=57
L1=1;
Length_audio=length(dataIn);
%y =  zeros(1, Length_audio);
df=Fs/Length_audio;
frequency_audio=-Fs/2:df:Fs/2-df;
figure(1)
plot(frequency_audio,dataIn)
% player = audioplayer(dataIn, Fs);
% play(player);
% disp('Hit any key to continue ...');
% pause
for n = 1: Length_audio
    if n == 1 
       y(1,n) =  dataIn(n) ;
    end
    if n > L1
       y(1,n) = y(n-1) + dataIn(n) - dataIn(n-L1);
    end
    if n <= L1 && ne(n,1)
        y(1,n) = y(n-1)+dataIn(n);
    end
    
end
figure(2)
plot(frequency_audio,y)
OutputPlayer = audioplayer(y, Fs);
play(OutputPlayer);