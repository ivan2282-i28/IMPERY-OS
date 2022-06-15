
os.pullEvent = os.pullEventRaw
while true then
    term.clear()
    a = fs.list('/documents/')
    print(a)
    write('Enter name document: ')
    local s = read()
    local b = s,'.txt'
    local d = fs.exists(b)
    if d == true then
        shell.run('/.os/doc/redac.lua /documents/',b)
    else then
        Print('Error')
    end
end