# Example using CodePipeline deployment of containerized function

Creates a containerized AWS Lambda function deployed using AWS CodePipeline and CodeDeploy.

## usage

```
terraform init
terraform plan
```

Note that this example may create resources which cost money. Run `terraform destroy` to destroy those resources.

### deploy

Push an updated container image to `ECR` to start the deployment pipeline:

```shell
aws ecr get-login-password --region {region} | docker login --username AWS --password-stdin {account_id}.dkr.ecr.{region}.amazonaws.com
docker build --tag {account_id}.dkr.ecr.{region}.amazonaws.com/with-ecr-codepipeline:production {context}
docker push {account_id}.dkr.ecr.{region}.amazonaws.com/with-ecr-codepipeline:production
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.9 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.38.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_deployment"></a> [deployment](#module\_deployment) | ../../../modules/deployment | n/a |
| <a name="module_lambda"></a> [lambda](#module\_lambda) | ../../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_lambda_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_alias) | resource |
| [null_resource.initial_image](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

No inputs.

## Outputs

No outputs.