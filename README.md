## Digital Signal Processing

##### Elementary signals:

    Impulse
    Step
    Ramp
    Sinusiodal
    Exponential

Sampling and Quantization: The sampling process builds on the sampling theorem, which states that a strictly band-limited signal with no
                            frequency components higher than W Hz is represented uniquely by a sequence of samples taken at a uniform rate greater than the Nyquist rate of 2W samples per second. The quantization process exploits the fact that any human sense, as ultimate receiver, can only detect finite intensity differences.

Modulations: Modulation is defined as process in which changing the characteristics usually 
             amplitude, frequency and phase of high frequency wave (Carrier wave) by using 
             instantaneous values of the low frequency signal (modulating signal). Need for 
             modulation: Antenna height and operating frequencies are related each other. So 
             antenna heights are comparable to the quarter wavelengths. For usual audio 
             frequencies antenna heights are unthinkable and impracticable.

            Audio frequencies are directly transmitted when there is a possibility of mixing with 
            the other frequencies in nearby station. If high frequency signals are directly 
            transmitted there is no varying parameter compared to the audio frequency. 

    AM: Amplitude modulation is defined as the process in which changing the amplitude of 
        the Carrier wave by using the instantaneous voltages of the modulating signal. In this 
        carrier Signal frequency remains constant.

    DSB-SC: DSB-SC is an amplitude modulated wave transmission scheme in which only sidebands are transmitted and the carrier is not
            transmitted as it gets suppressed. DSB-SC is an acronym for Double Sideband Suppressed Carrier. The carrier does not contain any information and its transmission results in loss of power. Thus only sidebands are transmitted that contains information. This results in saving of power used in transmission.

    SSB: Single-sideband modulation is the type in which only the upper sideband or 
         lower sideband is transmitted. It is optimum in the sense that it requires the minimum 
         transmitted power and the minimum channel bandwidth for conveying a message signal from 
         one point to another. Where SSB finds its greatest application is in the transmission of an 
         analog voice signal. Analog voice has very little energy at low frequencies (<300 Hz), that is, 
         there is an energy gap in the spectrum near the origin.

    VSB: Vestigial sideband modulation is the type in which “almost” the whole of one 
         sideband and a “vestige” of the other sideband are transmitted in a prescribed complementary 
         fashion. VSB modulation requires a channel bandwidth that is intermediate between that 
         required for SSB and DSB-SC systems, and the saving in bandwidth can be significant if 
         modulating signals with large bandwidths are being handled, as in the case of television 
         signals and high-speed data.


    Angle modulation:

        Angle modulation, in which the angle of the carrier wave is varied according to the baseband 
        signal. In this method of modulation, the amplitude of the carrier wave is maintained 
        constant. There are two common forms of angle modulation, namely, phase modulation and 
        frequency modulation. 
        
        An important feature of angle modulation is that it can provide better 
        discrimination against noise and interference than amplitude modulation. However, this 
        improvement in performance is achieved at the expense of increased transmission bandwidth. 
        That is, angle modulation provides us with a practical means of exchanging channel 
        bandwidth for improved noise performance. Such a trade-off is not possible with amplitude 
        modulation.

        PM: Phase modulation is that form of angle modulation in which the instantaneous phase of 
            carrier signal is varied linearly with the message signal. Frequency modulation (FM) is that 
            form of angle modulation in which the instantaneous frequency of carrier signal is varied 
            linearly with the message signal.

        FM: Frequency modulation (FM) is a type of angle modulation in which the frequency of a sinusoidal carrier wave deviates from a
            center frequency by an amount proportional to the instantaneous value of the message signal. In FM, the center frequency is the carrier frequency.



    ASK: Amplitude-shift keying (ASK) is a form of amplitude modulation that represents 
        digital data as variations in the amplitude of a carrier wave. In an ASK system, the 
        binary symbol 1 is represented by transmitting a fixed-amplitude carrier wave and 
        fixed frequency for a bit duration of T seconds. If the signal value is 1 then the 
        carrier signal will be transmitted; otherwise, a signal value of 0 will be transmitted.
        Any digital modulation scheme uses a finite number of distinct signals to represent 
        digital data. ASK uses a finite number of amplitudes, each assigned a unique pattern 
        of binary digits. Usually, each amplitude encodes an equal number of bits. Each 
        pattern of bits forms the symbol that is represented by the particular amplitude. The 
        demodulator, which is designed specifically for the symbol-set used by the 
        modulator, determines the amplitude of the received signal and maps it back to the 
        symbol it represents, thus recovering the original data. Frequency and phase of the 
        carrier are kept constant.

    BPSK: Binary Phase Shift Keying is a type of digital modulation technique in which we are 
        sending one bit per symbol i.e., ‘0’ or a ‘1’. Hence, the bit rate and symbol rate are the same. 
        Depending upon the message bit, we can have a phase shift of 0 degree or 180 degrees with 
        respect to a reference carrier.

    FSK: Frequency-shift keying is a frequency modulation scheme in which digital information 
        is transmitted through discrete frequency changes of a carrier signal. The technology is used 
        for communication systems such as telemetry, weather balloon radiosondes, caller ID, garage 
        door openers, and low frequency radio transmission in the VLF and ELF bands. The simplest 
        FSK is binary FSK (BFSK). BFSK uses a pair of discrete frequencies to transmit binary (0s 
        and 1s) information. With this scheme, the "1" is called the mark frequency and the "0" is 
        called the space frequency.



    Pulse Amplitude Modulation (PAM):
        It is the most basic type of Pulse Modulation. Each sample in this sort of modulation is proportional to the amplitude of the signal at the time of sampling. As the signal traces out the path of the entire wave, the PAM signal follows the amplitude of the original signal. In this case, a Nyquist-sampled signal can be reconstructed by passing it through an efficient Low Pass Filter (LPF) with a precise cutoff frequency. PAM is simple to create and demodulate. This method sends data by encoding it in the amplitude of a series of signal pulses.
    
    Pulse Width Modulation (PWM):
        Pulse Width Modulation (PWM), also known as Pulse Duration Modulation (PDM), or Pulse Time Modulation (PTM), is an analog modulation system in which the duration, width, or time of the pulse carrier varies proportionally to the instantaneous amplitude of the message signal. The width of the pulse varies in this manner, but the signal amplitude remains constant. Amplitude limiters are used to keep the signal's amplitude consistent. These circuits limit the noise by clipping the amplitude to the desired level.
    
    Pulse Position Modulation (PPM):
        The amplitude and width of the pulse are both kept constant in this sort of modulation. We alter the position of each pulse about a specific pulse. In this case, a single pulse with the required number of phase changes is sent. So, pulse position modulation is an analog modulation system in which the amplitude and breadth of the pulse remain constant while the position of the pulse concerning the direction of a reference pulse varies depending on the instantaneous value of the message signal.

    Pulse code modulation (PCM):
        PCM is a digital representation of an analog signal that takes samples of the amplitude of the analog signal at regular intervals. The sampled analog data is changed to, and then represented by, binary data.


