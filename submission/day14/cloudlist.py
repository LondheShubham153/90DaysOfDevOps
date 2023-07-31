cloud_providers = ["AWS", "GCP", "Azure"]
print('before: ',cloud_providers)
cloud_providers.append("Digital Ocean")
cloud_providers.sort()
print('after: ',cloud_providers)
