classdef Band
    properties
        signal
        bandwidth
        power % calcular a fft ao quadrado, pegar a faixa de frequencia e integrar com trapz
              % pode usar também o spectrum.periodogram, com config 'Bartlett' e integrar com trapz
        mean
        meanAmplitude
        dht
        band

        prdgm
        %rms %remover

        sampleRate = 200
    end
    methods
        function obj = Band(signal,bandwidth,band)
            obj.bandwidth = bandwidth;
            obj.signal = bandpass(signal, obj.bandwidth, obj.sampleRate);

            Hs = spectrum.periodogram;
            obj.prdgm = psd(Hs,signal,'Fs',obj.sampleRate);
            
            %obj.rms = rms(obj.signal);
            obj.power = trapz(...
                filterDataByFrequency(...
                    obj,...
                    obj.prdgm,...
                    bandwidth(1),...
                    bandwidth(end)...
                )...
            );

            obj.meanAmplitude = mean(findpeaks(obj.signal));

            obj.mean = mean(obj.signal);
            obj.dht = DHT(obj.signal, band);
            obj.band = band;
        end
        
        function plot(obj)
            plot(obj.signal);
        end

        function line = to_string(obj)
            line = '';

            props = properties(obj);

            noWrite = {'sampleRate', 'bandwidth', 'signal', 'dht', 'band', 'prdgm'};
            props = setdiff(props, noWrite);

            for i = 1:numel(props)                
                % Obter o valor do atributo
                props{i};
                value = obj.(props{i});
                
                % Adicionar o atributo e valor à linha
                line = [line num2str(value) ','];
            end

            line = [line obj.dht.to_string() ','];

            line = [line(1:end-1)];
        end

        function line = get_headers(obj)
            line = '';

            props = properties(obj);

            noWrite = {'sampleRate', 'bandwidth', 'signal', 'dht', 'band'};
            props = setdiff(props, noWrite);

            for i = 1:numel(props)                                
                % Adicionar o atributo e valor à linha
                line = [line (props{i}+obj.band) ','];
            end

            line = [line obj.dht.get_headers() ','];

            line = [line(1:end-1)];
        end

        function filteredData = filterDataByFrequency(obj, dataObj, minFreq, maxFreq)

            % Obtenha os dados e as frequências
            data = dataObj.Data;
            frequencies = dataObj.Frequencies;

            % Encontre os índices das frequências dentro do intervalo desejado
            validIndices = find(frequencies >= minFreq & frequencies <= maxFreq);

            % Filtre os valores de Data com base nos índices válidos
            filteredData = data(validIndices);
        end
    end
       
end