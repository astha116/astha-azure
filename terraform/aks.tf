resource "azurerm_log_analytics_workspace" "law" {
  name                = "${var.aks_name}-law"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "${var.aks_name}-dns"

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size    = var.node_size
  }

  identity { type = "SystemAssigned" }

  # Container insights (logs) -> Log Analytics
  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  }

  # OPTIONAL: Prometheus-based metrics via Azure Monitor Managed Prometheus
  # (requires the Microsoft.Monitor RP registered, etc.)
  # monitor_metrics {
  #   enabled = true
  # }
}
