# Disable Windows Security Features (Listing Only)

# Disable Real-time Protection
Set-MpPreference -DisableRealtimeMonitoring $true

# Disable Cloud Delivered Protection
Set-MpPreference -EnableCloudProtection $false

# Disable Automatic Sample Submission
Set-MpPreference -MAPSReporting 0

# Disable Domain Firewall
Set-NetFirewallProfile -Profile Domain -Enabled False

# Disable Private Firewall
Set-NetFirewallProfile -Profile Private -Enabled False

# Disable Public Firewall
Set-NetFirewallProfile -Profile Public -Enabled False

# Disable Reputation-based Protection
Set-MpPreference -PUAProtection 0

# Disable Exploit Protection
Set-ProcessMitigation -Disable ExtensionPointDisable

# Display the status of security features
Get-MpPreference
Get-NetFirewallProfile
Get-ProcessMitigation

