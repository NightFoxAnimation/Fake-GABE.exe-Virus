import pygetwindow as gw
import win32api
import win32con
import win32gui
import time
import math

allwindows = ("GABE.exe Installer")

# Function to get screen dimensions
def get_screen_dimensions():
    width = win32api.GetSystemMetrics(win32con.SM_CXSCREEN)
    height = win32api.GetSystemMetrics(win32con.SM_CYSCREEN)
    return width, height

# Function for smooth movement
def smooth_move(window, start_x, start_y, end_x, end_y, steps):
    for i in range(steps):
        t = i / steps
        ease_t = math.sin(t * math.pi * 0.5)  # easing function
        x = int(start_x + (end_x - start_x) * ease_t)
        y = int(start_y + (end_y - start_y) * ease_t)
        window.moveTo(x, y)
        time.sleep(0.02)

# Function to move window to center of screen
def move_to_center(window):
    screen_width, screen_height = get_screen_dimensions()
    window_width, window_height = window.width, window.height

    # Calculate new position for window
    new_x = (screen_width - window_width) // 2
    new_y = (screen_height - window_height) // 2

    # Move window to center of screen
    smooth_move(window, window.left, window.top, new_x, new_y, 100)

# Function to resize window to 2 times smaller than screen size
def resize_window(window):
    screen_width, screen_height = get_screen_dimensions()
    new_width = screen_width // 2
    new_height = screen_height // 2
    window.resizeTo(new_width, new_height)

# Function to bring window to top
def bring_window_to_top(window):
    HWND_TOPMOST = -1
    win32gui.SetWindowPos(window._hWnd, HWND_TOPMOST, 0, 0, 0, 0, win32con.SWP_NOMOVE | win32con.SWP_NOSIZE)

# Main function
def main():
    # Find the window with the handle name "Command Prompt"
    # command_prompt_window = gw.getWindowsWithTitle("GABE.exe Installer")[0]
    command_prompt_window = gw.getWindowsWithTitle(allwindows)[0]
    
    bring_window_to_top(command_prompt_window)

    # Move window to center of screen
    move_to_center(command_prompt_window)

    # Resize window to 2 times smaller than screen size
    resize_window(command_prompt_window)

    # Move window to center of screen again
    move_to_center(command_prompt_window)

    # Bring window to top
    # bring_window_to_top(command_prompt_window)

if __name__ == "__main__":
    main()
