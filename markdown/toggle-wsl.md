# Toggle WSL
To disable WSL open Command Prompt as Administrator and run the following:
```bash
bcdedit /set hypervisorlaunchtype off
```

To enable WSL open Command Prompt as Administrator and run the following:
```bash
bcdedit /set hypervisorlaunchtype auto
```

After running either of the command you must first restart the pc for it to take effect. Shutting it down and opening your computer won't work. It should be a restart.
