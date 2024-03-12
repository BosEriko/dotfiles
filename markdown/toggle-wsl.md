# Toggle WSL
To toggle WSL open Command Prompt as Administrator and run the following commands:
### Disable
```bash
bcdedit /set hypervisorlaunchtype off
```
### Enable
```bash
bcdedit /set hypervisorlaunchtype auto
```

## Note
After running either of the command you must first restart the pc for it to take effect. Shutting it down and opening your computer won't work. It should be a restart.
