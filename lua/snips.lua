local ls = require("luasnip")
local i = ls.i
local s = ls.s
local t = ls.t

ls.snippets = {
    python = {
        s("def", {
            t("def "), i(1, "fun"), t("("), i(2), t(")"), i(3), t({":", "\t"}),
            i(4, "pass")
        }),
        s("class", {
            t("class "), i(1, "Name"), t("("), i(2), t({"):", "\t"}),
            t("def __init__(self"), i(3), t({"):", "\t\t"}), i(4, "pass")
        }),
        s("forr", {
            t("for "), i(1, "i"), t(" in range("), i(2, "n"), t({"):", "\t"}),
            i(3, "pass")
        })
    },
    lua = {
        s("fn", {
            t("function "), i(1, "name"), t("("), i(2), t({")", "\t"}), i(0),
            t({"", "end"})
        })
    }
}
