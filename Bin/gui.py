import tkinter
import tkinter.messagebox
import os

top = tkinter.Tk()
top.geometry("200x150")

def reexplorer():
   os.system("taskkill /im explorer.exe /f")
   os.system("explorer")
   
def stopexplorer():
   os.system("taskkill /im explorer.exe /f")
   
def openrun():
   os.system("explorer.exe Shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}")

def about():
   tkinter.messagebox.showinfo( "GUI", "This is GUI version of process manager.")

def sexit():
    exit()


B1 = tkinter.Button(top, text ="Restart Explorer", command = reexplorer)

B2 = tkinter.Button(top, text ="Stop Explorer", command = stopexplorer)

B3 = tkinter.Button(top, text ="Open Run", command = openrun)

B4 = tkinter.Button(top, text ="About", command = about)

B5 = tkinter.Button(top, text="Exit" , command = sexit)

B1.pack()

B2.pack()

B3.pack()

B4.pack()

B5.pack()
top.mainloop()

