# JARVIS Termux Executable Demo

A small, read-only smoke test for the JARVIS scoped terminal bridge.

## Run in Termux

```bash
bash smoke.sh
```

The script prints a fixed success marker and reports the Bash, Python, and Git versions available in the environment. It does not install packages, change settings, access network services, or modify other project files.

Expected success marker: `JARVIS_TERMUX_EXECUTABLE_OK`.
