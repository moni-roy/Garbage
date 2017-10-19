load mtlb
y = mtlb;
%sound(y);
subplot(2,1,1);
plot(y);
title('Speech signal');
subplot(2,1,2);
specgram(mtlb,512,Fs, kaiser(500,5),475)
%kaiser window function is selected
title('Spectrogram')