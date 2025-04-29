# Backup Strategy

*Last updated: 2025-04-29*

This document outlines the backup strategy for the Sky project, focusing on the `T7_Media_Vault` external drive and essential local project files.

## Goal: 3-2-1 Backup

The aim is to follow the 3-2-1 backup principle:
- **3 Copies:** Maintain at least three copies of important data.
- **2 Media:** Store copies on at least two different types of storage media.
- **1 Off-site:** Keep at least one copy in a different physical location.

## Current Implementation (Phase 1)

- **Copy 1:** Working data on `T7_Media_Vault` and `Macintosh HD` (`/Users/henrygroman/development`, `/Users/henrygroman/projects`).
- **Copy 2 (Off-site):** Cloud backup via **Backblaze Personal Backup**.

### Backblaze Configuration:

- **Service:** Backblaze Personal Backup (Monthly Subscription)
- **Included Drives:**
  - `T7_Media_Vault` (Primary Target)
  - `Macintosh HD` (Required by Backblaze Personal)
- **Key Manual Exclusions from `Macintosh HD`:**
  - To prioritize backing up `T7_Media_Vault` and essential development/project files, the following large or non-critical folders from `Macintosh HD` have been manually added to Backblaze's exclusion list:
    - `/Applications`
    - `/bin`
    - `/dev`
    - `/etc`
    - `/home`
    - `/Library`
    - `/opt`
    - `/private`
    - `/sbin`
    - `/System`
    - `/usr`
    - `/Users/henrygroman/Applications`
    - `/Users/henrygroman/bin`
    - `/Users/henrygroman/Creative Cloud Files Personal Account hank@lastapple.com...` *(path truncated)*
    - `/Users/henrygroman/Desktop`
    - `/Users/henrygroman/Documents`
    - `/Users/henrygroman/Downloads`
    - `/Users/henrygroman/Dropbox`
    - `/Users/henrygroman/git_changes_backup`
    - `/Users/henrygroman/iCloud Drive (Archive)`
    - `/Users/henrygroman/Library` *(Note: Includes subfolders like CloudStorage for OneDrive)*
    - `/Users/henrygroman/Movies`
    - `/Users/henrygroman/Music`
    - `/Users/henrygroman/My Drive`
    - `/Users/henrygroman/nltk_data`
    - `/Users/henrygroman/opt`
    - `/Users/henrygroman/Pictures`
    - `/Users/henrygroman/Public`
    - `/Users/henrygroman/ScraperSky-Archives`
    - `/Users/henrygroman/Spitfire`
- **Intentionally NOT Excluded from `Macintosh HD`:**
  - `/Users/henrygroman/development`
  - `/Users/henrygroman/projects`
- **Other Exclusions:** Backblaze also applies its own default exclusions for temporary files, caches, system files, etc.

## Future Plans (Phase 2)

- **Add Local Backup (Copy 3):** Implement an automated local backup of `T7_Media_Vault` (and potentially `/Users/henrygroman/development`, `/Users/henrygroman/projects`) to a Network Attached Storage (NAS) device located [Specify Location - e.g., at home/office]. Use backup software on the Mac (e.g., Time Machine, Carbon Copy Cloner) to target the NAS. This will provide faster local restores and complete the 3-2-1 strategy with automated local backups.

## Recovery Information

- **Backblaze Restore:** Data can be restored via web download or by requesting a physical hard drive from Backblaze. See [Backblaze Restore Options](https://www.backblaze.com/backup/restore.html).
