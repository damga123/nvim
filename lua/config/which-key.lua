local wk = require("which-key")

wk.register({
    f = {
        name = "find",
        f = { "Fuzzy finder"},
        p = { "Project finder"},
    },
}, {prefix = "<leader>"})
