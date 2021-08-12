# NieR: Automata royal chamber farm

A script for NieR: Automata game to automate royal chamber farming on linux-based systems. A similar strategy can be adopted with any other keyboard input simulator tool on other operating systems.

I used this script to avoid the painful farming of Simple Gadget and Elaborate Gadget required to upgrade Pod B and C (I had better to do than doing this repetitive task 😁).

Since at the moment I had a pretty woodden PC to run the game, the delays between inputs are quite lenient (especially the one that waits the save load).
So, you can tune the numbers according to your system's specs.

## Requirements

The only requirement is [xdotool](https://github.com/jordansissel/xdotool), necessary to simulate keyboard inputs for moving the character.

## Installing

Just clone the repository:

```bash
git clone https://github.com/FlamingTuri/nier-automata-royal-chamber-farm.git
```

## Run instructions:

1. Start NieR: Automata game
2. Go to `Forest Castle: Royal Chamber` access point
    - I suggest loading `Ch 07-01: The Aircraft Carrier` (both as 2B and 9S will do) and then fast travel to it
3. Make sure you have equipped `Auto-Collect Item` chip
4. Start the script and enjoy your farming
  ```bash
  ./royal-chamber-farm.sh
  ```

### Notes:

- I tested this script while running the game in windowed mode, but it should not have problems with fullscreen or borderless modes
- If the script does not work, it is probably due to the fact that xdotool did not manage to find an application called `NieR:Automata`
  - If so, just replace `game=NieR:Automata` with whatever name your system calls the game window
- The game could miss a simulated input when making delays too short between two inputs (I do not actually know if this is due to my PC being too old, some xdotool bug or even something related to X Window System)
- A possible improvement could be making the character to dash (and then run) instead of just walking. However, I did not implement it since if an input is missed the wait times would not match (waiting for the character to reach `king's cradle` and then going back to the access point) invalidating the farm run
