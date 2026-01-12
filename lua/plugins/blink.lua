return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      -- This controls the main completion popup
      menu = {
        border = "rounded",
        winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
      },
      -- This controls the documentation popup next to it
      documentation = {
        window = {
          border = "rounded",
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
        },
      },
    },
    -- Optional: also add border to signature help (parameter hints)
    signature = {
      window = { border = "rounded" },
    },
  },
}
