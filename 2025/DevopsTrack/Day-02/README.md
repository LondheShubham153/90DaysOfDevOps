## 📅 Day 02: DevOps Lifecycle & Case Study

---

## 🔁 DevOps Lifecycle
![devopsLife](https://github.com/user-attachments/assets/f4c7fb4b-38ec-4d05-815d-77ea86496666)

The DevOps lifecycle is a series of team work steps that help teams build, test, and release software faster and more reliably. It’s organised to keep the development process flowing smoothly, with instant feedback and continuous improvements.

Here’s a quick breakdown of the key stages:

- **Plan** – Teams come together to define features, make goals, and performs tasks.
- **Develop** – Code is written, reviewed, and managed using version control tools.
- **Build** – The code is compiled and packaged into deployable units.
- **Test** – Automated tests are run to catch bugs and ensure everything works as expected.
- **Release** – The approved build is prepared for deployment.
- **Deploy** – Code is pushed to production in a consistent and automated way.
- **Operate** – The system runs in a live environment, with infrastructure and apps being maintained.
- **Monitor** – Logs and metrics are tracked to detect issues early and learn from performance data.

These stages form a continuous loop, helping teams ship updates quickly, catch problems early, and improve with every cycle.


---

## 🚨 Exercise: Case Study on Failure Without DevOps

### 1️⃣ Company: Knight Capital Group  
**Year:** 2012  

**What Happened:**  
Knight Capital, a major trading firm, deployed new code to their production servers — but only partially. Due to a misstep, some servers ran the updated code while others kept running the old one. As a result, their trading platform started making erratic trades, losing a staggering **$460 million in under an hour**. The error was so severe it nearly bankrupted the company.

**What Went Wrong:**

- No proper automation or CI/CD process.
- Version control was poorly managed.
- Lack of testing and deployment validation.
- No rollback or alerting system to catch the issue quickly.

**Lesson:**  
Without DevOps practices like version control, automated deployment, and monitoring, even a single mistake can cause irreversible damage — especially in time-sensitive industries like finance.

---

### 2️⃣ Company: Target (Canada)  
**Year:** 2013–2015  

**What Happened:**  
When Target expanded into Canada, it rushed to launch over 100 stores. But behind the scenes, their IT and supply chain systems were not ready. Poor data handling, no integration between development and operations, and manual processes caused massive inventory issues — empty shelves in some stores, overstock in others.

They spent **billions** trying to fix it, but the damage was done. Within two years, Target Canada shut down completely.

**What Went Wrong:**

- No unified DevOps culture between IT, logistics, and business.
- Poor software integration and data syncing.
- Manual, error-prone processes.
- Lack of monitoring and feedback loops to react quickly.

**Lesson:**  
When systems don’t talk to each other and teams work in silos, small issues grow fast. A DevOps culture could have aligned their tech and business teams to move more smartly and avoid disaster.

[Previous Day →](../Day-01/README.md)                                                                                    [Next Day →](../Day-03/README.md)                                                                                                                        
