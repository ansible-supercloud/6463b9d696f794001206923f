# 105-ibm-vpc-openshift

IBM VPC and public Red Hat OpenShift server

## Running the automation

This terraform template is part of collection of layers that should be executed together. Before this layer
can be applied, several steps must first be taken:

1. Run `apply.sh` in the parent directory to generate the input variable configuration for the run. If you'd like to apply one layer at a time, select `n` when prompted to continue.
2. Run `apply.sh` for each of the layer dependencies listed below.
3. Run `apply.sh` for this layer.

## Contents

### Layer dependencies


No dependencies

### Modules

| Name | Description | Version |
|------|-------------|---------|
| [ibm-access-group](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-access-group) | Module to create ADMIN and USER access groups for a set of resource groups | v3.1.8 |
| [ibm-activity-tracker](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-activity-tracker) | Provisions the IBM Cloud hosted Activity Tracker service | v2.4.18 |
| [ibm-cloud-monitoring](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-cloud-monitoring) | Module provision an instance of IBM Cloud Monitoring in an IBM Cloud account | v4.1.3 |
| [ibm-cloud-monitoring-bind](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-cloud-monitoring-bind) | Module to bind an existing IBM Cloud Monitoring instance to a cluster | v1.3.5 |
| [ibm-log-analysis](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-log-analysis) | Module to provision a IBM Log Anaysis instance on IBM Cloud | v4.1.3 |
| [ibm-log-analysis-bind](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-log-analysis-bind) | Module to bind the IBM Log Analysis instance to a cluster | v1.3.6 |
| [ibm-resource-group](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-resource-group) | Creates a resource groups in the account | v3.3.5 |
| [ibm-ocp-vpc](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-ocp-vpc) | Provisions an IBM Cloud OCP cluster | v1.16.3 |
| [ibm-vpc](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-vpc) | Provisions the IBM Cloud VPC instance with network acls | v1.17.0 |
| [ibm-vpc-gateways](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-vpc-gateways) | Terraform module to provision public gateways for an existing VPC instance | v1.10.0 |
| [ibm-vpc-subnets](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-vpc-subnets) | Module to provision a collection of subnets for an existing VPC | v1.14.0 |
| [ibm-object-storage](https://github.com/terraform-ibm-modules/terraform-ibm-toolkit-object-storage) | Module to work with an IBM Cloud Object Storage instance. | v4.1.0 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| ibmcloud_api_key | The api key used to access IBM Cloud | true |  |
| region |  |  |  |
| name_prefix | The prefix name for the service. If not provided it will default to the resource group name |  |  |
| resource_group_name | The name of the resource group |  |  |
| cluster_name | The name of the cluster that will be created within the resource group |  |  |
| worker_count | The number of worker nodes that should be provisioned for classic infrastructure |  | 1 |
| cluster_flavor | The machine type that will be provisioned for classic infrastructure |  | bx2.16x64 |
| common_tags | Common tags that should be added to the instance |  |  |
| cluster_subnets__count | The number of subnets that should be provisioned |  | 3 |

## Troubleshooting