BER: Bit-Error-Rate is the ratio of incorrectly transmitted bits to all transmitted bits, over a given time period, from one active
     device to another. 



## Digital Filter Design

IIR: The infinite impulse response (IIR) filter is a recursive filter in that the output from the filter is computed by using the current 
     and previous inputs and previous outputs. Because the filter uses previous values of the output, there is feedback of the output in the filter structure. 

FIR: In signal processing, a finite impulse response (FIR) filter is a filter whose impulse response (or response to any finite length
     input) is of finite duration, because it settles to zero in finite time. This is in contrast to infinite impulse response (IIR) filters, which may have internal feedback and may continue to respond indefinitely (usually decaying).


Low Pass Filter:

    Low Pass filter allow low-frequency signals without any attenuation (decrease in power) but it rejects any high-frequency signals.

    The low pass filter has a reactive component, whose reactance varies with the input frequency. The variation in the reactance causes the voltage drop to increase or decrease inside the circuit. if the voltage drop is larger at the output, the signal will be passed, otherwise, it is rejected by the filter.

    The passband & stopband frequencies are defined by the cutoff frequency of the filter. 

    Any frequency less than the cutoff frequency is passed without any attenuation. While any other higher frequency signal then the cutoff frequency will be blocked.


High Pass Filter:

    The type of filter that allows the high-frequency signals to pass without any attenuation in its amplitude & blocks (rejects) any low-frequency signal is called high pass filter.

    Any signal with a frequency lower than the cutoff frequency of the filter gets blocked. While any signal with a frequency higher than the cutoff frequency passes with full amplitude.



Band Pass Filter:

    This type of filter allows a specific band of frequencies & blocks any other frequencies lower or higher than its passband frequencies.

    This type of filter has two cutoff frequencies i.e. lower & upper cutoff frequency.

    Bandpass blocks low frequencies & high frequencies, while allows the frequencies in between known as the passband frequencies.

    Any input signal having frequency belonging to the passband frequencies will get passed without any attenuation.

    Combining low pass filter & a high pass filter together in a cascade configuration will provide a bandpass filter.

    The low pass filter will block high frequencies & the high pass will block low frequency, & they will pass the middle frequencies in between.


Band Reject Filter:

    This type of filter attenuates the signal whose frequencies lies in a fixed band of frequencies.

    It is also known as Band Stop filter or Notch Filter.

    It works completely opposite to the bandpass filter. It allows low-frequency signal & high-frequency signals. But it does not allow a fixed band of frequencies in between. 

    It also has lower & upper cutoff frequencies. And any signals having frequency in-between these cutoff frequencies are rejected by the filter.




