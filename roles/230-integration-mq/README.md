# 230-integration-mq

GitOps deployment of MQ for Cloud pak for Integration

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
- [cluster](../105-ibm-vpc-openshift)
- [storage](../210-ibm-odf-storage)

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [cp4i-dependency-management](https://github.com/cloud-native-toolkit/terraform-cp4i-dependency-management) | Module to configure the manage and coordinate channels, versions, and license keys across different Cloud Pak for Integration components | v1.2.7 |
| [gitops-cp-catalogs](https://github.com/cloud-native-toolkit/terraform-gitops-cp-catalogs) | Module to populate a gitops repository with the resources needed to install the operator catalogs required to install IBM Cloud Paks. | v1.2.7 |
| [gitops-cp-mq](https://github.com/cloud-native-toolkit/terraform-gitops-cp-mq) | Module to populate a gitops repository with the resources to provision the MQ operator from IBM Cloud Pak for Integration. | v1.1.7 |
| [gitops-cp-queue-manager](https://github.com/cloud-native-toolkit/terraform-gitops-cp-queue-manager) | Module to populate a gitops repo with the resources to provision a Queue Manager from the cloud pak | v1.1.0 |
| [gitops-namespace](https://github.com/cloud-native-toolkit/terraform-gitops-namespace) | Module to configure the provisioning of a namespace in a GitOps repo | v1.15.0 |
| [gitops-repo](https://github.com/cloud-native-toolkit/terraform-tools-gitops) | Module to provision and set up a GitOps repository | v1.23.3 |
| [namespace](https://github.com/cloud-native-toolkit/terraform-k8s-namespace) | Creates a namespace in the cluster | v3.2.4 |
| [ocp-login](https://github.com/cloud-native-toolkit/terraform-ocp-login) | Module to perform a simple cluster login and provide the cluster path | v1.6.2 |
| [olm](https://github.com/cloud-native-toolkit/terraform-k8s-olm) | Installs Operator Lifecycle Manager in the cluster | v1.3.5 |
| [gitea](https://github.com/cloud-native-toolkit/terraform-tools-gitea) | Module to install Gitea into a cluster via an operator | v0.5.1 |
| [sealed-secret-cert](https://github.com/cloud-native-toolkit/terraform-util-sealed-secret-cert) | Module to collect or generate the certificate and private key used for the sealed secret component | v1.0.1 |
| [util-clis](https://github.com/cloud-native-toolkit/terraform-util-clis) | Module to install clis into local bin directory | v1.18.2 |
| [util-storage-class-manager](https://github.com/cloud-native-toolkit/terraform-util-storage-class-manager) | Module to collect and organize storage classes within a template | v1.0.3 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| gitops_repo_host | The host for the git repository. |  |  |
| gitops_repo_type | The type of the hosted git repository (github or gitlab). |  |  |
| gitops_repo_org | The org/group where the git repository exists/will be provisioned. |  |  |
| gitops_repo_project | The project that will be used for the git repo. (Primarily used for Azure DevOps repos) |  |  |
| gitops_repo_username | The username of the user with access to the repository |  |  |
| gitops_repo_token | The personal access token used to access the repository | true |  |
| gitops_repo_repo | The short name of the repository (i.e. the part after the org/group name) |  |  |
| server_url | The url for the OpenShift api |  |  |
| cluster_login_token | Token used for authentication | true |  |
| util-storage-class-manager_rwx_storage_class | The storage class to use for Read-Write-Many volumes |  |  |
| util-storage-class-manager_rwo_storage_class | ReadWriteOnce access type Storage Class |  |  |
| util-storage-class-manager_file_storage_class | The storage class to use for File storage volumes |  |  |
| util-storage-class-manager_block_storage_class | The storage class to use for Block storage volumes |  |  |

## Troubleshooting

