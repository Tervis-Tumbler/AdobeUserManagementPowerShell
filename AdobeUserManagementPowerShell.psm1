function New-AdobeUserManagmentSelfSignedCertificate {
    param (
        [Parameter(Mandatory)]$Password
    )
    $CertificateResult = New-SelfSignedCertificate -certstorelocation cert:\localmachine\my -Subject AdobeUserManagementPowerShell
    $Result.Thumbprint
    $PasswordSecureString = ConvertTo-SecureString -String $Password -Force -AsPlainText
    Export-PfxCertificate -cert $CertificateResult -FilePath c:\temp\cert.pfx -Password $PasswordSecureString
}
