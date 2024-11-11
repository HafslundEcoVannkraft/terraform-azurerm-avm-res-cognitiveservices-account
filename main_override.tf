resource "azurerm_cognitive_deployment" "this" {
  dynamic "sku" {
    for_each = [each.value.sku] # TODO:fix var
    content {
      capacity = sku.value.capacity
      name     = sku.value.name # TODO: parameterize
      tier     = sku.value.tier
      size     = sku.value.size
      family   = sku.value.family
    }
  }
  # dynamic "scale" {
  #   for_each = [each.value.scale]

  #   content {
  #     type     = scale.value.type
  #     capacity = scale.value.capacity
  #     family   = scale.value.family
  #     size     = scale.value.size
  #     tier     = scale.value.tier
  #   }
  # }
}