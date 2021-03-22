BeforeAll {
    . (Resolve-Path -Path "$PSScriptRoot\..\..\source\public\Sort-UsingQuickSort.ps1")
}

Describe -Name 'Sort-UsingQuickSort.ps1' -Fixture {
    BeforeAll {
    }
    Context -Name 'Parameters' {
        It -Name 'Dummy' {
            $True | Should -BeTrue
        }
    }
}
