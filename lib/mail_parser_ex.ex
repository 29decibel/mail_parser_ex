defmodule MailParserEx do
  use Rustler,
    otp_app: :mail_parser_ex,
    crate: :mailparsernative

  @moduledoc """
  MailParserEx is an Elixir module that provides a simple interface for parsing email messages
  using a Rust NIF (Native Implemented Function).
  It leverages the `mail-parser` library in Rust to parse email content and return it as a JSON string.
  This module is designed to handle MIME formatted emails and integrate seamlessly with Elixir applications.
  """

  @doc """
  Parses the given email string and returns the parsed content as a JSON string.

  ## Parameters

    - email_string: A string containing the email message in MIME format.

  ## Returns

    - json_string is a JSON representation of the parsed email content.

  ## Examples

      iex> email_string = "From: Art Vandelay <art@vandelay.com> (Vandelay Industries)\\nTo: \"Colleagues\": \"James Smythe\" <james@vandelay.com>; Friends: jane@example.com, =?UTF-8?Q?John_Sm=C3=AEth?= <john@example.com>;\\nDate: Sat, 20 Nov 2021 14:22:01 -0800\\nSubject: Why not both importing AND exporting? =?utf-8?b?4pi6?=\\nContent-Type: multipart/mixed; boundary=\"festivus\";\\n\\n--festivus\\nContent-Type: text/html; charset=\"us-ascii\"\\nContent-Transfer-Encoding: base64\\n\\nPGh0bWw+PHA+SSB3YXMgdGhpbmtpbmcgYWJvdXQgcXVpdHRpbmcgdGhlICZsZHF1bztleHBvcnRpbmcmcmRxdW87IHRvIGZvY3VzIGp1c3Qgb24gdGhlICZsZHF1bztpbXBvcnRpbmcmcmRxdW87LDwvcD48cD5idXQgdGhlbiBJIHRob3VnaHQsIHdoeSBub3QgZG8gYm90aD8gJiN4MjYzQTs8L3A+PC9odG1sPg==\\n--festivus\\nContent-Type: message/rfc822\\n\\nFrom: \"Cosmo Kramer\" <kramer@kramerica.com>\\nSubject: Exporting my book about coffee tables\\nContent-Type: multipart/mixed; boundary=\"giddyup\";\\n\\n--giddyup\\nContent-Type: text/plain; charset=\"utf-16\"\\nContent-Transfer-Encoding: quoted-printable\\n\\n=FF=FE=0C!5=D8\"=DD5=D8)=DD5=D8-=DD =005=D8*=DD5=D8\"=DD =005=D8\"=DD5=D85=DD5=D8-=DD5=D8,=DD5=D8/=DD5=D81=DD =005=D8*=DD5=D86=DD =005=D8=1F=DD5=D8,=DD5=D8,=DD5=D8(=DD =005=D8-=DD5=D8)=DD5=D8\"=DD5=D8=1E=DD5=D80=DD5=D8\"=DD!=00\\n--giddyup\\nContent-Type: image/gif; name*1=\"about \"; name*0=\"Book \"; name*2*=utf-8''%e2%98%95 tables.gif\\nContent-Transfer-Encoding: Base64\\nContent-Disposition: attachment\\n\\nR0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7\\n--giddyup--\\n--festivus--"
      iex> MailParserEx.parse_email(email_string)
      json_string
  """
  def parse_email(_email_string), do: :erlang.nif_error(:nif_not_loaded)
end
