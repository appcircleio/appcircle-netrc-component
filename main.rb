# frozen_string_literal: true

require 'English'
require 'pathname'
require 'fileutils'

def env_has_key(key)
  !ENV[key].nil? && ENV[key] != '' ? ENV[key] : abort("Missing #{key}.")
end

def entry(host, user, pass)
  "machine #{host}\nlogin #{user}\npassword #{pass}\n"
end

host = env_has_key('AC_NETRC_HOSTNAME')
user =  env_has_key('AC_NETRC_USER')
pass =  env_has_key('AC_NETRC_PASS')
value = entry(host, user, pass)
netrc_path = "#{ENV['HOME']}/.netrc"
if File.exist?(netrc_path)
  puts 'Appending new credentials to .netrc file.'
else
  puts 'Creating .netrc file with credentials.'
end
File.write(netrc_path, value, mode: 'a+')
`chmod 0600 #{netrc_path}`
