# 220-dev-tools

Provisions development tools in an OpenShift cluster

## Running the automation

This terraform template is part of collection of layers that should be executed together. Before this layer
can be applied, several steps must first be taken:

1. Run `apply.sh` in the parent directory to generate the input variable configuration for the run. If you'd like to apply one layer at a time, select `n` when prompted to continue.
2. Run `apply.sh` for each of the layer dependencies listed below.
3. Run `apply.sh` for this layer.

## Contents

### Layer dependencies


The following layers are dependencies of this terraform template and must be applied before this one.
- [gitops](../200-openshift-gitops)

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [gitops-artifactory](https://github.com/cloud-native-toolkit/terraform-gitops-artifactory) |  | v1.3.0 |
| [gitops-dashboard](https://github.com/cloud-native-toolkit/terraform-gitops-dashboard) | Module to configure the provisioning of the Developer Dashboard in a GitOps repo | v1.7.0 |
| [gitops-namespace](https://github.com/cloud-native-toolkit/terraform-gitops-namespace) | Module to configure the provisioning of a namespace in a GitOps repo | v1.12.2 |
| [gitops-pact-broker](https://github.com/cloud-native-toolkit/terraform-gitops-pact-broker) | Module to populate gitops repo to deploy Pact Broker | v1.2.0 |
| [gitops-repo](https://github.com/cloud-native-toolkit/terraform-tools-gitops) | Module to provision and set up a GitOps repository | v1.23.3 |
| [gitops-sonarqube](https://github.com/cloud-native-toolkit/terraform-gitops-sonarqube) | Module to populate gitops repo to deploy SonarQube | v1.3.0 |
| [gitops-swagger-editor](https://github.com/cloud-native-toolkit/terraform-gitops-swagger-editor) | Module to populate a gitops repo with the resources to provision swagger-editor | v0.1.0 |
| [gitops-tekton-resources](https://github.com/cloud-native-toolkit/terraform-gitops-tekton-resources) | Module to populate a gitops repo with Tekton resources (tasks and pipelines). | v2.1.0 |
| [util-clis](https://github.com/cloud-native-toolkit/terraform-util-clis) | Module to install clis into local bin directory | v1.18.2 |
| [gitops-buildah-unprivileged](https://github.com/cloud-native-toolkit/terraform-gitops-buildah-unprivileged) | Module to populate a gitops repo to set up a Red Hat OpenShift cluster to allow buildah to run unprivileged. | v1.1.1 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| gitops_repo_host | The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used. |  |  |
| gitops_repo_org | The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used. |  |  |
| gitops_repo_project | The project that will be used for the git repo. (Primarily used for Azure DevOps repos) |  |  |
| gitops_repo_username | The username of the user with access to the repository |  |  |
| gitops_repo_token | The personal access token used to access the repository | true |  |
| gitops_repo_repo | The short name of the repository (i.e. the part after the org/group name) |  |  |

## Troubleshooting

