defmodule Topete do
  def hello do
    :squeak
  end

  def new_secret() do
    NimbleTOTP.otpauth_uri("", NimbleTOTP.secret(), issuer: "Topete")
  end

  def new_code(secret) do
    NimbleTOTP.verification_code(secret)
  end

  def verify_code(secret, code) do
    NimbleTOTP.valid?(secret, code)
  end
end
