<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Terraform Modular Infrastructure</title>
</head>
<body>
  <h1>🚀 Terraform Modular Infrastructure with for_each + Map</h1>

  <p>This repository contains a modular Terraform implementation for provisioning Azure infrastructure using <code>for_each</code> with map variables. The project emphasizes scalability, reusability, and clarity through proper module separation.</p>

  <h2>📁 Project Structure</h2>
  <pre><code>terraform/
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── modules/
│   ├── resource_group/
│   │   └── main.tf
│   ├── virtual_network/
│   │   └── main.tf
│   ├── subnet/
│   │   └── main.tf
│   ├── network_interface/
│   │   └── main.tf
│   └── virtual_machine/
│       └── main.tf
</code></pre>

  <h2>🧩 Features</h2>
  <ul>
    <li>Modular design using custom Terraform modules.</li>
    <li>Dynamic resource creation with <code>for_each</code> and map variables.</li>
    <li>Supports multi-VM deployment and reusability across environments.</li>
    <li>Clean separation of concerns and easy-to-manage codebase.</li>
  </ul>

  <h2>⚙️ Usage</h2>

  <h3>Step 1: Clone the repository</h3>
  <pre><code>git clone https://github.com/your-org/terraform-modular-infra.git
cd terraform-modular-infra</code></pre>

  <h3>Step 2: Define your variable map in <code>terraform.tfvars</code></h3>
  <pre><code>vms = {
  "vm1" = {
    rg_name         = "rg-dev"
    location        = "eastus"
    vnet_name       = "vnet-dev"
    subnet_name     = "subnet-dev"
    vm_size         = "Standard_B1s"
    admin_username  = "azureuser"
    admin_password  = "P@ssw0rd123!"
  },
  "vm2" = {
    rg_name         = "rg-dev"
    location        = "eastus"
    vnet_name       = "vnet-dev"
    subnet_name     = "subnet-dev"
    vm_size         = "Standard_B1s"
    admin_username  = "azureuser"
    admin_password  = "P@ssw0rd123!"
  }
}</code></pre>

  <h3>Step 3: Initialize and deploy</h3>
  <pre><code>terraform init
terraform plan
terraform apply</code></pre>

  <h2>🔒 Security Notes</h2>
  <ul>
    <li>Avoid hardcoding sensitive values like passwords.</li>
    <li>Use Azure Key Vault or tools like <code>sops</code> to manage secrets securely.</li>
    <li>Store your state in a remote backend (Azure Blob Storage) with encryption enabled.</li>
  </ul>

  <h2>📌 Best Practices</h2>
  <ul>
    <li>Use <code>for_each</code> to scale resources based on variable maps.</li>
    <li>Keep modules focused on a single resource type.</li>
    <li>Define outputs for reusable values across modules.</li>
    <li>Follow naming conventions for resources and modules.</li>
  </ul>

  <h2>📜 License</h2>
  <p>This project is open-source and available under the MIT License.</p>

  <h2>🙋 Author</h2>
  <p><strong>Jitender Kumar</strong><br>
  <a href="https://github.com/jitenderkumar" target="_blank">GitHub Profile</a></p>

  <p>Happy Terraforming! ☁️💻</p>
</body>
</html>
