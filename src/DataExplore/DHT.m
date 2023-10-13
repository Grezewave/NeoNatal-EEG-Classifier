classdef DHT
    properties
        signal
        A
        Fi
        meanA
        meanFi
        band

        sampleRate = 200

    end
    methods
        function obj = DHT(filteredSignal, band)
            obj.signal = hilbert(filteredSignal);
            obj.A = abs(sqrt((filteredSignal.^2) + (obj.signal.^2)));

            x_ = diff(filteredSignal)*obj.sampleRate;
            xt_ = diff(obj.signal)*obj.sampleRate;

            obj.Fi = abs((1/(2*pi))*(((xt_.*filteredSignal(1:end-1))-(x_.*obj.signal(1:end-1)))./(filteredSignal(1:end-1)+obj.signal(1:end-1))));

            obj.meanA = mean(obj.A);
            obj.meanFi = mean(obj.Fi);
            obj.band = band;
        end

        function line = to_string(obj)
            line = '';

            props = properties(obj);

            noWrite = {'sampleRate', 'signal', 'A', 'Fi', 'band'};
            props = setdiff(props, noWrite);

            for i = 1:numel(props)                
                % Obter o valor do atributo
                props{i};
                value = obj.(props{i});
                
                % Adicionar o atributo e valor à linha
                line = [line num2str(value) ','];
            end

            line = [line(1:end-1)];
        end

        function line = get_headers(obj)
            line = '';

            props = properties(obj);

            noWrite = {'sampleRate', 'signal', 'A', 'Fi', 'band'};
            props = setdiff(props, noWrite);

            for i = 1:numel(props)                                
                % Adicionar o atributo e valor à linha
                line = [line (props{i}+obj.band) ','];
            end

            line = [line(1:end-1)];
        end


    end
end
