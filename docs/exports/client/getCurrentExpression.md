# Get Current Expression

Get the players current expression
```lua
local scully_emotemenu = exports.scully_emotemenu
local expression = scully_emotemenu:getCurrentExpression()

if expression then
    print(expression)
end
```