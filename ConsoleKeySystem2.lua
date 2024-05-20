local input
local key = loadstring(game:HttpGet('https://pastebin.com/raw/Cn7RLBx1'))()


function begin()
  rconsoleprint("@@WHITE@@")
  rconsolename("Tutorial - Key System")
  rconsoleprint("Get Key: https://pastebin.com/\n")
  rconsoleprint("Enter Key: ")
  input = rconsoleinput()
  

  if input == key then
    rconsoleclear()
    rconsoleprint("@@LIGHT_GREEN@@")
    rconsolename("Tutorial - Main Script")
    rconsoleprint("Welcome!\n")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

  elseif input ~= key then
    rconsoleprint("@@RED@@")
    rconsoleprint("Incorrect key!\n")
    rconsolename("Wrong key!")
    wait(2)
    rconsoleclear()
    begin()
  end
end


begin()
