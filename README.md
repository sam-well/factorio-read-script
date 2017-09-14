# Read Script Mod

1. In your local mod directory, `git clone https://github.com/sam-well/factorio-read-script ReadScript_0.1.0`
1. Add your Lua scripts to `ReadScript_0.1.0/includes`
1. `require 'includes/your_file.lua'` at the top of `control.lua`
1. Add `your_method = yourMethod` to the `add_interface` block in `control.lua`
1. To call your method from the game, run `remote.call("my_methods",
   "your_method"[, any_args])`

__Note:__ Write your methods as anonymous methods, and assign them to a variable with the method's name:

    -- standard method
    function say_hi()
      game.players[1].print("Hi!")
    end

    -- anonymous method; use this
    sayHi = function()
      game.players[1].print("Hi!")
    end

Also, I suggest using lower camel case for the variable name to avoid naming
collisions in `add_interface`. E.g., `say_hi = say_hi`.

