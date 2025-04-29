# Creator Ops Workspace Workflow Guide

This guide presents a lightweight workflow for organizing video editing and music production projects in VS Code (Cursor). It covers a clean folder structure, naming conventions, Markdown templates for project documents, simple shell scripts for common tasks, and helpful VS Code extensions for productivity.

## Folder Structure Layout

Organize each project in its own folder with clear subfolders for different types of content. A consistent folder layout makes it easy to locate video footage, audio files, documents, and reference media. For example, you can prefix folders with numbers to enforce order (optional but helps visually sorting ([Video Editing Quick Tip: File & Folder Organization - PremiumBeat](https://www.premiumbeat.com/blog/video-editing-quick-tip-file-folder-organization/#:~:text=PremiumBeat%20www,Once%20you))). Below is a sample structure:

```text
MyProject
├── 01_Video
│   ├── Exports
│   ├── MyProject.fcpbundle
│   └── Raw
├── 02_Audio
│   ├── Exports
│   ├── MyProject.logicx
│   └── Stems
├── 03_Documents
│   ├── Gear_Catalogue.md
│   ├── Journal.md
│   └── Project_Brief.md
└── 04_Reference
```

- **Video/** – Original video footage and editing files. Store raw clips in `Video/Raw/` (optionally grouped by shoot date or camera). Place your Final Cut Pro library/project file here (e.g. *MyProject.fcpbundle*). Use `Video/Exports/` for exported videos or drafts.
- **Audio/** – All audio project assets. Save the Logic Pro project file here (e.g. *MyProject.logicx*). Use subfolders like `Audio/Stems/` for rendered stems or separate instrument tracks, and `Audio/Exports/` for final audio mixes or bounce files. (Large sample libraries can remain on an external SSD – reference them as needed rather than copying into the project.)
- **Documents/** – Project documentation and notes. This holds Markdown files like the Project Brief, Gear & Library Catalogue, and Daily Journal (see templates below). Also include any scripts, shot lists, or planning docs here.
- **Reference/** – Any reference media or assets. Keep images, reference videos, inspiration audio tracks, storyboards, or client-provided materials in this folder. It can be further organized into subfolders (e.g. `Reference/Images/`, `Reference/Audio/`) if needed for clarity.

This structured layout separates different facets of the project, making it easy to navigate in the editor and ensuring media files are organized. You can adjust naming or add subfolders as necessary, but try to stick to a consistent pattern across projects for predictability.

## Naming Conventions for Files & Versions

Adopting clear file naming conventions will save time and avoid confusion when projects scale ([Speed Up Your Workflow with Good File Naming Conventions](https://blog.frame.io/2018/10/22/file-naming-conventions/#:~:text=When%20I%20talk%20about%20file,other%20assets%20that%20need%20naming)) ([Speed Up Your Workflow with Good File Naming Conventions](https://blog.frame.io/2018/10/22/file-naming-conventions/#:~:text=When%20I%20talk%20about%20file,However)). Good names make it obvious what's in a file and which version it is, so you never end up with something like "final_final_no-seriously_final.mov" ([Speed Up Your Workflow with Good File Naming Conventions](https://blog.frame.io/2018/10/22/file-naming-conventions/#:~:text=File%20naming%20conventions%20are%20the,Don%E2%80%99t%20believe%20me%3F%20Read%20on)). Here are some guidelines for naming different types of files:

- **Raw Footage & Audio Takes:** Include project identifier, content info, date or take number. For example, a camera clip could be `MyProj_SC1_TK3_20250427.mov` (Project, Scene 1, Take 3, date) and an audio recording `MyProj_VO_take2_20250427.wav` for a voice-over. Use a consistent format with underscores or hyphens, and zero-padded numbers for takes (`01, 02` etc.) so they sort correctly.
- **Project Files (Editing/DAW):** Incorporate the project name and a version or date in the filename before the extension. For instance, save iterations as **MyProject_v1.logicx**, **MyProject_v2.logicx** or include date like **MyProject_2025-04-27.logicx**. In Final Cut Pro X, you might keep one library file and rely on backups, but if making copies use a similar version tag. This practice ensures you can identify the latest working version at a glance.
- **Exports & Deliverables:** Name exported files with project name, version, and output specifics. For example: **MyProject_teaser_v1.mp4**, **MyProject_final_v3.mov**, **MyProject_soundtrack_v1.wav**. If delivering different lengths or formats, include that (e.g. *"_60sec"* for a 60-second cut). Avoid labeling anything "final" until you're truly done – it's safer to use incremental versions ([Speed Up Your Workflow with Good File Naming Conventions](https://blog.frame.io/2018/10/22/file-naming-conventions/#:~:text=File%20naming%20conventions%20are%20the,Don%E2%80%99t%20believe%20me%3F%20Read%20on)). Once approved, you might tag it as **Final** for clarity, but keep the version number (e.g. `MyProject_final_v5.mp4`). Consistent names prevent mix-ups when sharing files with clients or when revisiting archives.
- **Documents & Misc:** Give important documents a descriptive name (e.g. **Script_v1.docx**, **Storyboard.pdf**). For the Markdown templates in Documents, the provided names (Project_Brief.md, Gear_Catalogue.md, Journal.md) are self-explanatory. If you create additional notes or logs, include the topic in the filename (e.g. **MeetingNotes_2025-05-01.md** for a meeting on May 1, 2025).

**General tips:** Use only alphanumeric characters, dashes or underscores (avoid spaces and special characters which can cause issues). Using ISO dates (YYYY-MM-DD) in names is helpful for chronological sorting ([Video File Naming Convention & Best Practices - MASV](https://massive.io/file-transfer/video-file-naming-convention/#:~:text=Video%20File%20Naming%20Convention%20%26,Date%20Format%20%E2%80%93%20YYYYMMDD)). Decide on a naming scheme early and apply it everywhere – the key is consistency ([Speed Up Your Workflow with Good File Naming Conventions](https://blog.frame.io/2018/10/22/file-naming-conventions/#:~:text=Get%20your%20file%20naming%20conventions,in%20place%20early)). This way, anyone (including future you) can understand the project files at a glance, and you minimize the risk of overwriting or losing track of important assets ([Speed Up Your Workflow with Good File Naming Conventions](https://blog.frame.io/2018/10/22/file-naming-conventions/#:~:text=It%E2%80%99s%20easy%20to%20misplace%20or,look%20at%20what%20this%20entails)).

## Markdown Templates

Use Markdown files to document project details, resources, and daily progress. Below are three templates to copy into your Documents folder for each project. Open them in Cursor and fill in the specifics for your project. Maintaining these docs will help you plan the project, catalog your tools, and keep a production journal.

### Project Brief / Work Order

This template defines the high-level project information and goals. It’s useful at the project kick-off to clarify what needs to be done (especially if you're both the creator and dealing with clients or team). Include an overview of the project, deliverables expected, timeline, and any notes or to-do items. Keeping this up to date ensures you always have an executive summary of the project’s scope and status.

```md
# Project Brief

**Project:** [Project Name]
**Client:** [Client or Company Name]
**Date:** [Start Date]

## Overview
*Describe the project in a few sentences. What is the video about? What music or mood? What are the key objectives or story?*

## Deliverables
- [ ] *List expected deliverables (e.g. 1x 3-minute film in 4K, 3x social media cutdowns, original soundtrack, etc.)*
- [ ] *... add more as needed ...*

## Timeline
- **Start:** [YYYY-MM-DD]
- **First Cut Due:** [YYYY-MM-DD]
- **Final Delivery:** [YYYY-MM-DD]
*(*Adjust milestones as needed: e.g. rough cut review dates, scoring deadlines, client feedback windows.)*

## Team & Roles
- **Director/Client:** [Name]
- **Editor:** [Name] (using Final Cut Pro)
- **Composer:** [Name] (using Logic Pro)
- **Others:** [Names and roles if any]

## Notes / Objectives
*Bullet points of any creative direction, key notes from client, or technical requirements.*
- [ ] *E.g. Reference the style of XYZ film; use upbeat music; include logo intro.*
- [ ] *Any specific instructions or constraints...*
```

### Gear & Sample Library Catalogue

Use this template to list your gear and the sample libraries or plugins you plan to use or have used for the project. It serves as a handy inventory for quick reference and for crediting purposes. By documenting your tools, you can easily recall which piano sample or synth patch was used, and track your hardware setup for the session. (Feel free to maintain a master list and prune to just what's relevant per project.)

```md
# Gear & Sample Library Catalogue

## Instruments & Hardware
- **Keyboard/MIDI Controller:** [Make & Model] (e.g. Akai MPK261)
- **Audio Interface:** [Make & Model] (e.g. Focusrite Scarlett 2i4)
- **Monitors/Headphones:** [Make & Model]
- **Microphones:** [If recording audio, list mic models]
- **Other Gear:** [Any other hardware used]

## Software & Plugins
- **DAW:** [Logic Pro X version, etc.]
- **Video Editor:** [Final Cut Pro version, etc.]
- **Key Plugins:** [List any VST/AU plugins or effects used, if notable]

## Sample Libraries
*List the virtual instruments/sample libraries (especially from Komplete Kontrol or others) used or available for this project.*
- **Piano Libraries:** [Name of library] – (e.g. Grand Piano in Kontakt, located on ExternalSSD:/Pianos/)
- **Strings:** [Name of library or soundbank] – (e.g. Spitfire Albion One, drive/path if applicable)
- **Percussion:** [Name of drum/orchestral perc library] – (...)
- **Synths:** [Name of synth library or presets] – (...)
- **Other:** [Choirs, Guitars, etc. as needed]

*Note: If certain libraries are stored on an external drive, note the drive name/path in parentheses so you remember where to load them from. Keeping this catalogue updated helps avoid digging through software to recall sounds, and provides a record for future projects or troubleshooting.*
```

### Daily Journal / Production Notes

This template is for your day-to-day log of work. Use it to track progress, decisions, and any issues or ideas that come up during editing and composing. Each day (or each work session), add a new entry with the date. Logging what you did and what’s next will help you stay organized and provide a paper trail of the project’s development. You can also use this as a scratchpad for creative brainstorming and to track tasks via checkboxes.

```md
# Daily Production Journal

## 2025-04-27
**Tasks Completed:**
- Edited intro sequence in FCP (rough cut).
- Composed draft of opening theme in Logic (piano sketch).

**New Ideas / Notes:**
- The intro feels too long – consider shortening the first scene.
- Try a different piano sample for a brighter tone.

**Challenges:**
- Sync issue between exported video and Logic project; solved by adjusting frame rate settings.
- External SSD disconnecting – will check cable or copy crucial files locally for now.

**Next Steps:**
- [ ] Import today's B-roll footage into project and review for use in montage.
- [ ] Re-record the ending narration with proper microphone (the current take has background noise).
- [ ] Experiment with string pad underneath the piano theme for more depth.

<!-- Repeat the above structure for each new day or session, with a new ## [Date]. -->
```

*Usage:* Create a new heading for each date you work on the project and fill in these sections. The **Next Steps** checkboxes can serve as your to-do list – you can tick them off in VS Code preview or mark them done. Over time, this journal becomes a detailed production log. It’s not only useful for personal organization, but also if you need to report progress or roll back a creative decision, you have a written record.

## Shell Helper Snippets

Using a few simple shell scripts can automate repetitive tasks and reduce friction in your workflow. Below are three bash shell snippet examples to speed up common actions: creating a new project folder scaffold, importing footage, and opening project documents quickly. You can save these as scripts (e.g. in a `~/bin` directory or as functions in your shell config) and run them in the integrated terminal. (Each assumes you are running on macOS/Linux or a Unix-like shell within Cursor.)

### New Project Scaffold

This script creates a new project directory with the standard subfolder structure and starter files. It will make the Video, Audio, Documents, and Reference folders (and their subfolders) and can even copy in the Markdown template files so you start with those in place. Adjust the `TEMPLATE_DIR` path to where you've saved the template Markdown files, or replace the `cp` commands with `touch` if you prefer empty files.

```bash
#!/bin/bash
# newproj.sh — create new project folder scaffold
# Usage: newproj.sh <ProjectName>
# Description: Sets up the folder structure and copies template docs into the new project folder.

proj="$1"
if [[ -z "$proj" ]]; then
  echo "Please provide a project name. Usage: newproj.sh <ProjectName>"
  exit 1
fi

# Define folder names (using numbering for consistent order)
mkdir -p "$proj"/{01_Video/Raw,01_Video/Exports,02_Audio/Stems,02_Audio/Exports,03_Documents,04_Reference}

# (Optional) Copy template files into Documents
TEMPLATE_DIR="$HOME/Templates/ProjectTemplates"  # <- change this to your templates folder
if [[ -d "$TEMPLATE_DIR" ]]; then
  cp "$TEMPLATE_DIR/Project_Brief.md" "$proj/03_Documents/Project_Brief.md"
  cp "$TEMPLATE_DIR/Gear_Catalogue.md" "$proj/03_Documents/Gear_Catalogue.md"
  cp "$TEMPLATE_DIR/Journal.md" "$proj/03_Documents/Journal.md"
else
  # If template directory not found, create empty files as fallback
  touch "$proj/03_Documents/Project_Brief.md" "$proj/03_Documents/Gear_Catalogue.md" "$proj/03_Documents/Journal.md"
fi

echo "Project structure created for $proj"
```

*What it does:* Create the main project folder and all needed subfolders in one command. It then copies the prepared Markdown template files into the Documents folder so that `Project_Brief.md`, `Gear_Catalogue.md`, and `Journal.md` are ready to go. You can run this script from your projects directory; for example: `./newproj.sh MyNewProject`. After running it, just open the new folder in Cursor (VS Code) and start working.

### Import Today's Footage

If you frequently need to transfer media (e.g. from an SD card or a "Downloads" folder) into your project, this snippet streamlines the process. It moves all files from a specified source directory into the project's `Video/Raw` folder, organizing them under a dated subfolder. This keeps footage from different days separate automatically.

```bash
#!/bin/bash
# footage_import.sh — move today's footage into project folder
# Usage: footage_import.sh <ProjectName> <SourceFolder>
# Example: footage_import.sh MyProject /Volumes/SDCARD/DCIM

proj="$1"
source_dir="$2"
if [[ -z "$proj" || -z "$source_dir" ]]; then
  echo "Usage: footage_import.sh <ProjectName> <SourceFolder>"
  exit 1
fi

today=$(date +%Y-%m-%d)
dest="$proj/01_Video/Raw/$today"
mkdir -p "$dest"

# Move all files from source to dest
mv "$source_dir"/* "$dest"/ 2>/dev/null

echo "Moved footage from $source_dir to $dest"
```

*How to use:* Provide your project folder name and the path to the source of the footage. For example, if you have a folder of new videos at `~/Downloads/footage` and your project is "MyProject", run `./footage_import.sh MyProject ~/Downloads/footage`. The script will create a subfolder named by today's date (e.g. `.../Raw/2025-04-27/`) and move all files into it. This keeps multiple import days separated. (If you prefer all raw files in one folder, you can remove the date subfolder and just `mv` into `Raw/`.) Always double-check the source path to ensure you're moving the correct files. This simple helper saves time over dragging and dropping in Finder, and you can integrate it into your routine whenever you offload new media.

### Open Project Docs Quickly

When you want to jump into your notes or update the brief, this shell function will open all the key Markdown docs in VS Code with one command. Instead of manually opening each file, you can use this to launch them together. Add this function to your shell (e.g., in `~/.bashrc` or use it directly in the terminal) for convenience.

```bash
# Add to your .bashrc or .zshrc
projdocs() {
  if [[ -z "$1" ]]; then
    echo "Usage: projdocs <ProjectName>"
    return 1
  fi
  code "$1/03_Documents/Project_Brief.md" "$1/03_Documents/Gear_Catalogue.md" "$1/03_Documents/Journal.md"
}
```

*What it does:* The function `projdocs` takes a project folder name and uses the VS Code CLI (`code`) to open the three main Markdown files. For example, typing `projdocs MyProject` will launch **Project_Brief.md**, **Gear_Catalogue.md**, and **Journal.md** in VS Code (Cursor) all at once, each in their own tab. This is a quick way to pull up your notes and planning documents without clicking through the explorer. (Make sure the `code` command is in your PATH – in VS Code you can enable this via the Command Palette "Shell Command: Install 'code' command in PATH". Cursor should inherit the same ability.) You can modify this function to open other frequently used files as well (for instance, the Logic project or a to-do file).

These shell snippets are intentionally simple and local (no network or complex automation), aligned with a lightweight approach. As you get comfortable, you can expand or tweak them. Even a small automation like this can shave minutes off routine tasks and keep you in the flow.

## VS Code Extensions and Settings

Finally, here are a few optional VS Code/Cursor extensions and tips to enhance Markdown editing, project navigation, and task tracking in your workspace. All of these are lightweight and beginner-friendly:

- **Markdown All in One** – *Yu Zhang’s extension that provides “all you need for Markdown”* (e.g. keyboard shortcuts for formatting, automatic table of contents, live preview enhancement, etc. ([
        Markdown All in One - Visual Studio Marketplace
    ](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one#:~:text=,Free))). This extension makes Markdown editing much smoother: you can press shortcuts to bold/italicize, create lists, and even auto-update the table of contents for a document. It also supports checkbox lists in the preview, so you can tick off items in your Daily Journal’s **Next Steps** list directly ([How to enable checkboxes in markdown preview for Visual Studio Code - Stack Overflow](https://stackoverflow.com/questions/67535557/how-to-enable-checkboxes-in-markdown-preview-for-visual-studio-code#:~:text=Checkboxes%20work%20in%20VS%20Code,be%20part%20of%20a%20list)) ([How to enable checkboxes in markdown preview for Visual Studio Code - Stack Overflow](https://stackoverflow.com/questions/67535557/how-to-enable-checkboxes-in-markdown-preview-for-visual-studio-code#:~:text=,Checked)).
- **Project Manager** – *Helps you easily switch between projects and manage workspaces* ([
        Project Manager - Visual Studio Marketplace
    ](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager#:~:text=Project%20Manager)). If you have multiple project folders or repositories, Project Manager lets you save them and open them quickly from a list. This can be handy as your number of projects grows – you won't need to manually navigate folders every time. You can tag projects and open them in new windows with a couple of keystrokes.
- **Todo Tree** – *Displays TODO comments in a tree view for quick task overview* ([
        Todo Tree - Visual Studio Marketplace
    ](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree#:~:text=Show%20TODO%2C%20FIXME%2C%20etc,tags%20in%20a%20tree%20view)) ([
        Todo Tree - Visual Studio Marketplace
    ](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree#:~:text=This%20extension%20quickly%20searches%20,would%20prefer%20it%20to%20be)). This extension searches through your files for tags like "TODO" or "FIXME" and shows them in a sidebar panel. If you use `// TODO:` comments in code or just write "TODO" in your Markdown (or even as part of a checklist item), they will all collect in one view. Clicking an item jumps to that line in the file. It's a great simple tracker for tasks that need attention, scattered across your project. For example, you might write "TODO: Update the intro music after client feedback" in your journal or code, and Todo Tree will list it. *(Tip: You can configure Todo Tree to recognize custom tags or even markdown checkboxes, but by default it looks for keywords like TODO.)*

In addition to extensions, remember that VS Code has built-in features that help:
- Use the **Outline** view (in the side panel) to navigate Markdown headings in your documents. This is useful as your Project Brief or Journal grows longer.
- Leverage **Markdown preview** (press `Ctrl+Shift+V` or `⌘+Shift+V` on Mac) to view the rendered document side-by-side as you edit. With *Markdown All in One*, you can even have the preview auto-refresh and scroll sync.
- Use global search (`Ctrl+Shift+F`) to find anything across your project folder (like a specific phrase in notes or a file name).

By keeping the workflow simple and well-organized, you'll reduce friction when switching between creative tasks. You’ll be able to focus on editing and composing rather than hunting for files or losing track of ideas. This guide should give you a solid starting point for a Creator Ops workspace that grows with you – feel free to adapt it as your projects evolve, adding any structure or automation that fits your style. Happy creating!

