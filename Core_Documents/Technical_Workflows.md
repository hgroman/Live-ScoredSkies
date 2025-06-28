# Sky Project - Technical Workflows

## FCP → Logic → FCP Pipeline

### Export Reference from Final Cut Pro
- Timeline settings: 4K, 24fps (or source fps)
- Add timecode burn-in: Generators > Elements > Timecode
- Add markers at key sync points with notes
- Export: Share > Master File > H.264, 1080p for Logic reference
- Include temp audio if needed for timing reference

### Logic Pro Setup for Scoring
- **Project Settings**: 48kHz sample rate, match video frame rate
- **Display**: Enable SMPTE timecode (secondary ruler)
- **Video Import**: File > Movie > Open, extract audio if needed
- **Global Tracks**: Enable markers track (shortcut: G)
- **Template Save**: Save configured project as scoring template

### S88 MK2 Orchestration Mapping
*Refer to [`_hardware/_hardware-catalog.md`](_hardware/_hardware-catalog.md) for S88 MK2 details and Light Guide configurations.*

### Final Integration
- **Audio Export**: Bounce stereo mix (AIFF/WAV, 48kHz)
- **FCP Import**: Add audio to timeline, align to start marker
- **Sync Check**: Verify all musical hits match visual events
- **Fine Adjustments**: Nudge audio or trim video as needed

## Sample Library Workflow
*Refer to [`_sample-libraries/_sample-library-catalog.md`](_sample-libraries/_sample-library-catalog.md) for detailed information on sample library organization, quick load templates, and performance setup.*

## Project Structure

### Per-Project Organization
```
ProjectName/
├── 01_Video/
│   ├── Raw_Footage/
│   ├── FCP_Library/
│   └── Exports/
├── 02_Audio/
│   ├── Logic_Project/
│   ├── Stems/
│   └── Final_Mix/
└── 03_Documents/
    ├── Project_Brief.md
    ├── Sync_Notes.md
    └── Technical_Specs.md
```

### File Naming Convention
- Video: `YYYYMMDD_Location_Take##.mov`
- Audio: `ProjectName_SectionName_vXX.wav`
- Projects: `ProjectName_Edit_vXX.fcpx`

## Quality Control Checkpoints

### Pre-Composition
- [ ] Video rough cut locked with markers
- [ ] Timecode burn-in applied
- [ ] Reference export verified in Logic

### During Composition  
- [ ] 48kHz project settings confirmed
- [ ] Video sync maintained throughout
- [ ] Musical hits aligned to visual events

### Pre-Final Export
- [ ] Full playback sync check
- [ ] Audio levels: Peak -1dB, ~-14 LUFS
- [ ] No clipping or dropouts
- [ ] Color grade enhances musical mood

## Backup Protocol
*Refer to [`knowledge-base/backup_strategy.md`](knowledge-base/backup_strategy.md) for detailed information on the backup strategy.*
