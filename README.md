# 🔄 Repository Migration Notice ⚠️ DEPRECATED

This module has been migrated to a new organization and is no longer actively maintained here.

## 📦 New Module Location

All Azure Terraform modules previously hosted under:
```
clouddrove/terraform-azure-*
```

have been migrated to:
```
terraform-az-modules/terraform-azurerm-*
```

## 🔁 Mapping Convention

The module naming remains consistent following this pattern:

| Old Repository | New Repository |
|---|---|
| `terraform-azure-<resource>` | `terraform-azurerm-<resource>` |

### Examples

- `clouddrove/terraform-azure-vnet` → `terraform-az-modules/terraform-azurerm-vnet`
- `clouddrove/terraform-azure-aks` → `terraform-az-modules/terraform-azurerm-aks`
- `clouddrove/terraform-azure-storage` → `terraform-az-modules/terraform-azurerm-storage`

## 🚀 What You Should Do

### Update your Terraform module source:

**❌ Old:**
```hcl
module "example" {
  source = "github.com/clouddrove/terraform-azure-<resource>"
}
```

**✅ New:**
```hcl
module "example" {
  source = "github.com/terraform-az-modules/terraform-azurerm-<resource>"
}
```

## ⚠️ Important Notes

- ❌ **No new features or fixes** will be added to this repository
- 🛠️ **Only critical fixes** (if any) may be applied
- ✅ **All active development** continues in the new organization

## 📚 Why the Migration?

This move helps to:

- Standardize module naming (`azurerm` provider alignment)
- Improve maintainability and structure
- Enable better versioning and scalability across modules

## 🤝 Support

For issues, enhancements, or contributions, please use the new repository:

👉 **[https://github.com/terraform-az-modules](https://github.com/terraform-az-modules)**

## 📣 Final Note

If you're still using this module, it's **strongly recommended** to migrate to the new location to stay up to date with improvements and fixes.

---

**Last Updated:** April 2026
