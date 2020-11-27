%y[n]= 2y[n-1]- y[n-2] + x[n] - x[n-L1] - x[n-L2]- x[n-L1-L2]
%assume L1 > L2 and L2 = int{L1/1.5}
[dataIn, Fs] = audioread('handel.wav');
L1=75;
L2 = 51;
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
    if n == 2
        y(1,n) =  2*y(n-1)+dataIn(n);
    end
    if n > L1+L2
       y(1,n) = 2*y(n-1) - y(n-2)+ dataIn(n) - dataIn(n-L1) - dataIn(n-L2) + dataIn(n-L1-L2);
    end
    if n > L1 && n<= L1+L2
       y(1,n) = 2*y(n-1) - y(n-2)+ dataIn(n) - dataIn(n-L1) - dataIn(n-L2) ;
    end
    if n <= L2 && ne(n,1)&& ne(n,2) 
        y(1,n) =2*y(n-1) - y(n-2)+dataIn(n);
    end
    if n > L2 && n <= L1 (ne(n,1)|| ne(n,2)) 
        y(1,n) =2*y(n-1) - y(n-2)+dataIn(n)- dataIn(n-L2);
    end
end
figure(2)
plot(frequency_audio,y)
OutputPlayer = audioplayer(y, Fs);
play(OutputPlayer);