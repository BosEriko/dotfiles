## How to Run AutoHotKey Script on Startup Windows 10 Using a Shortcut

Windows has a particular folder named Startup where you can add application shortcuts that you want to start with the system. The only downside is that you have to add the application shortcut rather than the full exe file. Let’s see how it is done.

**Step 1:** First of all, we need to create the shortcut to the AutoHotKey script. To do this, find the AutoHotKey script you want to add to the startup, select it, **hold the Alt key, and drag it to the same folder.**

IMG1HERE

**Step 2:** The above action will instantly create a shortcut to the script. If you wish, you can remove the “.ahk – shortcut” suffix from the shortcut name.

IMG2HERE

**Step 3:** Once you have the shortcut, copy it. We will paste it into the startup folder.

**Step 4:** Now press **Windows + R** to open the Run dialog box. Here, type the shell command **shell:startup** and click the **Ok** button.

IMG3HERE

**Step 5:** The Startup folder opens. Don’t be surprised if it is empty the first time you open it, it is normal. You could find it “by hand”, without using the Run command, but the path is complex to find it in the Windows tree.

IMG4HERE

**Step 6:** Right-click in a free area of the window and click **Paste** to past the shortcut. So the script shortcut you selected is copied to the Startup folder.

IMG5HERE

This is what it should look like when you are done adding the script shortcut.

IMG6HERE

That’s it! Now, this script shortcut will run automatically every time you start Windows.
