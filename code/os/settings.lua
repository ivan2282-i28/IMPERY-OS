term.clear()
os.pullEvent = os.pullEventRaw
local w,h = term.getSize()

function printc (y.s)
    local x = math.floor((w - string.len(s)) /2)
    term.setCursorBlink(x,y)
    term.clear()
    term.write(s)
end
local noption = 1
local function drawmenu()
   term.clear()
   term.setCursorPos(2,2)
   term.write("IMPERY OS")
   term.setCursorPos(w-11.1)
   if noption == 1 then
       term.write("User")
   elseif noption == 2 then
       term.write("adedd on uptdate")
   elseif noption == 3 then
       term.write("adedd on uptdate")
   elseif noption == 4 then
       term.write('Back')
   else
   end
end 
--gui
term.clear()
local function drawFronted()
   printCentered(math.floor(h/2) - 3, "")
   printCentered(math.floor(h/2) - 2, "Settings Menu")
   printCentered(math.floor(h/2) - 1, "")
   printCentered(math.floor(h/2) + 0, ((noption == 1) and " [  User  ] " or "Programs")
   printCentered(math.floor(h/2) + 1, ((noption == 2) and " [added on uptdate] " or "added on uptdate")  
   printCentered(math.floor(h/2) + 2, ((noption == 3) and " [adedd on uptdate] " or "adedd on uptdate")
   printCentered(math.floor(h/2) + 3, ((noption == 4) and " [  Back  ] " or "Settings")
end 
--displays
drawmenu()
drawFronted()
while true do
    local e,p = os.pullevent()
    if e == 'key' then
        local key = p
        if key == 17 or key == 200 then
            if noption > 1 then
                noption = noption -1
                drawmenu()
                drawFronted()
            end
        elseif key == 31 or key == 208 then
            if noption < 4 then
                noption = noption +1
                drawmenu()
                drawFronted()
            end
        end
    elseif key == 28 then
        break
    end
end
term.clear()
if noption == 1 then
    shell.run('/.os/settings/user.lua')
if noption == 2 then
    shell.run('/.os/settings.lua')
if noption == 3 then
    shell.run('/.os/settings.lua')
if noption == 4 then
    shell.run('/.os/menu.lua')
