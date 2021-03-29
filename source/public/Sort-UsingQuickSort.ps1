<#PSScriptInfo
    .VERSION 1.0.0
    .GUID eb890351-6757-40fa-b65a-c0f5ec794576
    .FILENAME Sort-UsingQuickSort.ps1
#>
function Sort-UsingQuickSort
{
    <#
    .DESCRIPTION
        This function sorts objects using the quick sort algorithm
    .PARAMETER Name
        Description
    .EXAMPLE
        Sort-UsingQuickSort
        Description of example
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingCmdletAliases', '', Justification = 'False positive, get-partition is not implictly called. partition is a internal function')]
    [CmdletBinding()] # Enabled advanced function support
    param(
        [parameter(ValueFromPipeline, Mandatory)]$InputObject,
        [parameter()][string]$Property,
        [parameter()][int]$Top,
        [parameter()][int]$Bottom,
        [parameter()][switch]$Descending
    )

    BEGIN
    {
        $Unsorted = [collections.arraylist]::New()
        $script:Swaps = 0
        $script:Compares = 0
    }

    PROCESS
    {
        $InputObject | ForEach-Object {
            $null = $Unsorted.Add($PSItem)
        }
    }

    END
    {
        # Determine default sort property
        if ($null -ne $Unsorted[0].PSStandardMembers.DefaultKeyPropertySet)
        {
            Write-Warning -Message 'This object has a default sorting specified'
        }

        function quicksort
        {
            param (
                $array,
                $low,
                $high
            )

            if ($low -lt $high)
            {
                $p = partition -array $array -low $low -high $high
                quicksort -array $array -low $low -high ($p - 1)
                quicksort -array $array -low ($P + 1) -high $high
            }
        }
        function partition
        {
            param(
                $array,
                $low,
                $high
            )
            $pivot = $array[$high]
            $i = $low
            for ($j = $low; $j -le $high; $j++)
            {
                $script:Compares++
                if ($array[$j] -lt $pivot)
                {
                    swap -array $array -position $i -with $j
                    $i = $i + 1 
                }
            }
            swap -array $array -position $i -with $high
            return $i
        }
        function swap
        {
            param(
                $array,
                $position,
                $with
            )
            $temp = $array[$position]
            $array[$position] = $array[$with]
            $array[$with] = $temp
            $script:Swaps++
        }

        quicksort -array $Unsorted -low 0 -high ($Unsorted.count - 1)
        return $Unsorted
    }

}
#endregion


