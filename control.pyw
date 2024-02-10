import keyboard
import pyautogui
import time
import random
import sys
from pathlib import Path
import threading
from playsound import playsound
import pygetwindow as gw
from tkinter import messagebox
import tkinter as tk
import pyperclip
import pygetwindow as gw
import sys, traceback, threading
import win32gui
import win32con
import win32api
import math
import subprocess

sounds = ['type_2.wav', 'type_3.wav', 'type_4.wav', 'type_5.wav', 'type_6.wav', 'type_7.wav', 'type_8.wav']
path_file = Path(sys.path[0])
print(path_file)
sound_effect_playing = False

def play_sound_effect(e):
    global sound_effect_playing
    if e.event_type == keyboard.KEY_DOWN and not sound_effect_playing:
        if e.name and (e.name.isalpha() or e.name == '.'):
            if play_sounds:  # Check if sound should be played
                play = random.choice(sounds)
                the_sound = str(path_file / f'sound/{play}')
                threading.Thread(target=playsound, args=(the_sound,)).start()
            sound_effect_playing = True
    elif e.event_type == keyboard.KEY_UP:
        sound_effect_playing = False


# Create the Tkinter root window
root = tk.Tk()
root.withdraw()
paste_data = "DOSKEY grant=start " + str(path_file / 'DS/downshort')
print(paste_data)
pyperclip.copy(paste_data)

# Keyboard hook
keyboard.hook(play_sound_effect)

play_sounds = True

# Simulate key presses and actions
pyautogui.hotkey('win', 's')
time.sleep(0.5)
pyautogui.write('cmd', interval=0.3)
time.sleep(0.5)
pyautogui.press('enter')
time.sleep(1)
subprocess.run(["python", "window1.pyw"])
play_sounds = False      

# pyautogui.typewrite(paste_data)
pyautogui.hotkey('ctrlleft','V')
pyautogui.press('enter')
# pyautogui.write('DOSKEY grant=yes')
pyautogui.write('clear')
pyautogui.press('enter')

play_sounds = True

pyautogui.write('grant ', interval=0.3)
time.sleep(0.5)
pyautogui.write('GABE.exe ', interval=0.3)
time.sleep(0.5)
pyautogui.write('system.access', interval=0.3)
time.sleep(0.5)
pyautogui.press('enter')
# pyautogui.hotkey('alt', 'f4')
time.sleep(1)

def show_message_and_play_sound(message, sound_file):
    def display_message():
        # messagebox.showinf0("GABE.exe", message) # there is an error messagebox.showinfo is he acual one
        exit()# Use messagebox from tkinter

    def play_sound():
        playsound(sound_file)

    thread_sound = threading.Thread(target=play_sound)
    thread_sound.start()
    
    root.after(0, display_message)

# Show message and play sound
message_text = "Thank you"
sound_file_path = str(path_file / 'sound/sam.wav')
show_message_and_play_sound(message_text, sound_file_path)
play_sounds = False

def close_window_by_title(window_title):
    print("Window Title:", window_title)  # Print the window title before calling FindWindow
    window_handle = win32gui.FindWindow(None, window_title)
    if window_handle != 0:
        win32gui.PostMessage(window_handle, win32con.WM_CLOSE, 0, 0)
    else:
        print("Window not found.")

# Example usage:
close_window_by_title("Command Prompt")

time.sleep(2)

subprocess.run(["python", "window.pyw"])



# Start the Tkinter main loop

root.mainloop()

# Unhook keyboard
keyboard.unhook_all()
threading.enumerate()
exit()