local util = {}

function util.CopyTable(tbl)
    local newTable = {}
    for i,v in pairs(tbl) do 
        newTable[i] = v
    end
    return newTable
end 

function util.ClearTable(tbl)
    for i,v in pairs(tbl) do 
        tbl[i] = nil
    end
end

return util