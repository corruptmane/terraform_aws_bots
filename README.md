# Terraform Telegram Bot on AWS

---

### Preparations

1. Create IAM User:
    1. Follow [this link](https://consoleaws.amazon.com/iam/home)
    2. ...
2. Export AWS Credentials:
    1. Copy Access key ID
    2. Use these command: `export AWS_ACCESS_KEY_ID=access_key_id`
    3. Copy Secret access key
    4. Use these command: `export AWS_SECRET_ACCESS_KEY=secret_access_key`

### Deployment

1. Clone this repo:
    - HTTPS `git clone https://github.com/corruptmane/terraform_aws_bots.git`
    - SSH: `git clone git@github.com:corruptmane/terraform_aws_bots.git`
2. CD to directory with: `cd terraform_aws_bots`
3. Get Terraform AWS Provider with: `terraform init`
4. Start deploy with: `terraform apply` and typing `yes`

