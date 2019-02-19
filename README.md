# Add self-signed localhost cert
Step by step on how to add self signed localhost cert

## Step by step 
### 1. Run Powershell as admin
### 2. Run the script
```
.\createLocalhostCert.ps1
```

#### 2.1 if error "..is not digitally signed.  The script will not execute on the system"

```
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```
Then run 2 again...

### 3. Open Microsoft Management Console 
Press Win + r 
```
mmc.exe
```
### 4. Add Cert add-in

```
File --> Import Add/Remove Snap-in --> Available snap-ins --> Certificates --> Add --> Computer account --> Next --> Local computer --> Finish
```

### 5. Import your cert

```
Certificates --> Right click "Trusted Root Certification" --> Import
```
Follow the steps and browse to the cert located at c: and add the password 1234 (note: show all file types in the browse dialog)
