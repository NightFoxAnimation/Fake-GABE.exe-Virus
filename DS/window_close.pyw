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



def close_window_by_title(window_title):
    print("Window Title:", window_title)  # Print the window title before calling FindWindow
    window_handle = win32gui.FindWindow(None, window_title)
    if window_handle != 0:
        win32gui.PostMessage(window_handle, win32con.WM_CLOSE, 0, 0)
    else:
        print("Window not found.")

# Example usage:
close_window_by_title("GABE.exe Installer")