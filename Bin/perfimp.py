# Remove Bloatware from Windows 10

# imports
import os
import tkinter
import tkinter.messagebox

# Variable Set
top = tkinter.Tk()
top.geometry("350x350")
top.title("Improve Windows Performance")

# Commands
def rmedge():
    os.system("msedge --uninstall --force-uninstall --system-level")

def rmp():
    os.system("start appwiz.cpl")

def ab():
    tkinter.messagebox.showinfo( "PC Booster", "This utility makes your PC super fast!!")
    
def cleanup():
    os.system("cleanmgr")

def so():
    os.system("taskkill /im OneDrive.exe /f")

def r():
    tkinter.messagebox.showinfo( "INFO", "Please close all apps and save your works.")
    os.system("shutdown /t 00 /r")

def xt():
    exit()
    
def up():
    os.system("start ms-settings:windowsupdate")

def t():
    os.system("taskmgr")

def mal():
    os.system("start windowsdefender:")
    
def sup():
    tkinter.messagebox.showinfo( "INFO", "Startup apps are those apps that start when you log in.")
    tkinter.messagebox.showinfo( ".", "To manage them, click manage tasks and click more if needed and go to startup.")
    
def morei():
    os.system("start https://support.microsoft.com/en-us/windows/tips-to-improve-pc-performance-in-windows-10-b3b3ef5b-5953-fb6a-2528-4bbed82fba96")


# Buttons
rmedge = tkinter.Button(top, text ="Remove Microsoft Edge", command = rmedge)
rmp = tkinter.Button(top, text ="Remove Apps..", command = rmp)
ab = tkinter.Button(top, text ="About", command = ab)
cleanup = tkinter.Button(top, text ="Cleanup Disk to save space", command = cleanup)
so = tkinter.Button(top, text ="Kill OneDrive Sync", command = so)
r = tkinter.Button(top, text ="Restart your PC to speed up", command = r)
xt = tkinter.Button(top, text ="Exit", command = xt)
up = tkinter.Button(top, text ="Update Windows to improve Performance", command = up)
t = tkinter.Button(top, text ="Manage Tasks", command = t)
mal = tkinter.Button(top, text ="Scan for Virus and Malware", command = mal)
sup = tkinter.Button(top, text ="Manage Startup apps", command = sup)
morei = tkinter.Button(top, text ="More tips from Microsoft to improve performance", command = morei)

# Pack
rmedge.pack()
up.pack()
so.pack()
rmp.pack()
t.pack()
sup.pack()
r.pack()
cleanup.pack()
mal.pack()
morei.pack()
ab.pack()
xt.pack()

top.mainloop()

# End