os.pullEvent = os.pullEventRaw
while true
    term.clear()
    write('Enter name new document: ')'
    local s = read()
    local b = s,'.txt'
    local d = fs.exists(b)
    if d == true then
        print('Error please select other name')
    else
    shell.run('/.os/doc/redac.lua /documents/',b)
    end
end