<#PSScriptInfo
{
    "VERSION":  "1.0.0",
    "GUID":  "9260581f-5e20-49b3-9b64-7c1b62eaea9e",
    "FILENAME":  "Test-SortingAlgorithms.ps1",
    "AUTHOR":  "Hannes Palmquist",
    "AUTHOREMAIL":  "hannes.palmquist@outlook.com",
    "CREATEDDATE":  "2021-01-03",
    "COMPANYNAME":  "Personal",
    "COPYRIGHT":  "(c) 2021, Hannes Palmquist, All Rights Reserved"
}
PSScriptInfo#>
function Test-SortingAlgorithms
{
    <#
    .DESCRIPTION
        Runs all sorting functions
    .PARAMETER Name
        Description
    .EXAMPLE
        Test-SortingAlgorithms
        Description of example
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingInvokeExpression', '', Justification = 'This function calls module cmdlets from a list to simplyfy code. non-production')]
    [CmdletBinding()] # Enabled advanced function support
    param(
    )

    BEGIN
    {
        
        Write-Host 'NOTE: The built in Sort-Object is a compiled cmdlet and will be much faster compared to script based implementations of sorting algoritms. A fair comparison can be made between all other script based algorithms'

        $List = 1..1000 | Get-Random -Shuffle

        $SortAlgorithms = @(
            'Sort-Object',
            'Sort-UsingQuickSort',
            'Sort-UsingBubbleSort'
        )
    }

    PROCESS
    {
        foreach ($Object in $SortAlgorithms)
        {
            $measure = Measure-Command -Expression {
                $SortedList = Invoke-Expression -Command ('{0} | {1} -Verbose' -f (([string[]]$List) -join ','), $Object )
            }
            [pscustomobject]@{
                Algorithm = $Object
                Time      = $Measure.TotalMilliseconds
                Result    = $SortedList
            }
        }
    }

    END
    {
            
    }

}
#endregion


