## config_banner_text: The text that will appear in the top banner in the cluster
#config_banner_text=""
## gitops_repo_repo: The short name of the repository (i.e. the part after the org/group name)
#gitops_repo_repo=""
## region: the value of region
region="us-south"
## resource_group_name: The name of the resource group
resource_group_name="Default"
## cluster_flavor: The machine type that will be provisioned for classic infrastructure
cluster_flavor="bx2.16x64"
## cluster_name: The name of the cluster that will be created within the resource group
#cluster_name=""
## cluster_subnets__count: The number of subnets that should be provisioned
cluster_subnets__count="3"
## common_tags: Common tags that should be added to the instance
#common_tags=""
## gitops_repo_host: The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used.
#gitops_repo_host=""
## gitops_repo_org: The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used.
#gitops_repo_org=""
## gitops_repo_project: The project that will be used for the git repo. (Primarily used for Azure DevOps repos)
#gitops_repo_project=""
## gitops_repo_type: The type of the hosted git repository (github or gitlab).
#gitops_repo_type=""
## gitops_repo_username: The username of the user with access to the repository
#gitops_repo_username=""
## name_prefix: The prefix name for the service. If not provided it will default to the resource group name
name_prefix="mq"
## worker_count: The number of worker nodes that should be provisioned for classic infrastructure
worker_count="3"
