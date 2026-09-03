# IBM Cloud Sentinel Policies

A collection of Sentinel policies for validating IBM Cloud Terraform plans in Terraform Enterprise.

## Included Policies

| Policy | Description |
| --- | --- |
| `restrict-ssh` | Prevents inbound SSH access on port 22 from `0.0.0.0/0`. |
| `require-byok-boot-encryption` | Requires IBM Cloud instance boot volumes to use BYOK encryption. |
| `require-no-sg-acl-rules` | Requires IBM Cloud VPCs to disable automatically created security group and network ACL rules. |

All policies are configured with `hard-mandatory` enforcement in [`sentinel.hcl`](sentinel.hcl).

## Usage with Terraform Enterprise

1. Connect this directory as a VCS-based Sentinel policy set repository or policy set directory in Terraform Enterprise.
2. Select the organization or workspaces to which the policy set applies.
3. Run a Terraform plan and review the Sentinel policy evaluation results.

The policies inspect IBM Cloud resource changes in the Terraform plan through `tfplan/v2`. The Terraform Enterprise run must therefore include IBM Cloud provider resources in its plan.

## File Structure

```text
sentinel-policies/
├── sentinel.hcl
├── restrict-ssh.sentinel
├── require-byok-boot-encryption.sentinel
├── require-no-sg-acl-rules.sentinel
└── README.md
```

When adding or modifying a policy, register its `source` and `enforcement_level` in `sentinel.hcl`.
