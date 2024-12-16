# Build and deploy the plans for the sandbox and production environments
Build-DeploymentPlans -PacEnvironmentSelector 'contoso-sandbox' -DefinitionsRootFolder '.\Definitions' -OutputFolder '.\Output'
Build-DeploymentPlans -PacEnvironmentSelector 'contoso-prod' -DefinitionsRootFolder '.\Definitions' -OutputFolder '.\Output'

# Deploy the policies for the sandbox and production environments
Deploy-PolicyPlan -PacEnvironmentSelector 'contoso-sandbox' -DefinitionsRootFolder '.\Definitions'
Deploy-PolicyPlan -PacEnvironmentSelector 'contoso-prod' -DefinitionsRootFolder '.\Definitions'

# Deploy the roles for the sandbox and production environments
Deploy-RolesPlan -PacEnvironmentSelector 'contoso-sandbox' -DefinitionsRootFolder '.\Definitions'
Deploy-RolesPlan -PacEnvironmentSelector 'contoso-prod' -DefinitionsRootFolder '.\Definitions'

Build-PolicyDocumentation -DefinitionsRootFolder '.\Definitions' -OutputFolder '.\Output'