#!/usr/bin/env th

require 'torch'
require 'nn'

local parse = require("parse")

-- Train our network


-- Now handle requests!

if arg[1] == 'train' then
  -- test network here

  print('Testing:')

  local rnn = nn.Sequential()
  local tbl = parse.read_file("sarcasm_v2.csv")
  print(tbl)

  os.exit()
end

local socket = require 'socket'
local s = assert(socket.bind('localhost', 12345))
local c = assert(s:accept())

while true do
  print('iterating')
  local line = c:receive()
  if line then
    print('got', line)
    from:send("helo!\n")
    print('written')
  else
    print("nil line")
  end
  print('here')
  if line == 'quit' then 
    print('there')
    from:send("You quit!\n")
    break
  end
  print('finished loop')
end

