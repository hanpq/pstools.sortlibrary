
@{
  RootModule = 'pstools.sortlibrary.psm1'
  ModuleVersion = '1.6.1'
  CompatiblePSEditions = @('Desktop','Core')
  GUID = 'eb890351-6757-40fa-b65a-c0f5ec794576'
  Author = 'Hannes Palmquist'
  CompanyName = ''
  Copyright = '(c) 2021 Hannes Palmquist. All rights reserved.'
  Description = 'This module contains alternative sort algorithms. The module was created mainly for educational purposes but is fully functional.'
  RequiredModules = @()
  FunctionsToExport = @('Sort-UsingQuickSort','Test-SortingAlgorithms')
  FileList = @('.\data\appicon.ico','.\data\banner.ps1','.\docs\pstools.sortlibrary.md','.\en-US\pstools.sortlibrary-help.xml','.\en-US\Sort-UsingQuickSort.md','.\en-US\Test-SortingAlgorithms.md','.\include\module.utility.functions.ps1','.\private\.gitignore','.\public\Sort-UsingQuickSort.ps1','.\public\Test-SortingAlgorithms.ps1','.\settings\config.json','.\LICENSE.txt','.\pstools.sortlibrary.psd1','.\pstools.sortlibrary.psm1')
  PrivateData = @{
    ModuleName = 'pstools.sortlibrary'
    DateCreated = '2021-01-03'
    LastBuildDate = '2021-03-25'
    PSData = @{
      Tags = @('PSEdition_Desktop','PSEdition_Core','Windows','Linux','MacOS')
      ProjectUri = 'https://getps.dev/modules/pstools.sortlibrary/quickstart'
      LicenseUri = 'https://github.com/hanpq/pstools.sortlibrary/blob/main/LICENSE'
      ReleaseNotes = 'https://github.com/hanpq/pstools.sortlibrary/blob/main/changelog.json'
      IsPrerelease = 'False'
      IconUri = ''
      PreRelease = ''
      RequireLicenseAcceptance = $True
      ExternalModuleDependencies = @()
    }
  }
  CmdletsToExport = @()
  VariablesToExport = @()
  AliasesToExport = @()
  DscResourcesToExport = @()
  ModuleList = @()
  RequiredAssemblies = @()
  ScriptsToProcess = @()
  TypesToProcess = @()
  FormatsToProcess = @()
  NestedModules = @()
  HelpInfoURI = ''
  DefaultCommandPrefix = ''
  PowerShellVersion = '5.1'
  PowerShellHostName = ''
  PowerShellHostVersion = ''
  DotNetFrameworkVersion = ''
  CLRVersion = ''
  ProcessorArchitecture = ''
}




