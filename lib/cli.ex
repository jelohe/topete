defmodule Topete.Cli do
  @switches [
    help: :boolean,
    new: :boolean,
    code: :string,
    verify: :string
  ]
  @aliases [
    h: :help,
    n: :new,
    c: :code,
    v: :verify,
  ]

  def main(args \\ []) do
    args
    |>parse()
    |>IO.puts()
  end

  def parse(args) do
    case OptionParser.parse(args, switches: @switches, aliases: @aliases) do
      {[help: true], _, _} -> :help
      {[new: true], _, _} -> Topete.new_secret()
      {[code: secret], _, _} -> Topete.new_code(secret)
      {[verify: secret], code, _} -> Topete.verify_code(secret, code)
      _ -> :help
    end
  end
end
