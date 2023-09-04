# MATLAB_AcousticPropertyOfMediumUsingUS_DigitalSignalProcessing

Ultrasounds can produce images due to acoustic waves and the acoustic impedance of 
tissues. The ultrasound transducer is made of a plate of piezoelectric material within two thin metal electrodes on each face. Currently, lead zirconate titanate ceramic composites are used as piezoelectric material. A current is applied to the crystals, causing them to vibrate. This vibration produces a high-frequency acoustic wave that is emitted. The wave will travel and hit a tissue, object, etc. Depending on the material’s acoustic impedance, a portion of the energy will be absorbed, and the rest will be reflected. The wave then travels back to the transducer, causing the crystals to vibrate again. The vibrations are converted into an electrical current and that signal is acquired. Filtering and signal processing is performed, and an image is displayed. 
In this project, we will be using an ultrasound transducer to visualize silicone tubes in A-mode. We will be comparing the differences in the signal of a silicone tube filled with air and one with water. 

The following were used for experiment:  1 MHz single element, focused transducer, translation and rotation stages, optical breadboard, two silicone hollow tubes within transparent silicone phantom, syringe, Digital Storage Oscilloscope, container with water, olympus 5073PR Pulser/Receiver, wires for oscilloscope, wires for pulse and receiver device. Setup can be found on Figures 1-4.

The digital data processing included generating frequency spectrum, applying Fast Fourier Transform (FFT,)  applying lowpass filtering and envelope, and visualizing.

In conclusion, four peaks representing four different boundaries reflecting the ultrasound signal were expected and present for the air measurements. However, only three were obtained for the water measurements. We suspect that this observation could be due to an error in the experimental set-up, the time taken to record the signals, or the equipment used to measure the signal. Despite this, attenuation of the ultrasound wave was observed as expected during the measurement of the silicone tube filled with water. In comparing the results of the silicone tube with air and water, we saw that the amplitude of the silicone tube filled with air was higher than that filled with water due to a greater difference in the acoustic impedances. For future experiments we recommend recording multiple sets of data to see if these results are repeatable, however, as we were limited in time, we were unable to do so. 
