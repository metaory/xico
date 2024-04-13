# xico.conf parser!

/^\[|.*icons.*=/d
s/[\x5b]|[\x5d]//g
s/['",=]//g
s/([ ]{2,})/ /g
s/^(\s+)//g
/^$|[#]/d
