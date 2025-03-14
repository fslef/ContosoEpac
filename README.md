# automatedlab-policies

This repository demonstrates the EPAC (Enterprise Policy as Code) solution for managing policies at scale in your lab environment. It leverages policy definitions, assignments, and deployments to ensure compliance across various environments as configured in [`Definitions/global-settings.jsonc`](Definitions/global-settings.jsonc).

The EPAC solution, available at [aka.ms/epac](https://aka.ms/epac), streamlines policy lifecycle management by automating the planning, deployment, and documentation processes.


## Getting Started

1. **Prerequisites**
   - PowerShell installed on your system.
   - The `EnterprisePoliciesasCode` module installed. You can install it via:
     ```powershell
     Install-Module EnterprisePoliciesasCode -Scope CurrentUser
     ```
    - Appropriate permissions to execute scripts and deploy policy changes. For details on the required permissions, see the [official documentation](https://azure.github.io/enterprise-azure-policy-as-code/ci-cd-app-registrations/#assign-service-principals-permissions-in-azure).


## Repository Structure

- **definitions/** – Contains all files needed for policy management following EPAC guidelines:
  - **global-settings.jsonc** – Configures global settings and environment metadata.
  - **policyDefinitions/** – Stores individual policy definition files.
  - **policyAssignments/** – Holds policy assignment files that map policies (or policy sets) to specific scopes along with deployment parameters.
  - **policySetDefinitions/** – Contains policy set definition files that group multiple policies together.

For more details on the recommended file and folder structure, see the [Policy Assignment File Folder Structure Guidelines](https://azure.github.io/enterprise-azure-policy-as-code/policy-assignments/#policy-assignment-file-folder-structure-guidelines).
