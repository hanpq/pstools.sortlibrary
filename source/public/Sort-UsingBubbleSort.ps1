<#PSScriptInfo
{
    "VERSION":  "1.0.0",
    "GUID":  "4c162cf5-5196-4ea0-8c43-1f4a460245f4",
    "FILENAME":  "Sort-UsingBubbleSort.ps1"
}
PSScriptInfo#>
function Sort-UsingBubbleSort
{
    <#
    .DESCRIPTION
        This function sorts objects using the bubble sort algorithm. This is the optimized version of 
        bubblesort where already sorted items are skipped every pass.
    .PARAMETER InputObject
        Specify array of items to be sorted
    .EXAMPLE
        3,2,1 | Sort-UsingBubbleSort
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingCmdletAliases', '', Justification = 'False positive, get-partition is not implictly called. partition is a internal function')]
    [CmdletBinding()] # Enabled advanced function support
    param(
        [parameter(ValueFromPipeline, Mandatory)]$InputObject
    )

    BEGIN
    {
        $Unsorted = [collections.arraylist]::New()
        $script:Swaps = 0
        $script:Compares = 0
        $script:Passes = 0
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

        function bubbleSort
        {
            param (
                $array
            )

            $n = $array.Count
            # Do passes over array until last swap was at position 1 or less
            do
            {
                $script:passes++
                # Reset last swap position
                $lastswap = 0

                # Go through array up to lastswap and compare each neighbour
                for ($i = 1; $i -le ($n - 1); $i++)
                {
                    $script:Compares++
                    if ($array[$i - 1] -gt $array[$i])
                    {
                        swap -array $array -position $i -with ($i - 1)
                        $lastswap = $i
                    }
                }
                # Update $n with the position of the last swap to skip over already sorted items
                $n = $lastswap
            } until ($n -le 1)
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

        bubblesort -array $Unsorted
        Write-Verbose ('BubbleSort | Array length: {0} | Passes: {1} | Swaps: {2} | Compares: {3}' -f $Unsorted.count, $script:Passes, $script:swaps, $script:compares)
        return $Unsorted
    }

}
#endregion
