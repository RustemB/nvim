local ls = require("luasnip")

ls.snippets = {
    python = {
        ls.parser.parse_snippet("def", "def ${1:f}(${2}):\n\t${0:pass}")
    }
}
