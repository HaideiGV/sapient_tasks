defmodule SapientTasks.Github do
    
    def gen_repo_url(repo_name) do
        "https://api.github.com/repos/" <> repo_name
    end

    def starts(repo_name) do
        HTTPoison.start()
        {:ok, %HTTPoison.Response{
            body: body, 
            status_code: status_code
        }} = gen_repo_url(repo_name) |> HTTPoison.get

        if status_code != 200 do
            {:error, "repo is not found"}
        else
            %{
                "stargazers_count" => stargazers_count, 
                "private" => is_private
            } = Poison.decode!(body)
            if is_private do
                {:error, "repo is private"}
            else
                {:ok, stargazers_count}
            end
        end
    end
end