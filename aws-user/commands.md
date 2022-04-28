
### AWS CLI Commands

[Reference](https://docs.aws.amazon.com/cli/latest/index.html)

```shell
aws --version
aws iam help

aws iam create-user help
aws --endpoint http://aws:4566 iam list-users
aws --endpoint http://aws:4566 create-user help
aws --endpoint http://aws:4566 create-user --user-name mary

aws --endpoint http://aws:4566 iam list-users
aws --endpoint http://aws:4566 iam attach-user-policy --user-name mary --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

aws --endpoint http://aws:4566 iam create-group help
aws --endpoint http://aws:4566 iam create-group --group-name project-sapphire-developers

aws --endpoint http://aws:4566 iam add-user-to-group help
aws --endpoint http://aws:4566 iam add-user-to-group --user-name jack --group-name project-sapphire-developers
aws --endpoint http://aws:4566 iam add-user-to-group --user-name jill --group-name project-sapphire-developers

aws --endpoint http://aws:4566 iam list-attached-group-policies --group-name project-sapphire-developers
aws --endpoint http://aws:4566 iam list-attached-user-policies --user-name jack

aws --endpoint http://aws:4566 iam attach-group-policy --group-name project-sapphire-developers --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess
```