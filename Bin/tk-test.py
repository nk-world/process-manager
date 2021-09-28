# tk test
import tkinter as tk
import tkinter.messagebox as tkmsgbox

root = tk.Tk()
root.title("Tkinter Test")
root.geometry("300x300")


def ok():
    tkmsgbox.showinfo( "CallBack", "Hello!!!")

b = tk.Button(root, text ="Click ME!!" , command = ok)
b.pack()

root.mainloop()