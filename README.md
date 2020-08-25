# Compile LaTeX Documents and Upload to Google Drive

### My Workflow
I wrote this workflow to keep a history of a latex document I was working on. I also wanted the document to be synced with my Google drive without me having to manually upload it every time I made a change.

#### Prerequisites
* A Google [service account](https://cloud.google.com/iam/docs/service-accounts)
* An encryption tool such as `gpg`
* Google drive file ID (The file must be shared with the email associated with the service account)

### Additional Resources / Info

1. https://cloud.google.com/iam/docs/service-accounts  
2. https://github.com/actions/cache  
3. https://docs.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets#limits-for-secrets
4. https://pypi.org/project/google-api-python-client  