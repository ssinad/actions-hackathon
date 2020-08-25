# Compile LaTeX Documents and Upload to Google Drive

### My Workflow
I wrote this workflow to keep a history of a latex document I was working on. I also wanted the document to be synced with my Google drive without me having to manually upload it every time I made a change.

### Prerequisites
* A Google [service account](https://cloud.google.com/iam/docs/service-accounts)
* An encryption tool such as `gpg`
* Google drive file ID (The file must be shared with the email associated with the service account)

GitHub suggests using tools such as `gpg` to store large secrets. I used `gpg` to encrypt the json file for the service account and included the encrypted file in the repository. I saved the passphrase as a GitHub secret.    
I also uploaded the first version of my pdf on to Google drive to get a file ID, which I saved as a GitHub secret, as well. I shared this file with the email associated with that service account.

### Workflow Steps
1. Install `texlive` (`latexmk` included)
2. Compile and typeset the pdf document
3. Save the generated pdf as an artifact
4. Decrypt the encrypted service account JSON file
5. Install [`google-api-python-client`](https://pypi.org/project/google-api-python-client/) python library
5. Upload the new version of the pdf onto Google Drive

### Possible Improvements
This was my first experience with GitHub Actions so there is still room for improvement, for example:

* The steps 1, 4, and 5 only need be done once. Therefore, it is possible to use GitHub's [cache action](https://github.com/actions/cache) and generate the dependencies and cache them. Then on the consequent runs, the runner can use the cached version to improve speed.  

* Also, I am looking to be able to get `tlmgr` working so that I can customize my LaTeX installation.

* As a next step, it may be possible to separate this action into two actions: one for compiling and saving, and the other for uploading onto Google drive

However, it should be good enough to get the job done.

### Submission Category: 
Wacky Wildcards

### Additional Resources / Info

1. https://cloud.google.com/iam/docs/service-accounts  
2. https://github.com/actions/cache  
3. https://docs.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets#limits-for-secrets
4. https://pypi.org/project/google-api-python-client  