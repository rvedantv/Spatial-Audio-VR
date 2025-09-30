clear; close; clc;

//input wav file
[inp, fs_inp] = wavread("Sounds\demo_inp.wav");

//loading 2 channel RIR
[rir, fs_rir] = wavread("Sounds\brir.wav");

//SINGLE CHANNEL CONVOLUTION FUNCTION
function[output] = fun_conv(inp1,rir1)
    //CONVOLUTION OF TWO SIGNALS USING FFT
    output = convol(inp1,rir1);
endfunction


//obtain RIR for left channel
rir_left = rir(1,:);
//obtain RIR for right channel
rir_right = rir(2,:);

//obtain convolved signal for left channel
out_left = fun_conv(inp,rir_left);
//obtain convolved signal for right channel
out_right = fun_conv(inp,rir_right);

//obtaining stereo sound by combaining two channels
out = [out_left;out_right];
out = out/max(abs(out));

//playing convolved signal
playsnd(out,fs_inp);

//writing convolved signal
wavwrite(out,fs_inp,"Sounds\outp.wav")
