# AirDrop a String, or any exported transferable type will end up creating a file in Files.app

When AirDroping a simple string ; or any transferable type, the receiver device will not ask what to do.
Instead it'll open the Files.app, and show the created file.
Often, the file will not be openable at all (it's the case for String).

Expected behavior:
- When AirDropping a string, showing the string on the recipient device to decide what to do (copy? save in notes? Save in files?)
- When AirDropping a Transferable type, asking the used what app to open the files with might be more expected, with a list of applications that import or export the matching UTTypes.
