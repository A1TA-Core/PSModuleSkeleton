$PublishParams = @{
    NuGetApiKey = 'MyAPIKeyFromPowershellgallery.com' #Obtainable from powershellgallery.com
    Path = '/Users/max/Documents/GitHub/PSModuleSkeleton'
    ProjectUri = 'https://github.com/chaozmc/PSModuleSkeleton'
    Tags = @('Some', 'really', 'cool', 'buzzwords' )
}

Install-Module -Name PSScriptAnalyzer -force
Invoke-ScriptAnalyzer -Path $PublishParams.Path

Publish-Module @PublishParams

Find-Module PSStackExchange