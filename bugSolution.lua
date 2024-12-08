local function foo(t, depth)
  depth = depth or 0
  if depth > 10 then  -- Set a maximum recursion depth
    return
  end
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v, depth + 1)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3, f = {g = 4, h = {i = 5, j = {k = 6}}}}}}
foo(t)
print("Traversed table successfully.") 