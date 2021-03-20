<#PSScriptInfo
    .VERSION 1.0.0
    .GUID 9260581f-5e20-49b3-9b64-7c1b62eaea9e
    .FILENAME Test-SortingAlgorithms.ps1
    .AUTHOR Hannes Palmquist
    .AUTHOREMAIL hannes.palmquist@outlook.com
    .CREATEDDATE 2021-01-03
    .COMPANYNAME Personal
    .COPYRIGHT (c) 2021, Hannes Palmquist, All Rights Reserved
#>
function Test-SortingAlgorithms {
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

    BEGIN {
        $List = "7, 56, 67, 72, 16, 48, 5, 10, 85, 77, 54, 62, 18, 22, 42, 88, 64, 15, 9, 81, 65, 82, 58, 71, 92, 63, 31, 30, 50, 39, 4, 23, 51, 79, 1, 52, 93, 59, 66, 80, 86, 43, 37, 34, 49, 20, 60, 41, 40, 91, 74, 89, 44, 68, 33, 55, 19, 17, 83, 45, 21, 8, 87, 35, 90, 57, 78, 47, 98, 27, 96, 46, 95, 24, 61, 32, 26, 14, 11, 25, 38, 28, 75, 97, 84, 99, 12, 2, 36, 73, 29, 76, 53, 6, 94, 70, 13, 100, 3, 69"
        #$List = "146, 128, 110"
        $SortAlgorithms = @(
            'Sort-Object',
            'Sort-UsingQuickSort'
        )
    }

    PROCESS {
        foreach ($Object in $SortAlgorithms) {
            $measure = measure-command -expression {
                $SortedList = Invoke-Expression -Command ('{0} | {1}' -f $List, $Object )
            }
            [pscustomobject]@{
                Algorithm = $Object
                Time = $Measure.TotalMilliseconds
                Result = $SortedList
            }
        }
    }

    END {
            
    }

}
#endregion


