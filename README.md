# StatsigDemo

This app demos an issue with the current mix file of the erlang statsig library.

You will need to update the value for `statsig_api_key` in `config.exs`.

By default the `mix.exs` entry for statsig uses the published version (0.0.1).

If you run `iex -S mix` and then try

`:statsig.check_gate(%{userId: "foo"}, "bar")` you should see an error

```
** (exit) exited in: :gen_server.call(:statsig_server, {:gate, %{userId: "foo"}, "bar"})
    ** (EXIT) no process: the process is not alive or there's no process currently associated with the given name, possibly because its application isn't started
    (stdlib 4.0.1) gen_server.erl:367: :gen_server.call/2
    iex:1: (file)
```

To test the fix, swap the dependency around in the `mix.exs`, re-run `mix deps.get` and re-run `iex -S mix` and retry the above command.
You should now see:

`false`

