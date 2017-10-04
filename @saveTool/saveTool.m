classdef saveTool < handle
    properties
        PYTHON_EXE_PATH='/home/philipjhj/anaconda3/bin/python'
        pySaveTool
        
        savePath
    end
    methods
        function obj = saveTool(savePath)
            %PYTHON SETUP FOR LOGGING
%             [version,executable]=pyversion;
%             if ~strcmpi(executable,obj.PYTHON_EXE_PATH)
%                pyversion PYTHON_EXE_PATH
%             end
%             
%             obj.pySaveTool=py.pyreporting.SaveTool();
            
            obj.savePath = savePath;
        end
        
        function saveTable(obj,header,table)
%            obj.pySaveTool.printTable(table,header)
        end
    end
end