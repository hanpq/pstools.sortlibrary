BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\Source\public\Sort-UsingQuickSort.ps1")
}

Describe -Name "Sort-UsingQuickSort.ps1" -Fixture {
    BeforeAll {
        #function Assert-FunctionRequirements { [Parameter(ValueFromRemainingArguments)]$Vars; return $true }
    }
    Context -Name 'Parameters' {
        It -Name 'Dummy' {
            $True | should -BeTrue
        }
    }
}
