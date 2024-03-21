# Multi-Band FIR Filter with Low Complexity for Digital Audio Tone Control

This project implements a low-complexity multi-band FIR filter structure for a digital audio tone control unit. It leverages dual recursive running sum (DRRS) filters, a type of linear phase FIR filter, to achieve this goal.

Project Objectives

1. Design a 5-band equalizer: This equalizer allows for user-defined adjustments (in dB) to individual frequency bands, providing granular control over audio sculpting.
2. Low-complexity implementation: The project prioritizes an efficient filter design to minimize computational overhead, ensuring smooth audio processing.
3. User-friendliness: The final program incorporates a user interface that facilitates easy interaction, enabling users to define desired equalization parameters intuitively.

Technical Details

1. Filter Design: DRRS filters serve as the foundation for constructing the multi-band equalizer. Their linear phase characteristic ensures minimal signal distortion.
2. Frequency Response Masking: This technique guides the design process, optimizing the filter response based on the human auditory system's perception of different frequencies.
3. Audio Signal Representation: The project employs the Microsoft WAV format (.wav) for audio representation, taking advantage of readily available MATLAB functions (wavread, wavwrite) for file handling.
4. Sampling Frequency: An appropriate sampling frequency, suitable for audio applications, is chosen to accurately capture the audio spectrum.
5. Subband Selection: Practical considerations are made regarding the selection of subbands for the tone control system, ensuring effective manipulation of desired frequency ranges.

Implementation

1. Functionality: The core functionality focuses on processing audio signals using the designed multi-band FIR filter. The processed output should exhibit the intended frequency response adjustments.
2. Audio Quality: The processed audio should maintain high fidelity, avoiding undesirable noise or distortion beyond the targeted bandpass gains. With all gains set to 0 dB, the processed signal should remain perceptually identical to the original input, except for a minimal processing delay.
3. User Interface: For enhanced user experience, a user interface is developed to enable users to readily input their desired equalization parameters.


# This is project for ECSE 512 course. The code must not be used or copied without my consent.
