return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        enabled = true,
        prompt = " ; ",
        layout = { preset = "ivy", layout = { position = "bottom" } },
        sources = {
          explorer = { hidden = true, },
          files = { hidden = true, },
          grep = { hidden = true, },
        },
      },
      terminal = { enabled = true, },
      explorer = { enabled = true, },
      notifier = { enabled = true, },
      lazygit = { enabled = true, },
      dashboard = {
        enabled = true,
        preset = {
          keys = {
            { icon = "󰭎 ", key = "f", desc = "find file", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "󱎸 ", key = "g", desc = "find text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "p", desc = "projects", action = ":lua Snacks.dashboard.pick('projects')" },
            { icon = " ", key = "G", desc = "lazygit", action = ":LazyGit" },
            { icon = "󰣖 ", key = "c", desc = "config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = " ", key = "s", desc = "restore session", section = "session" },
            { icon = "󰒲 ", key = "L", desc = "lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "quit", action = ":qa" },
          },
          header = [[
 ______ __  ______ ______  __    __
/\__  _/\ \/\__  _/\  ___\/\ "-./  \
 \/_/\ \\ \ \/_/\ \\ \  __\\ \ \-./\ \
     \ \_\\ \_\ \ \_\\ \_____\ \_\ \ \_\
      \/_/ \/_/  \/_/ \/_____/\/_/  \/_/
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡆⠀⠀⠀⣀⠠⠄⠤⣐⡢⠆⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠿⢛⠋⡃⡒⢌⠕⠠⢡⣑⠉⠁⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠄⠒⡈⢁⠁⠢⡑⢌⠎⠆⠚⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⣄⣔⣒⢅⠠⠈⠠⣡⣰⢄⠈⠄⡈⠪⢲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠁⠉⠁⠈⠁⢈⢐⠀⡂⠨⡊⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⠠⠐⠀⢌⠌⡜⢔⢒⠠⣀⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⡁⠂⠂⡁⢌⢆⢕⠜⡐⢅⢕⢨⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⢀⢔⠔⣠⡀⠅⠂⡴⠁⠀⠁⠃⠓⠓⡐⢰⠀⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⢀⠴⡡⡕⠋⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⢀⠇⠺⢀⡀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠑⠒⠒⠚⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠚⠚⠒⠒⠀⠀⠀⠀⠀⠀
]],
        },
        sections = {
          { section = "header" },
          { section = "keys",   gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
    }
  }
}
