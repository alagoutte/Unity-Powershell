function New-UnityObject {
  [CmdletBinding()]
  Param (
    [parameter(Mandatory = $true)]
    [String]$TypeName,
    [parameter(Mandatory = $true)]
    [Object[]]$Property
  )

  Write-Debug -Message "[$($MyInvocation.MyCommand)] Executing function"

    $Object = New-Object -TypeName $TypeName

    $Property | 
        get-member -MemberType NoteProperty | 

        ForEach-Object {
          $Property = $_.Name

          $Object.$Property = $Entry."$($_.Name)"
        }

    $Object
  
}
