# FB13202238 ShareLink behavior with a simple string is weird

When providing a simple string as item to a ShareLink, the behavior of this ShareLink is inconsistent. 
- If providing a preview struct, The "copy" option and other activities are missing from the Activity Sheet. 
- If providing a subject, without a preview struct, the header of the activity sheet is empty 
- Subject never seems to be used anywhere for anything. You'll find a sample project that highlight this. 

Each ShareLink is bundled with the same string object. But each one has a different behavior.
