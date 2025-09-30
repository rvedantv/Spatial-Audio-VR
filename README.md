# Spatial Audio VR – Convolution Reverb

This project demonstrates **audio processing for virtual reality** by applying **convolution reverb**.  
An input audio file is convolved with a **binaural room impulse response (BRIR)** to simulate spatial and room acoustics, producing a stereo output.

---

## Files in Repository

- `spatial_audio.sci` → main Scilab script (performs convolution reverb)  
- `demo_inp.wav` → example dry (input) audio file  
- `brir.wav` → 2-channel Binaural Room Impulse Response (RIR)  
- `outp.wav` → processed stereo output after convolution  

---

## How It Works

1. **Load input audio** (`demo_inp.wav`).  
2. **Load stereo RIR** (`brir.wav`).  
   - Channel 1 → left ear impulse response  
   - Channel 2 → right ear impulse response  
3. **Convolve** input with each channel separately.  
4. **Combine** into a stereo signal (N×2).  
5. **Normalize** to avoid clipping.  
6. **Play and save** the output (`outp.wav`).  

---
