# **🌍 Deploy and Manage Core Kubernetes Objects 🛠️**

## **📖 Scenario**

Welcome to the next level of Kubernetes mastery! 🚀 In this task, you'll deploy core Kubernetes objects for the **online_shop** application, including **Deployments, ReplicaSets, StatefulSets, and DaemonSets** while using **Namespaces** to **isolate resources**. Let’s get started! 💡

---

## **🛠️ Steps to Follow**

### **1️⃣ Create a Namespace 🏷️**

Namespaces allow you to **logically separate workloads** within a cluster. Think of them as different sections of a supermarket 🛒—each aisle (namespace) contains specific types of products (resources).

#### **📜 Write a YAML file (`namespace.yaml`)**

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: online-shop
```

#### **🚀 Apply the YAML**

```bash
kubectl apply -f namespace.yaml
```

📌 **Things to Take Care Of:**

- Always **use namespaces** for organizing workloads in large clusters.
- Avoid creating **too many namespaces** unless necessary—**simplicity wins**! 🎯

---

### **2️⃣ Deploy a Deployment 🎭**

Deployments ensure that a specified number of pod replicas are **running and maintained**.

#### **📜 Create a YAML file (`deployment.yaml`)**

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: shop-deployment
  namespace: online-shop
spec:
  replicas: 3
  selector:
    matchLabels:
      app: shop
  template:
    metadata:
      labels:
        app: shop
    spec:
      containers:
        - name: shop-container
          image: nginx:latest
```

#### **🚀 Apply the Deployment**

```bash
kubectl apply -f deployment.yaml
```

📌 **Things to Take Care Of:**

- **Verify ReplicaSet creation** with `kubectl get replicasets -n online-shop` 🔍.
- **Ensure proper resource limits** to prevent overconsumption of CPU and memory! 🚨

---

### **3️⃣ Deploy a StatefulSet 🏛️**

StatefulSets are used for applications that require **persistent storage**, like databases 📦.

#### **📜 Create a YAML file (`statefulset.yaml`)**

```yaml
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: db-statefulset
  namespace: online-shop
spec:
  serviceName: "db-service"
  replicas: 2
  selector:
    matchLabels:
      app: database
  template:
    metadata:
      labels:
        app: database
    spec:
      containers:
        - name: database-container
          image: postgres:latest
          volumeMounts:
            - name: db-storage
              mountPath: "/var/lib/postgresql/data"
  volumeClaimTemplates:
    - metadata:
        name: db-storage
      spec:
        accessModes: ["ReadWriteOnce"]
        resources:
          requests:
            storage: 1Gi
```

#### **🚀 Apply the StatefulSet**

```bash
kubectl apply -f statefulset.yaml
```

📌 **Things to Take Care Of:**

- Always use **PersistentVolumes** for databases to avoid data loss 📂.
- Ensure your **storage class supports StatefulSets**!

---

### **4️⃣ Deploy a DaemonSet 🔄**

DaemonSets ensure that **a pod runs on every node**, commonly used for logging and monitoring.

#### **📜 Create a YAML file (`daemonset.yaml`)**

```yaml
apiVersion: apps/v1
kind: DaemonSet
metadata:
  name: monitoring-daemon
  namespace: online-shop
spec:
  selector:
    matchLabels:
      app: monitor
  template:
    metadata:
      labels:
        app: monitor
    spec:
      containers:
        - name: log-agent
          image: fluentd:latest
```

#### **🚀 Apply the DaemonSet**

```bash
kubectl apply -f daemonset.yaml
```

📌 **Things to Take Care Of:**

- **DaemonSets are not for scaling!** They ensure **one pod per node**.
- Great for **log collection (Fluentd, Filebeat) and monitoring (Prometheus Node Exporter)**! 📊

---

## **📄 Document Your Learnings 📝**

📌 **Include all YAML files** created above.
📌 **Explain the differences** between **Deployment, StatefulSet, and DaemonSet**.
📌 **Highlight real-world use cases** where each is used.

---

## **🤔 Interview Questions & Answers**

### **1️⃣ How does a Deployment maintain the desired state?**

Deployments use **ReplicaSets** to ensure a specified number of pods **are always running**. If a pod crashes, the ReplicaSet replaces it. 🔄

### **2️⃣ Differences between Deployment, StatefulSet, and DaemonSet?**

| Feature          | Deployment                   | StatefulSet                     | DaemonSet                     |
| ---------------- | ---------------------------- | ------------------------------- | ----------------------------- |
| **Pod Identity** | No fixed identity            | Fixed Identity                  | Runs on all nodes             |
| **Use Case**     | Web apps, stateless services | Databases, apps needing storage | Monitoring, logging           |
| **Scaling**      | Easy to scale                | Maintains order & identity      | No scaling, runs one per node |

📌 **Example Scenarios:**

- **Deployment** → Microservices like frontend or backend services.
- **StatefulSet** → Databases like PostgreSQL, MongoDB.
- **DaemonSet** → Log collection, network monitoring.

📌 **Things to Take Care Of:**

- **Deployments auto-scale easily**, but **StatefulSets require careful management**.
- **DaemonSets should only be used for system-wide processes**.

---

## **🎯 Conclusion 🎉**

You have now mastered **Deployments, StatefulSets, DaemonSets, and Namespaces**! 🎯 Keep experimenting and deploying **real-world Kubernetes applications**.

📌 **Final Things to Take Care Of:**
✅ Use **Namespaces** to **organize workloads efficiently**.
✅ **Monitor resources carefully** to **avoid overuse**.
✅ **Apply Role-Based Access Control (RBAC)** for security. 🔐
✅ **Use StatefulSets for databases, not regular Deployments!**
✅ **DaemonSets should be limited to essential tasks like logging & monitoring.**

---
