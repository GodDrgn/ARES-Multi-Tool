import random
import os
import time
from colorama import init, Fore, Style
init(autoreset=True)


file_path = r"C:\higher_or_lower_gamefiles\highscore.txt"

if os.path.isfile(file_path):
    with open(file_path, "r") as file:
        highscore = file.read()
else:
    os.makedirs(r"C:\higher_or_lower_gamefiles")
    with open(file_path, "w") as file:
        file.write("0")
    highscore = 0


fullwidth_space = "\u3000"


current_number = random.randint(2, 14)
current_score = 0
success = 0
sure = "x"
while True:

    success = 0


    if current_number == 11:
        current_number_card = "Jock"
        characters = 4

    elif current_number == 12:
        current_number_card = "Queen"
        characters = 5

    elif current_number == 13:
        current_number_card = "King"
        characters = 4

    elif current_number == 14:
        current_number_card = "Ace"
        characters = 3

    else:
        if current_number < 10:
            characters = 1
        elif current_number >= 10:
            characters = 2
        current_number_card = str(current_number)


    current_card_type = random.randint(1,4)
    new_card_type = random.randint(1, 4)

    if current_card_type == 1:
        current_card_type_text = "♤"
        current_card_type_text_color = Fore.WHITE
    elif current_card_type == 2:
        current_card_type_text = "♡"
        current_card_type_text_color = Fore.RED
    elif current_card_type == 3:
        current_card_type_text = "♢"
        current_card_type_text_color = Fore.RED
    elif current_card_type == 4:
        current_card_type_text = "♧"
        current_card_type_text_color = Fore.WHITE


    if new_card_type == 1:
        new_card_type_text = "♤"
        new_card_type_text_color = Fore.WHITE
    elif new_card_type == 2:
        new_card_type_text = "♡"
        new_card_type_text_color = Fore.RED
    elif new_card_type == 3:
        new_card_type_text = "♢"
        new_card_type_text_color = Fore.RED
    elif new_card_type == 4:
        new_card_type_text = "♧"
        new_card_type_text_color = Fore.WHITE



    print(f"                                                                       {Fore.YELLOW}    Current Score | {current_score}")
    print(f" Guess if the card is higher or lower! Just input the below!              --------------------")
    print(f"                   (Equals also count)                                 {Fore.YELLOW}        Highscore | {highscore}\n\n\n\n\n\n\n\n\n\n")


    if characters == 1:
        print(f"              ┏━━━┓")
        print(f"              ┃ {current_number_card} ┃")
        print(f"              ┃ {current_card_type_text_color}{current_card_type_text} {Fore.RESET}┃")
        print(f"              ┗━━━┛")
        print(f"\n\n\n{Fore.BLUE}   Higher [H/h] or Lower [L/l]?")
        print("  ------------------------------")
        guess = input(f"{Fore.BLUE}> ")
    elif characters == 2:
        print(f"              ┏━━━━┓")
        print(f"              ┃ {current_number_card} ┃")
        print(f"              ┃ {current_card_type_text_color}{current_card_type_text}  {Fore.RESET}┃")
        print(f"              ┗━━━━┛")
        print(f"\n\n\n{Fore.BLUE}   Higher [H/h] or Lower [L/l]?")
        print("  ------------------------------")
        guess = input(f"{Fore.BLUE}> ")
    elif characters == 3:
        print(f"              ┏━━━━━┓")
        print(f"              ┃ {current_number_card} ┃")
        print(f"              ┃  {current_card_type_text_color}{current_card_type_text}  {Fore.RESET}┃")
        print(f"              ┃     ┃")
        print(f"              ┗━━━━━┛")
        print(f"\n\n\n{Fore.BLUE}   Higher [H/h] or Lower [L/l]?")
        print("  ------------------------------")
        guess = input(f"{Fore.BLUE}> ")
    elif characters == 4:
        print(f"              ┏━━━━━━┓")
        print(f"              ┃ {current_number_card} ┃")
        print(f"              ┃  {current_card_type_text_color}{current_card_type_text}   {Fore.RESET}┃")
        print(f"              ┃      ┃")
        print(f"              ┗━━━━━━┛")
        print(f"\n\n\n{Fore.BLUE}   Higher [H/h] or Lower [L/l]?")
        print("  ------------------------------")
        guess = input(f"{Fore.BLUE}> ")
    elif characters == 5:
        print(f"              ┏━━━━━━━┓")
        print(f"              ┃ {current_number_card} ┃")
        print(f"              ┃   {current_card_type_text_color}{current_card_type_text}   {Fore.RESET}┃")
        print(f"              ┃       ┃")
        print(f"              ┗━━━━━━━┛")
        print(f"\n\n\n{Fore.BLUE}   Higher [H/h] or Lower [L/l]?")
        print("  ------------------------------")
        guess = input(f"{Fore.BLUE}> ")

    new_number = random.randint(2,14)



    if new_number == 11:
        new_number_card = "Jock"

    elif new_number == 12:
        new_number_card = "Queen"

    elif new_number == 13:
        new_number_card = "King"

    elif new_number == 14:
        new_number_card = "Ace"
    else:
        new_number_card = str(new_number)

    while current_number_card + current_card_type_text == new_number_card + new_card_type_text_color + new_card_type_text:

        current_card_type = random.randint(1, 4)
        new_card_type = random.randint(1, 4)

        if current_card_type == 1:
            current_card_type_text = "♤"
            current_card_type_text_color = Fore.WHITE
        elif current_card_type == 2:
            current_card_type_text = "♡"
            current_card_type_text_color = Fore.RED
        elif current_card_type == 3:
            current_card_type_text = "♢"
            current_card_type_text_color = Fore.RED
        elif current_card_type == 4:
            current_card_type_text = "♧"
            current_card_type_text_color = Fore.WHITE

        if new_card_type == 1:
            new_card_type_text = "♤"
            new_card_type_text_color = Fore.WHITE
        elif new_card_type == 2:
            new_card_type_text = "♡"
            new_card_type_text_color = Fore.RED
        elif new_card_type == 3:
            new_card_type_text = "♢"
            new_card_type_text_color = Fore.RED
        elif new_card_type == 4:
            new_card_type_text = "♧"
            new_card_type_text_color = Fore.WHITE



    if guess == "H" or guess == "h":
        if new_number >= current_number:
            print("\n\nRight! The new card was: " + str(new_number_card) + " " + str(new_card_type_text) + "\n")
            success = 1
        else:
            print("\n\nWrong, try again! The new card was: " + str(new_number_card) + " " + str(new_card_type_text) + "\n")
            success = 2
    elif guess == "L" or guess == "l":
        if new_number <= current_number:
            print("\n\nRight! The new card was: " + str(new_number_card) + " " + str(new_card_type_text) + "\n")
            success = 1
        else:
            print("\n\nWrong, try again! The new card was: " + str(new_number_card) + " " + str(new_card_type_text) + "\n")
            success = 2
    elif guess == "reset" or guess == "Reset":
        os.system('cls')
        sure = input("\n\n\n\nAre you sure that you want to reset your highscore? This can not be undone. (Y/N) \n> ")
        if sure == "y" or sure == "Y":
            os.system('cls')
            highscore = 0
            with open(file_path, "w") as file:
                file.truncate(0)
                file.write("0")
            print("\n\n\n\nYour highscore has been reset.")
        elif sure == "n" or sure == "N":
            os.system('cls')
            print("\nInvalid Input\n")
    else:
        print("\nInvalid Input\n")


    if success == 1:
        current_score = current_score + 1
    elif success == 2:
        current_score = 0

    if str(current_score) > str(highscore):
        highscore = current_score

    with open(file_path, "w") as file:
        file.truncate(0)
        file.write(str(highscore))

    current_number = new_number

    time.sleep(1.25)
    os.system('cls')
