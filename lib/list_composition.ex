defmodule SapientTasks.ListComposition do
    
    def wrap_lists(list1, list2) do
        for x <- list1, y <- list2, do: [a: x, b: y]
    end
end