-- Copyright (c) 2020-2021 hoob3rt
-- MIT license, see LICENSE for more details.
local Mode = {}

-- stylua: ignore
Mode.map = {
  ['n']      = 'NORMAL',
  ['no']     = 'O-PEND',
  ['nov']    = 'O-PEND',
  ['noV']    = 'O-PEND',
  ['no\22']  = 'O-PEND',
  ['niI']    = 'NORMAL',
  ['niR']    = 'NORMAL',
  ['niV']    = 'NORMAL',
  ['nt']     = 'NORMAL',
  ['ntT']    = 'NORMAL',
  ['v']      = 'VISUAL',
  ['vs']     = 'VISUAL',
  ['V']      = 'V-LINE',
  ['Vs']     = 'V-LINE',
  ['\22']    = 'V-BLOK',
  ['\22s']   = 'V-BLOK',
  ['s']      = 'SELECT',
  ['S']      = 'S-LINE',
  ['\19']    = 'S-BLOK',
  ['i']      = 'INSERT',
  ['ic']     = 'INSERT',
  ['ix']     = 'INSERT',
  ['R']      = 'REPLCE',
  ['Rc']     = 'REPLCE',
  ['Rx']     = 'REPLCE',
  ['Rv']     = 'V-REPL',
  ['Rvc']    = 'V-REPL',
  ['Rvx']    = 'V-REPL',
  ['c']      = 'COMMND',
  ['cv']     = 'EXMODE',
  ['ce']     = 'EXMODE',
  ['r']      = 'REPLCE',
  ['rm']     = '-MORE-',
  ['r?']     = 'CONFRM',
  ['!']      = '-SHELL',
  ['t']      = 'TERMNL',
}

---@return string current mode name
function Mode.get_mode()
  local mode_code = vim.api.nvim_get_mode().mode
  if Mode.map[mode_code] == nil then
    return mode_code
  end
  return Mode.map[mode_code]
end

return Mode
