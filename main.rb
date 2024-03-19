require 'resolv'

def dns_lookup(url)
  begin
    ip_address = Resolv.getaddress(url)
    puts "IP Address for #{url}: #{ip_address}"
  rescue Resolv::ResolvError => e
    puts "Error: #{e.message}"
  end
end

if ARGV.empty?
  puts "Usage: ruby dns_lookup.rb <website>"
  exit
end

url = ARGV[0]

dns_lookup(url)
