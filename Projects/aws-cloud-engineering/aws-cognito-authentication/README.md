# 🔐 AWS Cognito Authentication

[↩️ Back to AWS Cloud Engineering](../)  
[📁 Back to Projects Index](../../)

---

## Overview

This project adds Cognito authentication to the existing Secure Serverless Notes API — securing all endpoints so only verified users can access note data.

| Area | Detail |
|---|---|
| **Platform** | Amazon Web Services (AWS) |
| **Service** | Amazon Cognito — User Pool + Identity Pool |
| **Integration** | API Gateway authorizer |
| **Access** | Authenticated users only |
| **Region** | eu-west-2 (London) |

---

## Skills Demonstrated

| Skill | Evidence |
|---|---|
| **Cognito User Pool** | Created and configured a user directory with email sign-in |
| **Identity Pool** | Configured federated identity pool with authenticated access only |
| **Identity Provider Trust** | Linked User Pool as trusted identity source with Client ID |
| **API Gateway Authorizer** | Attached Cognito authorizer to secure all API endpoints |
| **Token-Based Auth** | Used Cognito ID token to authenticate API requests |
| **IAM Role Assignment** | Created IAM role for authenticated Cognito identities |
| **Least Privilege** | Guest access disabled — authenticated users only |
| **Security Testing** | Verified 401 on unauthenticated and 200 on authenticated requests |

---

## Evidence

### Cognito User Pool Created

![User Pool](../../../assets/aws-cloud-engineering/aws-cognito-authentication/01-user-pool.png)

### Test User Created and Enabled

![Test User](../../../assets/aws-cloud-engineering/aws-cognito-authentication/02-test-user.png)

### Identity Pool — Authenticated Access Only

![Identity Pool](../../../assets/aws-cloud-engineering/aws-cognito-authentication/03-identity-pool.png)

### Identity Provider Trust — User Pool Linked

![Identity Provider Trust](../../../assets/aws-cloud-engineering/aws-cognito-authentication/04-identity-provider-trust.png)

### API Gateway — Cognito Authorizer Configured

![API Authorizer](../../../assets/aws-cloud-engineering/aws-cognito-authentication/05-api-authorizer.png)

### API Deployed to Production Stage

![API Deployment](../../../assets/aws-cloud-engineering/aws-cognito-authentication/06-api-deployment.png)

### Unauthenticated Request — 401 Denied

![Unauthenticated Denied](../../../assets/aws-cloud-engineering/aws-cognito-authentication/07-unauthenticated-denied.png)

### Authenticated Request — 200 Success

![Authenticated Success](../../../assets/aws-cloud-engineering/aws-cognito-authentication/08-authenticated-success.png)

---

## What This Proves

Without a valid Cognito token, all API requests are rejected. With a verified token, the API returns data. This demonstrates end-to-end authentication control over a live AWS serverless API.

---

> 🔒 Public-safe evidence only. No account IDs, secrets, real user data, or production records are included. All users and resources are lab-based.
