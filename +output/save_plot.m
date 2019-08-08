function save_plot(save_filename,varargin)

% only want 4 optional inputs at most
numvarargs = length(varargin);
if numvarargs > 4
    error('analysis:misc:save_plot:TooManyInputs', ...
        'requires at most 4 optional inputs');
end

% set defaults for optional inputs
optargs = {300 true true true};

% now put these defaults into the valuesToUse cell array,
% and overwrite the ones specified in varargin.
optargs(1:numvarargs) = varargin;

% Place optional args in memorable variable names
[dpi, verbose, save_eps, save_fig] = optargs{:};


if verbose
    disp('-------------------------')
    disp('Saving output from figure at filepath:')
    disp(save_filename)
    disp('-------------------------')
end


if save_eps
    if verbose
        disp('1: Saving .eps file')
    end
    formattype='-depsc';
    dpi_setting=['-r' num2str(dpi)]
    print(save_filename,formattype,dpi_setting)
end
if save_fig
    if verbose
        disp('2: Saving .fig file')
    end
    savefig(strcat(save_filename,'.fig'))
end

if verbose
    disp('End: all output saved')
    disp('-------------------------')
end
end
