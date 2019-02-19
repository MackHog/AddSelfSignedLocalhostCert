$cert = New-SelfSignedCertificate -DnsName "localhost" -CertStoreLocation "cert:\LocalMachine\My" -FriendlyName "localhost.cert"
$pwd = ConvertTo-SecureString -String '1234' -Force -AsPlainText
$path = 'cert:\localMachine\my\' + $cert.thumbprint 
Export-PfxCertificate -cert $path -FilePath c:\localhost.cert.pfx -Password $pwd
