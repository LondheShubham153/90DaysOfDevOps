# Alerting
![image](https://github.com/user-attachments/assets/379d909b-2bd8-4d20-b210-46e72fb824bf)

# Grafana Cloud: Simplified and Scalable Monitoring
Grafana Cloud is a comprehensive and managed observability platform offered by Grafana Labs. It brings together a suite of tools, including Grafana for visualization, Prometheus for monitoring, and Loki for log aggregation, into a unified and fully managed solution. With Grafana Cloud, teams can effortlessly set up, maintain, and scale their monitoring infrastructure, freeing up valuable time and resources for other critical tasks.
Grafana Alerting: Stay Informed, Act Swiftly
Grafana Alerting is an integral part of Grafana Cloud, enabling us to proactively monitor our systems and respond to anomalies and incidents in real time. With Grafana Alerting, we can define alert rules based on specific thresholds or conditions, and receive instant notifications via various channels like email, Slack, PagerDuty, or custom webhooks when those rules are triggered.
# Key Features of Grafana Alerting:
Rule-based Alerts: We can create rules using PromQL (Prometheus Query Language) expressions to evaluate metrics data and define alert conditions.

* Multiple Notification Channels: Grafana supports a wide range of notification channels, allowing us to receive alerts in the most convenient and timely manner.

* Silencing and Muting: We can silence or mute specific alerts during maintenance or known incidents to avoid unnecessary noise.

* Alert History and Tracking: Grafana maintains a history of triggered alerts, giving us insights into past incidents and their resolutions.

* Dashboard Integration: We can visualize alerts directly on Grafana dashboards, providing a holistic view of our system's health.

# Task: Setup Grafana Cloud and Sample Alerting
* Step 1: Setup Grafana Cloud Account
Navigate to the Grafana Cloud website (grafana.com/cloud) and sign up for an account.

![image](https://github.com/user-attachments/assets/88287a00-86d4-4e99-9076-366c6a8687e7)

Follow the on-screen instructions to set up your Grafana Cloud account, including providing the necessary details and configuring preferences.

![image](https://github.com/user-attachments/assets/95c51dc4-0e87-41cf-ba1a-86566a9f726e)

Scroll down until you see the Prometheus option and hit the 'Send Metrics' button.

![image](https://github.com/user-attachments/assets/714f62d7-b69d-4d31-ac32-240b24d9ff63)

Follow the instructions on the screen to integrate your Prometheus Server with Grafana Cloud.

![image](https://github.com/user-attachments/assets/85e54819-e2aa-464e-9704-ea0f505a0013)

You will have to add the remote_write module to your existing prometheus.yml config file.

![image](https://github.com/user-attachments/assets/9c089863-afd3-4694-943e-0fe1a9b62482)

Once this is set up, we can import our preferred Grafana dashboard or create our own one and start monitoring our infrastructure.

![image](https://github.com/user-attachments/assets/3deb8026-67a1-4469-9154-098e9a9565c2)

* Step 2: Setup Sample Alerting
This step will be completed in Grafana OSS.

![image](https://github.com/user-attachments/assets/257db5e0-fa91-4271-84e1-58d313eeacc0)

Log in to your Grafana dashboard.
Click on "Alerting" in the left-hand sidebar to access the Alerting configuration.

![image](https://github.com/user-attachments/assets/43e8e42b-9922-4cdf-ad4d-45ca85b1096b)

Click on "Create Rule" to set up a new alerting rule.

![image](https://github.com/user-attachments/assets/6d40fa62-4e11-4824-bb61-0f3a310f5880)

Define the conditions for the alerting rule based on your data and requirements. Once done, save the Alert Rule.

![image](https://github.com/user-attachments/assets/4f5bd30a-b2ff-4c13-9bff-6c88a5ebe0ed)

Select Contact Points to specify the notification channels, such as email, Slack, or other integrations, where alerts will be sent when triggered. In this case, I will use Slack. You can follow the steps from the Slack Official Documentation to send messages using Incoming Webhooks.

![image](https://github.com/user-attachments/assets/941a4af6-460c-4b00-a97a-9b2ca25e317d)

Our alert is now in a normal state as the CPU usage is not higher than 2% at the moment.

![image](https://github.com/user-attachments/assets/af2c8ec9-a972-45cb-a18e-5d600fb5128a)

Let's stress our system using the below commands and see if the alerting system works as expected.

```
 sudo apt install stress
 stress --cpu 4
```
We can see how our alert rule is now on 'Firing' mode and has triggered and slack alert.

![image](https://github.com/user-attachments/assets/b5072607-e078-4557-8d4d-e3757ddf8c4f)

![image](https://github.com/user-attachments/assets/61f81ae4-ee84-4101-bf48-34c17a4bc461)

As soon as we stop the stress test, the system will resolve the alert and notify us via Slack.

![image](https://github.com/user-attachments/assets/c6aa2613-ccb5-425e-888f-46aae5f2675d)



