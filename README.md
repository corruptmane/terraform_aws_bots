# Terraform Telegram Bot on AWS

---

### Preparations

1. Create IAM User:
    - Follow [this link](https://consoleaws.amazon.com/iam/home) (Type IAM in AWS Console Search Bar)
    - Click "Access Management" -> "Users" -> "Add users"
    - Choose name for this user (`terraformer` for example)
    - Select AWS access type ("Access key - Programmatic Access") then click button called "Next"
    - Click on button `Attach existing policies directly`
    - If you don't know what to do, just choose an "AdministratorAccess" and then 2 times button "Next"
    - Click on button called "Create user"

---

# WARNING!!! DO NOT SHARE THESE CREDENTIALS WITH ANYONE WHO YOU DON'T TRUST.

---

2. Export AWS Credentials:
    - Copy Access key ID
    - Use these command in your terminal: `export AWS_ACCESS_KEY_ID=access_key_id`
    - Copy Secret access key
    - Use these command in your terminal: `export AWS_SECRET_ACCESS_KEY=secret_access_key`

### Deployment

1. Clone this repo:
    - HTTPS `git clone https://github.com/corruptmane/terraform_aws_bots.git`
    - SSH: `git clone git@github.com:corruptmane/terraform_aws_bots.git`
2. CD to directory with: `cd terraform_aws_bots`
3. Get Terraform AWS Provider with: `terraform init`
4. Start deploy with: `terraform apply` and typing `yes`
5. Wait for successfully deployment of server

