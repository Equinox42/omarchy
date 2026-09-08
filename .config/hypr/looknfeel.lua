-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
    decoration = {
        rounding = 10,
        dim_inactive = true,
        dim_strength = 0.20,
        -- blur = {
            -- enabled   = true,
            -- size      = 2,
            -- passes    = 2,
            -- variant   = frost,
            -- new_optimizations = on,
        -- },
    },
})

hl.config({
  binds = {
    workspace_back_and_forth = true,
    allow_workspace_cycles = true,
    pass_mouse_when_bound = false,
  },
})


