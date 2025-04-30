# Work Order: External Drive Preparation (WO-1)

**Date Created:** 2025-04-27 18:57:02 PDT
**Status:** Open
**Goal:** Prepare the new 4TB Samsung T7 Shield external SSD for use with the Sky project, including formatting and migrating relevant data from the existing external drive.

---

## Tasks:

1.  **[x] Format New Drive (Samsung T7 Shield 4TB):**
    *   Connect the new T7 Shield drive to the MacBook Pro.
    *   Open **Disk Utility** (Applications > Utilities > Disk Utility).
    *   Select the T7 Shield drive (ensure you select the correct drive!).
    *   Click **Erase**.
    *   Set **Name:** (e.g., `T7_Media_Vault` or similar)
    *   Set **Format:** `APFS`
    *   Set **Scheme:** `GUID Partition Map`
    *   Click **Erase** and wait for completion.

2.  **[x] Create Top-Level Folder Structure on New Drive:**
    *   In Finder, navigate to the newly formatted drive (e.g., `T7_Media_Vault`).
    *   Create the following top-level folders:
        *   `Media`
        *   `Audio_Projects`
        *   `Sample_Libraries`

3.  **[x] Migrate Sample Libraries:**
    *   Connect the **existing** external drive containing your current sample libraries.
    *   Open two Finder windows side-by-side: one showing the `Sample_Libraries` folder on the **new T7 drive**, the other showing the source location of your sample libraries on the **existing drive**.
    *   **Carefully copy** (do **not** move yet) the entire contents of your Spitfire, 8Dio, Native Instruments (Kontakt libraries), ProjectSAM, etc., library folders from the **existing drive** to the `Sample_Libraries` folder on the **new T7 drive**.
    *   *Note: This may take a significant amount of time depending on the total size.* Allow the copy process to complete fully without interruption.

4.  **[ ] Migrate Existing Media/Project Files (Optional but Recommended):**
    *   Identify any existing video footage, FCP libraries, Logic sessions, or other project-related media on the **existing external drive** that you want to use with the Sky project.
    *   Copy these files into the appropriate folders on the **new T7 drive** (e.g., existing footage into `Media/`, existing Logic sessions into `Audio_Projects/`). Maintain organizational structure where possible.

5.  **[x] Update Software Library Paths:**
    *   Once the sample library copy is complete and verified, update the paths within the relevant software:
        *   Open **Native Access** > Preferences > File Management > Content Location. Set it to point to the `Sample_Libraries` folder on the **new T7 drive** (or the specific subfolder containing NI libraries).
        *   Open the **Spitfire Audio App** > Settings > Default Content Path. Set it to point to the `Sample_Libraries/Spitfire` (or equivalent) folder on the **new T7 drive**. Relocate libraries within the app if necessary.
        *   Open **Kontakt** (standalone or within Logic) > Settings/Options > Libraries. Ensure all libraries are correctly located. Re-scan or relocate if needed.
        *   Verify paths for any other library managers (e.g., 8Dio uses Kontakt primarily).
        *   Verify paths for UVI Portal.
    *   **Important:** Test load a few key patches from different libraries in Logic Pro to confirm they are found correctly. (User confirmed successful loading).

6.  **[x] Update Sky Project Documentation:**
    *   Open the `Sky` project in Cursor.
    *   Edit `knowledge-base/sample-libraries/catalog.md`.
    *   Update the `Location:` paths for each library to reflect the new location on the T7 drive (e.g., `/Volumes/T7_Media_Vault/Sample_Libraries/Spitfire/Symphony Orchestra/`). (Completed, pending minor refinements).

7.  **[ ] Verify & Backup (Crucial):**
    *   Double-check that all necessary files have been copied successfully to the new T7 drive. (Libraries verified by loading, other media TBD).
    *   **Before decommissioning or reformatting the old drive**, ensure you have a separate backup of its contents if needed.
    *   Consider setting up a backup solution (like Time Machine or Backblaze) for the new T7 drive itself going forward (though this is outside the scope of *this* specific work order).

8.  **[ ] Decommission Old Drive (Optional):**
    *   Once fully satisfied that all data is safely migrated and working from the new T7 drive, and backups are in place, you can optionally eject and disconnect the old external drive, or reformat it for other purposes.

---

**Notes:**

*   Be extremely careful when selecting drives in Disk Utility and when copying files to avoid data loss.
*   File migration, especially for large sample libraries, can take hours. Plan accordingly.
*   Test thoroughly after updating library paths before relying solely on the new drive.
