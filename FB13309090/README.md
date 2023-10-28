# Using HierarchyShapeStyle.quinary on visionOS will trigger a crash
Anytime a view uses .quinary on visionOS, the app will crash immediately.
Appends on both simulator, and device

Expected behavior:
The HierarchicalShapeStyle quinary should work without crashing, or be marked as unavailable on the platform.
