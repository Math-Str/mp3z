#head
import sys
import pygame
import tkinter as tk
from tkinter import ttk

#logic
pygame.mixer.init()

root = tk.Tk()
root.title("MP3Z")
root.geometry("300x130")
root.resizable(False, False)

arquivo = sys.argv[1] if len(sys.argv) > 1 else None

#functions
def abrir():
    global arquivo
    from tkinter.filedialog import askopenfilename
    arquivo = askopenfilename(filetypes=[("MP3", "*.mp3")])
    tocar()

def tocar():
    if arquivo:
        pygame.mixer.music.load(arquivo)
        pygame.mixer.music.play()
        nome.config(text=arquivo.split("/")[-1])

def pausar():
    if pygame.mixer.music.get_busy():
        pygame.mixer.music.pause()
    else:
        pygame.mixer.music.unpause()

def parar():
    pygame.mixer.music.stop()

#interface
nome = ttk.Label(root, text="Nenhuma música.", wraplength=280)
nome.pack(pady=12)

botoes = ttk.Frame(root)
botoes.pack()

ttk.Button(botoes, text="Abrir", command=abrir).pack(side="left", padx=3)
ttk.Button(botoes, text="Play", command=tocar).pack(side="left", padx=3)
ttk.Button(botoes, text="Pause", command=pausar).pack(side="left", padx=3)
ttk.Button(botoes, text="Stop", command=parar).pack(side="left", padx=3)

#run
if arquivo:
    tocar()

root.mainloop()