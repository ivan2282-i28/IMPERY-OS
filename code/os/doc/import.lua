os.pullEvent = os.pullEventRaw
while true then
    a = fs.list('/disk/')
    print(a)
    write('Enter name document :')
    local a = read()
    local g = a,'.txt'
    local w = "/disk/",g
    local d = fs.exists(w)
    if d == true then
        shell.run('copy ',w,' /documents/',g) 
        print("Success")
        shell.run('/.os/documents.lua')
    