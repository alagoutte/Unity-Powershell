# Remove-UnityHostIPPort

## SYNOPSIS
Delete a host IP port.

## SYNTAX

```
Remove-UnityHostIPPort [-session <Object>] [-ID] <Object> [-WhatIf] [-Confirm]
```

## DESCRIPTION
Delete a host IP port. 
You need to have an active session with the array.

## EXAMPLES

### -------------------------- EXEMPLE 1 --------------------------
```
Remove-UnityHostIPPort -ID 'HostNetworkAddress_45'
```

Delete the host with ID 'HostNetworkAddress_45'

### -------------------------- EXEMPLE 2 --------------------------
```
Get-UnityHostIPPort -ID 'HostNetworkAddress_45' | Remove-UnityHostIPPort
```

Delete the host with ID 'HostNetworkAddress_45'.
host informations are provided by the Get-UnityHostIPPort through the pipeline.

## PARAMETERS

### -session
Specify an UnitySession Object.

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: ($global:DefaultUnitySession | where-object {$_.IsConnected -eq $true})
Accept pipeline input: False
Accept wildcard characters: False
```

### -ID
Host IP Port ID or Object

```yaml
Type: Object
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -WhatIf
Indicate that the cmdlet is run only to display the changes that would be made and actually no objects are modified.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
If the value is $true, indicates that the cmdlet asks for confirmation before running. 
If the value is $false, the cmdlet runs without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES
Written by Erwan Quelin under MIT licence - https://github.com/equelin/Unity-Powershell/blob/master/LICENSE

## RELATED LINKS

[https://github.com/equelin/Unity-Powershell](https://github.com/equelin/Unity-Powershell)

