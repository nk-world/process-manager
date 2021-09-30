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

B = tk.Button(root, text ="Exit" , command = root.destroy)
B.pack()

root.mainloop()