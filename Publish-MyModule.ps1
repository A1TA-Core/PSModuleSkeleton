$PublishParams = @{
    NuGetApiKey = 'MyAPIKeyFromPowershellgallery.com' #Obtainable from powershellgallery.com
    Path = '/Users/max/Documents/GitHub/PSModuleSkeleton' #Change this to fit your local path... C:\Users\max\source\Repos\PSModuleSkeleton for example on windows
    ProjectUri = 'https://github.com/chaozmc/PSModuleSkeleton' #Change this to your website of the project, github for example
    Tags = @('Some', 'really', 'cool', 'buzzwords' ) #Find some words to describe your module for easier finding in the PSGallery
}

Install-Module -Name PSScriptAnalyzer -force
Invoke-ScriptAnalyzer -Path $PublishParams.Path

Publish-Module @PublishParams

Find-Module PSStackExchange