defmodule ListComposition do
    
    def wrap_lists(list1, list2) do
        Enum.map(list1, fn(x) -> Enum.map(list2, fn(y) -> [a: x, b: y] end) end)
    end
end