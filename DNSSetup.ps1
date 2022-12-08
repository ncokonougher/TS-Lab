# Obtains Ethernet ifIndex and stores it as a variable
$Ethernet = (Get-NetAdapter -Name "Ethernet").ifIndex

# Sets DNS Server using the $ethernet variable created above
set-DNSClientServerAddress -InterfaceIndex $Ethernet -ServerAddresses ("10.0.2.15")