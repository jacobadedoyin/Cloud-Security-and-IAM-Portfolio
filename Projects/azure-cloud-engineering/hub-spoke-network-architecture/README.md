# 🌐 Hub-Spoke Network Architecture

<p align="left">
  ↩️ <a href="../"><strong>Back to Azure Cloud Engineering Index</strong></a><br>
  📁 <a href="../../"><strong>Back to Projects Index</strong></a>
</p>

## Overview

Designed and deployed a hub-spoke network topology on a personal Azure subscription using Bicep and GitHub Actions. The architecture enforces network segmentation, controlled traffic flow, and private connectivity -- the standard pattern used in regulated enterprise Azure environments.

---

## What I Built

| Component | Detail |
|---|---|
| **Hub VNet** | Central network hosting shared services and acting as the connectivity backbone |
| **Spoke VNets** | Two isolated spoke networks peered to the hub, each hosting separate workload subnets |
| **VNet Peering** | Private connectivity between hub and spokes via Microsoft backbone, no public internet exposure |
| **NSG Rules** | Inbound and outbound traffic rules enforced on each subnet, restricting lateral movement |
| **Private DNS Zone** | Custom DNS resolution scoped to the VNet, eliminating public DNS dependency |
| **Private Endpoint** | Storage account locked off the public internet, accessible only via private network path |
| **Bicep Modules** | Each component deployed as a reusable Bicep module with consistent tagging and naming |
| **GitHub Actions** | CI/CD pipeline deploying the full topology with what-if preview before every deployment |

---

## Architecture

<p align="center">
  <img src="../../assets/azure-cloud-engineering/hub-spoke-architecture.png" alt="Hub-Spoke Network Architecture" width="900">
</p>

---

## Bicep Module Structure
