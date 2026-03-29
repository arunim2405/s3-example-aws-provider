# s3-example-aws-provider

A minimal Terraform project to reproduce AWS provider startup failures.

## Project Structure

```
.
├── versions.tf   # Terraform and provider version constraints
└── main.tf       # Minimal AWS resource to trigger provider validation
```

## Purpose

This project forces Terraform to load and validate the AWS provider during
`terraform plan`, which can reproduce provider startup errors such as:

- `The plugin.(*GRPCProvider).ValidateResourceConfig request was cancelled`
- `rpc error: code = Unavailable desc = error reading from server: EOF`
- `timeout while waiting for plugin to start`

## Usage

```bash
terraform init
terraform plan
```

No real AWS credentials are required — mock credentials are supplied in
`versions.tf` so that Terraform reaches the provider validation stage without
attempting to call real AWS APIs.