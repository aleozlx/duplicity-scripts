# duplicity-scripts

My duplicity backup scripts

## [stable] Backup using ssh backend
+ backup-ssh.sh
+ ignore	(_Exclude list for backup-ssh.sh_)

> Steps
> 1. Install dependencies listed in comments inside backup-ssh.sh
> 2. Ensure duplicity is installed
> 3. Configure your ssh connection.. public key and such
> 4. Create your ignore file (could add --dry-run to duplicity command for debugging)
> 5. Change sourse/destination for your case
> 6. Optionally, add the script to crontab or some other scheduler for automation

## [stable] Backup using local storage + Google Cloud mirror storage
+ _I set up deja-dup on my Ubuntu, but a script similar to backup-ssh.sh can be used_
+ sync-gcloud.sh	(_Sync mirror storage_)

> Steps
> 1. Set up a local storage based backup solution
> 2. Enable Google Cloud Storage API
> 3. Install and configure Google Cloud SDK
> 4. Modify sync-gcloud.sh to your need

## [out of maintainance] Backup using Google Drive backend
+ backup-gdrive.sh
+ requirements.txt (_Dependencies_)
+ google-drive (_Google Drive API Credentials git-ignored_)
