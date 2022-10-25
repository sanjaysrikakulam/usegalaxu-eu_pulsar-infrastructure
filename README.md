# UseGalaxy.eu - managed Pulsar infrastructure

Terraform files for managing Pulsar infrastructure.
See our [Terraform repository](https://github.com/usegalaxy-eu/terraform/tree/public) for development details.

## Updated version to roll out pulsar infrastructure using Terraform in OpenStack cloud

### Requirements
1. Install Terraform (https://www.terraform.io/downloads.html)
2. Create/Generate your SSH key pair (https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
3. Create/Download your OpenStack RC file (https://docs.openstack.org/mitaka/cli-reference/common/cli_set_environment_variables_using_openstack_rc.html) and source it before running Terraform


### Steps to deploy
1. Clone this repository and cd into it
2. cd into the `pulsar_tf` directory
3. Files to edit as per your cloud environment and needs are:
    1. vars.tf
    2. pre_tasks.tf
    3. secgroups.tf (If you already have required security groups, you can update the variables `secgroups_cm`, and `secgroups` in the `vars.tf` file accordingly and then comment out the `secgroups.tf` file.)
4. Run `terraform init` to initialize the terraform environment
5. Run `terraform plan` to see the changes that will be made
6. Run `terraform apply` to apply the changes
7. **CAUTION:** Run `terraform destroy` to destroy the infrastructure

### Deploying Pulsar infrastructure on BWCloud
1. Clone this repository and cd into it
2. cd into the `pulsar_bwcloud` directory
3. Files to edit are:
    1. vars.tf
    2. Assumes a VGCN image (Update the name in the `vars.tf` file) is available in the cloud environment. So, the image resource creation/upload block is commented out in the `pre_tasks.tf` file. If you want to upload a new image, uncomment the block and update `vars.tf` file and also uncomment the first `name` attribute in the `image.tf` file and comment the other.
    3. Required security groups are already available in the cloud environment. So, the security group resource creation block is commented out in the `secgroups.tf` file and the variables `secgroups_cm`, and `secgroups` in the `vars.tf` files are updated accordingly.
4. Run `terraform init` to initialize the terraform environment
5. Run `terraform plan` to see the changes that will be made
6. Run `terraform apply` to apply the changes
7. **CAUTION:** Run `terraform destroy` to destroy the infrastructure