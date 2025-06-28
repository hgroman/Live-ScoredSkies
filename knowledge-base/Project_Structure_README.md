# Live-Scored Skies Project Structure Guide

This document outlines the standard folder structure used for projects within the Live-Scored Skies workspace. Consistency helps in locating assets quickly.

```text
[PROJECT_NAME]/
├── 01_Video/
│   ├── Exports/         # Final video renders, drafts
│   ├── [PROJECT_NAME].fcpbundle # Final Cut Pro library
│   └── Raw/             # Original camera footage (can be subfoldered by date/camera)
├── 02_Audio/
│   ├── Exports/         # Final audio mixes, bounces
│   ├── [PROJECT_NAME].logicx  # Logic Pro session file
│   └── Stems/           # Rendered audio stems, loops
├── 03_Documents/
│   ├── Project_Brief.md # Copied from _templates
│   ├── Gear_Catalogue.md# Copied from _templates (can be pruned to project-specific)
│   └── Journal.md       # Copied from _templates
├── 04_Reference/        # Inspiration, storyboards, client assets, misc media
└── README.md            # This file (or a link back to this template)
```

- **01_Video/**: Contains all video-related assets. The Final Cut Pro library lives here. Raw footage goes into `Raw/`, and final outputs into `Exports/`.
- **02_Audio/**: Contains all audio-related assets. The Logic Pro session file lives here. Rendered stems go into `Stems/`, final mixes into `Exports/`. Note: Large sample libraries usually reside centrally (e.g., on an external SSD) and are referenced, not copied here.
- **03_Documents/**: Houses all project-specific documentation, including the brief, gear list, and journal copied from the main templates. Add any other relevant documents like scripts or shot lists here.
- **04_Reference/**: A place for any supporting materials like mood boards, reference tracks, images, client logos, etc.

Adhere to the naming conventions outlined in the [`tools/Workflow-Creator_Ops_Workspace_Workflow_Guide.md`](tools/Workflow-Creator_Ops_Workspace_Workflow_Guide.md) for files within these folders.
