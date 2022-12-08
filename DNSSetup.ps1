# Obtains Ethernet ifIndex and stores it as a variable
$Ethernet = (Get-NetAdapter -Name "Ethernet").ifIndex

set-DNSClientServerAddress -InterfaceIndex $Ethernet -ServerAddresses ("10.0.2.15")