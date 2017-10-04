classdef logger < handle
    properties
        
        headerBorder='=';
        iStep=1;
        nStep
        loggerLevel
    end
    
    methods
        function obj = logger(nStep,loggerLevel)
           obj.nStep=nStep; 
           obj.loggerLevel=loggerLevel;
        end
        function logStatus(obj,statusMsg)
            disp(repmat(obj.headerBorder,1,length(statusMsg)+20))
            fprintf('Step [%d/%d]: %s\n',obj.iStep, obj.nStep,statusMsg)
            disp(repmat(obj.headerBorder,1,length(statusMsg)+20))
            obj.iStep=obj.iStep+1;
        end
        function logInfo(obj,statusMsg)
            fprintf('%s INFO: %s\n',datestr(now()),statusMsg)
        end
        function logDebug(obj,statusMsg)
            if strcmpi(obj.loggerLevel,'debug')
               fprintf('%s DEBUG: %s\n',datestr(now()),statusMsg)
            end
        end
    end
    
end