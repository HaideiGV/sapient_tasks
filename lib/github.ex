defmodule Github do
    @github_domain "https://api.github.com/repos/"
    
    def starts(repo_name) do
        {:ok, %HTTPoison.Response{body: body, status_code: status_code}} = HTTPoison.get(@github_domain <> repo_name)

        if status_code != 200 do
            {:error, "repo is not found"}
        else
            %{"stargazers_count" => stargazers_count, "private" => is_private} = Poison.decode!(body)
            if is_private do
                {:error, "repo is private"}
            else
                {:ok, stargazers_count}
            end
        end
    end
end