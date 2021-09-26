function Get-PBSKidsShowList {
    <#
        .SYNOPSIS
            Gets a list of Shows from PDS Kids
        .DESCRIPTION
            Gets a list of shows and URI's to connect to for Show Information
        .EXAMPLE
            Get-PBSKidsShowList
    #>
    [CmdletBinding()]
    Param(
        
    ) 
    BEGIN { 
        $PBS = Invoke-RestMethod 'https://content.services.pbskids.org/v2/kidspbsorg/home'
        $Shows = ($PBS.collections.'kids-programs-tier-3'.content + $PBS.collections.'kids-programs-tier-2'.content + $PBS.collections.'kids-programs-tier-1'.content)
        
        $PBSKidsShowList = @()
    } #BEGIN

    PROCESS {

        foreach ($Show in $Shows) {
            $ModifiedURI = $Show.URI -replace 'https://content.services.pbs.org/v2/kidspbsorg/programs/', 'https://content.services.pbskids.org/v2/kidspbsorg/programs/'

            $Row = New-Object PSObject
            $Row | Add-Member -MemberType noteproperty -Name "Title" -Value $Show.Title
            $Row | Add-Member -MemberType noteproperty -Name "URI" -Value $Show.URI
            $Row | Add-Member -MemberType noteproperty -Name "URIModified" -Value $ModifiedURI
                
            $PBSKidsShowList += $Row

            $ModifiedURI = $Null
        }

    } #PROCESS

    END { 
        $PBSKidsShowList
    } #END

} #FUNCTION