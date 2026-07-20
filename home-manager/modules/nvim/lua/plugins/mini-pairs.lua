return {
    "nvim-mini/mini.pairs",
    opts = {
        modes = { insert = true, command = false, terminal = false },
        mappings = {
            ['('] = { action = 'open', pair = '()', neigh_patter = '^[^\\]'},
            ['['] = { action = 'open', pair = '[]', neigh_patter = '^[^\\]'},
            ['{'] = { action = 'open', pair = '{}', neigh_patter = '^[^\\]'},

            [')'] = { action = 'close', pair = '()', neigh_patter = '^[^\\]'},
            [']'] = { action = 'close', pair = '[]', neigh_patter = '^[^\\]'},
            ['}'] = { action = 'close', pair = '{}', neigh_patter = '^[^\\]'},

            ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '^[^\\]', register = { cr = false } },
            ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '^[^\\]', register = { cr = false } },
            ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '^[^\\]', register = { cr = false } },
        },
    },
}
