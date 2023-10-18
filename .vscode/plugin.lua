function OnSetText(uri, text)
    local diffs = {}

    for start, realName, finish in text:gmatch [=[require[ ]*["']()__(.-)()["']]=] do
        diffs[#diffs+1] = {
            start  = start,
            finish = finish - 1,
            text   = realName,
        }
    end

    if #diffs == 0 then
        return nil
    end

    return diffs
end
