return {
  s("foo", { t "Expands to bar" }),

  -- Add the dash after the $ because of the autosnippet thingy
  s({trig="$-", snippetType="autosnippet"}, {
    t"$ ", i(1), t" $ ", i(2) 
  })
}
