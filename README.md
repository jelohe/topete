# Topete

#### Simple 2FA manager written in elixir.

## 2FA basics:

##### Setup a new integration:
First the website that uses 2FA needs to provide a secret, usually it's an URI embedded as a QR:

*Topete can be used as a secret provider*
```
 .-------------------. 
 | WEBPAGE or TOPETE | 
 '-------------------' 
          |
      Generate 
     a new secret
          |
          V
    .-----------.
    |  secret   |
    | QR or URI |
    '-----------'
```

##### Getting codes
Topete can generate one time codes for a given secret:
```
Existing secret
      |
      V
 .--------.
 | Topete | 
 '--------'
      |
      V
.---------------.
| One time code | 
'---------------'
```

##### Building an auth app
Usually, authenticators just store the user's secrets and generates codes every 30 seconds for each secret stored.
```
.---------------.
| AUTHENTICATOR |
| Web1: 123456  | 
| Web2: 321654  | -> Updates codes every 30sec
| Web2: 654123  |
'---------------'
```

## Two ways of interacting with Topete:

#### API REST
##### TO-DO
Will encapsulate the CLI calls behind standard API REST methods `get`, `post`, `delete`.

#### CLI
`./topete [option] [args]`

## Options:
#### Generate a new secret URI:
`./topete new`
```
otpauth://totp/?secret=[generated]&issuer=Topete
```

#### Generate a code for a given secret
`./topete code [my-secret]`
```
123456
```

#### Verify a code against an existing secret
`./topete verify [my-secret] [my-code]`
```
true
```
