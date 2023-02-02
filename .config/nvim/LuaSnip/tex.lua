local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    -- Examples of Greek letter snippets, autotriggered for efficiency
    s({trig=";a", snippetType="autosnippet"},
    {
        t("\\alpha"),
    }
    ),
    s({trig=";b", snippetType="autosnippet"},
    {
        t("\\beta"),
    }
    ),
    s({trig=";g", snippetType="autosnippet"},
    {
        t("\\gamma"),
    }
    ),
    -- Chemical formulas snippet
    s({trig="mote2", snippetType="autosnippet"},
    {
        t("MoTe\textsubscript{2}"),
    }
    ),
    s({trig="mos2", snippetType="autosnippet"},
    {
        t("MoS\textsubscript{2}"),
    }
    ),
    s({trig="O2", snippetType="autosnippet"},
    {
        t("O\textsubscript{2}"),
    }
    ),
    -- Underscore snippet
    s({trig="__", snippetType="autosnippet"},
    {
        t("_{"),
        i(1),
        t("}"),
        i(2)
    }
    ),

}
