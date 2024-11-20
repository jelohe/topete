# Topete

Simple 2FA manager written in elixir.

Two ways of using it:
* CLI
`topete [option] [args]`

* API REST
TO-DO

Options:
Generate a secret code:
`topete new` Generate an embeddable URI
`topete code [my-secret]` Generate a code for a given secret
`topete verify [my-secret] [my-code]` Verify a code against a secret
