
if SERVER then
    local function SearchForTauntHook(path)
        local files, directories = file.Find(path .. "*", "GAME")
        for _, fileName in ipairs(files) do
            if string.EndsWith(fileName, ".lua") then
                local filePath = path .. fileName
                local fileContents = file.Read(filePath, "GAME")
                if fileContents and string.find(fileContents, "PlayerShouldTaunt") then
                    print("Found PlayerShouldTaunt in: " .. filePath)
                end
            end
        end
        for _, dirName in ipairs(directories) do
            SearchForTauntHook(path .. dirName .. "/")
        end
    end
    concommand.Add("search_taunt_hook", function(ply)
        if IsValid(ply) and not ply:IsSuperAdmin() then return end
        print("Searching for PlayerShouldTaunt hook...")
        SearchForTauntHook("addons/")
        SearchForTauntHook("lua/autorun/")
        SearchForTauntHook("gamemodes/")
        print("Search complete!")
    end)
end

print("[JoeBigJohnsonß] taunthook checker loaded!") --remove if you want lol
