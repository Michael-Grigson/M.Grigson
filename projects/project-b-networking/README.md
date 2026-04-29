# 📁 Project B - Azure Network Architecture & Connectivity  
📊 **Status:** 🟨 In Progress  

---

## 📖 Overview  

This project implements a structured Azure network architecture designed to support scalable, secure, and segmented workloads.  

It establishes foundational connectivity patterns, traffic control mechanisms, and repeatable deployment practices aligned to enterprise networking principles.  

The implementation includes:  

- Infrastructure as Code (IaC) using ARM templates and Bicep for repeatable deployment ✅
- Virtual network design with structured subnet segmentation ✅
- Network security enforcement using NSGs and application security groups ✅
- Inter-VNet connectivity using peering and custom routing  
- Traffic management using load balancing and application gateway patterns  

All components were deployed and validated through controlled testing of connectivity, routing, and access behaviour.  

The design aligns to core cloud architecture principles including segmentation, least privilege network access, and scalable infrastructure deployment.  

---

## 🎯 Scenario  

An organisation requires a cloud network architecture that ensures:  

- Scalable and repeatable infrastructure deployment 
- Segmentation of core services and workload environments  
- Secure communication between isolated network domains  
- Controlled inbound and outbound traffic flows   
- Foundation for enterprise landing zone expansion  

---

## 🏗 Architecture Model  

The architecture is based on multiple virtual networks with defined address spaces and subnet segmentation.  

- A **Core Services VNet** hosts shared and database subnets ✅  
- A **Manufacturing VNet** hosts isolated workload subnets ✅  
- **Network Security Groups (NSGs)** enforce subnet-level traffic control ✅  
- **Application Security Groups (ASGs)** provide logical grouping of workloads ✅  
- **Public DNS zones** support external name resolution ✅  
- **Private DNS zones** provide internal name resolution across VNets ✅  
- **VNet peering** enables private communication between networks  
- **User-defined routes (UDRs)** control traffic flow between subnets  

This model reflects a segmented and controlled network design aligned to Azure best practices.  

---

## 🔧 Implementation  

### 1. Infrastructure as Code (IaC) Foundation ✅  

- Deployed resources using ARM templates and Bicep  
- Parameterised deployments for reuse and consistency  
- Executed deployments via Azure Portal, PowerShell, and CLI  

> **Note**  
> The IaC implementation demonstrates the capability to deploy Azure infrastructure using declarative templates.  
> While the lab scenario focuses on generic resource deployment, the same approach is directly applicable to provisioning networking components such as VNets, subnets, and routing configurations in a consistent and repeatable manner.  

**Outcome**  

- Established repeatable infrastructure deployment model  
- Reduced manual configuration risk  
- Enabled scalable network provisioning approach  

---

### 2. Virtual Network Design & Segmentation ✅  

- Created multiple virtual networks for workload isolation  
- Defined structured IP addressing schemes  
- Implemented subnet segmentation for functional separation  

**Outcome**  

- Clear separation of core services and workload environments  
- Improved network organisation and scalability  
- Reduced risk of overlapping address spaces  

---

### 3. Network Security Enforcement ✅  

- Implemented Network Security Groups (NSGs) at subnet level  
- Defined inbound and outbound security rules  
- Utilised Application Security Groups (ASGs) for logical grouping  

**Outcome**  

- Enforced least privilege network access  
- Simplified rule management through grouping  
- Reduced exposure of internal resources  

---

## ✅ Validation and Testing  
   
- Validated NSG rules through controlled traffic scenarios  
- Confirmed routing behaviour via custom route testing  

---

## 🧠 Key Design Decisions  

- Established IaC as deployment baseline for infrastructure
- Segmented networks using multiple VNets instead of flat design  
- Used subnet-level security enforcement via NSGs  

---

## 📊 Skills Demonstrated  

- Infrastructure as Code (ARM / Bicep)  
- Azure virtual network design and segmentation  
- Network security implementation (NSG / ASG)  

---

## 📚 Key Learnings  

- IaC is essential for consistent infrastructure deployment
- Network segmentation is critical for scalability and security  
- Default routing is often insufficient for enterprise scenarios  
- NSG and ASG combination improves rule management    

---

## 🔍 Strategic Assessment  

### Strengths  

- Integration of IaC for deployment consistency  

---

### Priority Improvements    

- Implement hub-and-spoke architecture model  
- Expand DNS integration across VNets  
- Implement private endpoints for service access  

---

## 🚀 Next Steps  

- Extend architecture into full landing zone design  
- Integrate with compute and application workloads  
- Implement centralised network security controls  
- Align with enterprise-scale networking patterns  