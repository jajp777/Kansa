﻿<#
Get-DNSCacheStack.ps1
Requires logparser.exe in path
Pulls frequency of DNSCache entries

This script expects files matching the *DNSCache.tsv pattern to be in the
current working directory.
#>


if (Get-Command logparser.exe) {
    $lpquery = @"
    SELECT
        COUNT(FQDN) as ct,
        FQDN
    FROM
        *DNSCache.tsv
    GROUP BY
        FQDN
    ORDER BY
        ct ASC
"@

    & logparser -i:tsv -dtlines:0 -fixedsep:on -rtp:50 "$lpquery"

} else {
    $ScriptName = [System.IO.Path]::GetFileName($MyInvocation.ScriptName)
    "${ScriptName} requires logparser.exe in the path."
}