%Dsp Assignment 
%ايمان احمد الدغوشى محمد شحاته
%id : 20208057
%Group :2
%Medical Informatics
function ecg_gui()
    % Create the GUI
    hFig = figure('Position', [100, 100, 600, 400], 'MenuBar', 'none', ...
                  'Name', 'ECG Heart Rate Calculator', 'Resize', 'off');

    % Create the button
    uicontrol('Style', 'pushbutton', 'String', 'Load ECG Data', ...
              'Position', [200, 300, 200, 50], 'Callback', @load_ecg);

    % Axes for plotting
    hAxes = axes('Parent', hFig, 'Position', [0.1, 0.1, 0.8, 0.6]);

    % Load ECG data and calculate heart rate
    function load_ecg(~, ~)
        [file, path] = uigetfile('*.mat', 'Select ECG Data File');
        if isequal(file, 0)
            return; % User canceled
        end
        data = load(fullfile(path, file));
        if isfield(data, 'ecg_data')
            ecg_signal = data.ecg_data; % Assumed field name
            fs = data.sampling_rate;      % Assumed field name
            
            % Plot the ECG data
            plot(hAxes, ecg_signal);
            title('ECG Signal');
            xlabel('Samples');
            ylabel('Amplitude');

            % Calculate heart rate
            heart_rate = calculate_heart_rate(ecg_signal, fs);
            msgbox(sprintf('Heart Rate: %.2f beats/min', heart_rate), 'Heart Rate');
            
            % Myocardial dysfunction detection (basic example)
            if max(ecg_signal) < 0.5
                msgbox('Potential myocardial dysfunction detected.', 'Warning');
            end
        else
            msgbox('The file does not contain ecg_data.', 'Error');
        end
    end

    function rate = calculate_heart_rate(ecg_signal, fs)
        % Simple R-peak detection (basic thresholding)
        [pks, locs] = findpeaks(ecg_signal, 'MinPeakHeight', 0.5);
        if length(locs) < 2
            rate = 0; % Not enough peaks
            return;
        end
        rr_intervals = diff(locs) / fs; % R-R intervals in seconds
        avg_rr_interval = mean(rr_intervals);
        rate = 60 / avg_rr_interval; % Heart rate in beats/min
    end
end
