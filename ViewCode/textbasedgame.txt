package TextBasedGame;
import java.util.Scanner;
import java.util.Random;

/**
 *
 * @author james
 * attempt to make a text based game to improve my skills in java
 * date started may 2017
 * date ended june 2017
 */
public class TextBasedGame {
static int map[][]= {
    {5,5,5,5,5,5,5,5,5,5},
    {5,2,5,0,0,0,0,0,0,5},
    {5,3,5,0,0,0,0,0,0,5},
    {5,2,2,2,3,0,0,0,0,5},
    {5,5,5,0,0,0,0,0,0,5},
    {5,0,0,0,0,0,0,0,0,5},
    {5,0,0,0,0,0,0,0,0,5},
    {5,0,0,0,0,0,0,0,0,5},
    {5,0,0,0,0,0,0,0,0,5},
    {5,5,5,5,5,5,5,5,5,5},
    };
static int ud = 1;
static int lr = 1;
static int Jumpout;
static int Nyn = 0;
static int Syn = 0;
static int Eyn = 0;
static int Wyn = 0;
static int Fight = 0;
static int FWin = 0;
  

    
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println(ud);
        System.out.println(lr);
        System.out.println(map[ud][lr]);
        
        //start the scanner
        Scanner scanner = new Scanner(System.in);
        
        do {
            Nyn = 0;
            Syn = 0;
            Eyn = 0;
            Wyn = 0;
            
            System.out.println("----------------------------");
        //add where you are info
            if (map [ud] [lr] == 0) {System.out.println("your in a grassy area");}
            if (map [ud] [lr] == 2) {System.out.println("your on a stone path");}
            if (map [ud] [lr] == 3) {System.out.println("you run in to an agressave garden gnome");}
            
            //barriors
            if (map [ud-1] [lr] == 5) {System.out.println("Theres a stone wall to the North");}
            if (map [ud+1] [lr] == 5) {System.out.println("Theres a stone wall to the South");}
            if (map [ud] [lr-1] == 5) {System.out.println("Theres a stone wall to the East");}
            if (map [ud] [lr+1] == 5) {System.out.println("Theres a stone wall to the West");}
        
            // add movment options
            System.out.println("you can go");
            if (map [ud-1] [lr] <= 4) {System.out.println("North"); Nyn = 1;}
            if (map [ud+1] [lr] <= 4) {System.out.println("South"); Syn = 1;}
            if (map [ud] [lr-1] <= 4) {System.out.println("East"); Eyn = 1;}
            if (map [ud] [lr+1] <= 4) {System.out.println("West"); Wyn = 1;}
            if (map [ud] [lr] == 3) {System.out.println("Fight"); Fight = 1;}
            
            System.out.println("type in your action");
        
            // recive text
            String inputString = scanner.nextLine();
            
            System.out.println("----------------------------");
            
            //fight out what the user wants to do.
            if ("north".equals(inputString)) {
                if (Nyn == 1){ud = ud - 1; System.out.println("you go North");} 
                else {System.out.println("you cant go that way");}} 
             if ("n".equals(inputString)) {
                if (Nyn == 1){ud = ud - 1; System.out.println("you go North");} 
                else {System.out.println("you cant go that way");}} 
             
            if ("south".equals(inputString)) {
                if (Syn == 1){ud = ud + 1; System.out.println("you go South");}
                else{System.out.println("you cant go that way");}}
            if ("s".equals(inputString)) {
                if (Syn == 1){ud = ud + 1; System.out.println("you go South");}
                else{System.out.println("you cant go that way");}}
            
            if ("east".equals(inputString)) {
                if (Eyn == 1){lr = lr - 1; System.out.println("you go East");}
                else{System.out.println("you cant go that way");}}
            if ("e".equals(inputString)) {
                if (Eyn == 1){lr = lr - 1; System.out.println("you go East");}
                else{System.out.println("you cant go that way");}}
            
            if ("west".equals(inputString)) {
                if (Wyn == 1){lr = lr + 1; System.out.println("you go West");}
                else{System.out.println("you cant go that way");}}
            if ("w".equals(inputString)) {
                if (Wyn == 1){lr = lr + 1; System.out.println("you go West");}
                else{System.out.println("you cant go that way");}}
            
            if ("fight".equals(inputString)) {
                if (Fight == 1){ battle();}
                else{System.out.println("Theres nothing to fight");}}
           if ("f".equals(inputString)) {
                if (Fight == 1){ battle();}
                else{System.out.println("Theres nothing to fight");}}
           
            if ("exit".equals(inputString)) {Jumpout = 1;}
            
        } while (Jumpout == 0); 
    }
    public static void battle () {
       System.out.println ("you fight");
       Random rand = new Random();
       int FWin = rand.nextInt(49)+1;
       
       if (FWin <= 25) {
           System.out.println("you kill the garden gnome");
           map [ud] [lr] = 0; Fight = 0;
       }
       if (FWin >= 26){
           System.out.println("the garden gnome kills you");
           Jumpout = 1;
       }}
    
    
}