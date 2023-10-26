classdef Eeg
    properties
        signal
        %duration removed, equal to all
        %amplitudeVariation %remover
        mean
        median
        %std %remover
        kurtosis
        skewness
        %max %remover
        %min %remover
        %rms %remover
        variance
        %entropy
        %Hjorth
        %derivate_1 %remover
        %derivate_2 %remover
        %meanDerivate_1 %remover
        %meanDerivate_2 %remover

        %sequencePeriod removed, equal to all
        meanAmplitude

        meanFrequency
        medianFrequency
        totalPower

        alpha
        delta
        theta
        beta % 13 a 30
        gamma % 30 a 100

        zzclassification

        prdgm

        sampleRate = 200
    end
    methods
        function obj = Eeg(signal, classification)
            obj.signal = signal;
            %obj.duration = size(signal, 2)/obj.sampleRate;
            %obj.amplitudeVariation = max(findpeaks(signal)) - min(findpeaks(signal));

            obj.mean = mean(signal);
            obj.median = median(signal);
            %obj.std = std(signal);
            obj.kurtosis = kurtosis(signal);
            obj.skewness = skewness(signal);
            %obj.max = max(signal);
            %obj.min = min(signal);
            %obj.rms = rms(signal);
            obj.variance = var(signal);

            %obj.derivate_1 = diff(signal)*obj.sampleRate;
            %obj.derivate_2 = diff(signal,2)*obj.sampleRate;

            %obj.meanDerivate_1 = mean(obj.derivate_1);
            %obj.meanDerivate_2 = mean(obj.derivate_2);


            %obj.sequencePeriod = seqperiod(signal);
            obj.meanAmplitude = mean(findpeaks(signal));
    
            obj.meanFrequency = meanfreq(signal);
            obj.medianFrequency = medfreq(signal);

            Hs = spectrum.periodogram;
            obj.prdgm = psd(Hs,signal,'Fs', obj.sampleRate);

            %obj.rms = rms(obj.signal);
            obj.totalPower = trapz(obj.prdgm.Data);

            obj.delta = Band(signal, [0.5 4], "delta");
            obj.alpha = Band(signal, [4 8], "alpha");
            obj.theta = Band(signal, [8 12], "theta");
            obj.beta = Band(signal, [13 30], "beta");
            obj.gamma = Band(signal, [30 100], "gamma");
 
            obj.zzclassification = classification;
        end

        function plot(obj)
            plot(obj.signal);
        end

        function line = to_string(obj)
            line = '';

            props = properties(obj);

            noWrite = {'signal', 'alpha', 'theta', 'beta', 'gamma', 'delta', 'sampleRate', 'prdgm'};
            props = setdiff(props, noWrite);

            for i = 1:numel(props)                
                % Obter o valor do atributo
                props{i};
                value = obj.(props{i});
                
                % Adicionar o atributo e valor à linha
                line = [line num2str(value) ','];
            end
            
            line = [line obj.delta.to_string() ','];
            line = [line obj.alpha.to_string() ','];
            line = [line obj.theta.to_string() ','];
            line = [line obj.beta.to_string() ','];
            line = [line obj.gamma.to_string() ','];

            line = [line(1:end-1)];
        end

        function line = get_headers(obj)
            line = '';

            props = properties(obj);

            noWrite = {'signal', 'alpha', 'theta', 'beta', 'gamma', 'delta', 'sampleRate', 'prdgm'};
            props = setdiff(props, noWrite);

            for i = 1:numel(props)                                
                % Adicionar o atributo e valor à linha
                line = [line props{i} ','];
            end

            line = [line obj.delta.get_headers() ','];
            line = [line obj.alpha.get_headers() ','];
            line = [line obj.theta.get_headers() ','];
            line = [line obj.beta.get_headers() ','];
            line = [line obj.gamma.get_headers() ','];

            line = [line(1:end-1)];
        end

    end
end