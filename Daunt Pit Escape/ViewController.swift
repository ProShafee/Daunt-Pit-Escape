//
//  ViewController.swift
//  Daunt Pit Escape
//
//  Created by Shafee on 12/04/20.
//  Copyright © 2020 Shafee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
  //  var color = UIColor.green
    var player: AVAudioPlayer?
    var time = 5
    
    var itemArray : [item] = []
    
    var timer = Timer()
    
    
    @IBOutlet weak var ButtonOption1: UIButton!
    
    @IBOutlet weak var ButtonOption2: UIButton!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.nameLabel.text = itemArray[indexPath.row].name
        cell.storyLabel.text = itemArray[indexPath.row].message
        cell.selectionStyle = .default
        //cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
   // func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
   //     return 15
    //}
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        

        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        ButtonOption1.isEnabled = false
        ButtonOption2.isEnabled = false
        
        ButtonOption2.alpha = 0.5
        ButtonOption1.alpha = 0.5
        
        starter()
        playSound()
        
        
        
    }

    
    func starter()
    {
       var i = item(name: "Shafee", message: "Test")

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.itemArray.append(i)
            self.tableView.reloadData()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            i = item(name: "Shafee", message: "Greetings")
            self.itemArray.append(i)
            self.tableView.reloadData()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
            i = item(name: "Shafee", message: "Welcome to the experiment")
            self.itemArray.append(i)
            self.tableView.reloadData()
        }
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
            i = item(name: "Shafee", message: "This is shafee")
            self.itemArray.append(i)
            self.tableView.reloadData()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
            i = item(name: "Shafee", message: "Designer of the test")
            self.itemArray.append(i)
            self.tableView.reloadData()

        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 19){
            i = item(name: "Shafee", message: "and your helper of the test")
            self.itemArray.append(i)
            self.tableView.reloadData()
            
            self.ButtonOption1.setTitle("Where am I?", for: .normal)
            self.ButtonOption2.setTitle("Why is it so quite?", for: .normal)
            
            self.ButtonOption1.isEnabled = true
            self.ButtonOption2.isEnabled = true
            
            self.ButtonOption2.alpha = 1
            self.ButtonOption1.alpha = 1
        }
     
    }
    
    func firstque(answerInput : String)
    {
        ButtonOption1.isEnabled = false
        ButtonOption2.isEnabled = false
        ButtonOption2.alpha = 0.5
        ButtonOption1.alpha = 0.5
        
        let i = item(name: "You", message: answerInput)
        self.itemArray.append(i)
        self.tableView.reloadData()
        self.scrollToBottom()
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            if(answerInput == "Why is it so quite?")
            {
                let i = item(name: "Shafee", message: "So that they cant sense you, let me explain")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            
            let i = item(name: "Shafee", message: "U are in a experiment u have been used as an subject to find a cure of this on going virus created a by underworld lab")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            
            let i = item(name: "Shafee", message: "A virus turning everyone into zombies its already infected 90% of the world")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 13) {
            
            let i = item(name: "Shafee", message: "out of all our 1 billion subjects U were luckily not infected and perfect for the test")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 16) {
            
            let i = item(name: "Shafee", message: "some believe the cure is in the same city where it started from")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
            
            let i = item(name: "Shafee", message: "the city of Dauntpit")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 25) {
            
            let i = item(name: "Shafee", message: "your survival is in finding the cure which is located in the same lab named sudo cooperation that started it")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 34) {
            
            let i = item(name: "Shafee", message: "find the cure bring it to us we will release you to our safe world")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 40) {
            
            let i = item(name: "Shafee", message: "act smart and follow some of my instructions and your decision skills")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 46) {
            
            let i = item(name: "Shafee", message: "lets see if u can do it for us or yourself")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 50) {
            
            let i = item(name: "Shafee", message: "don’t act smart like the other 15 subjects who couldn’t survive")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 53) {
            
            let i = item(name: "Shafee", message: "your first help from my end")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 58) {
            
            let i = item(name: "Shafee", message: "don’t trust people with guns, don’t reveal why you’re here")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 61) {
            
            let i = item(name: "Shafee", message: "welcome to the daunt pit city")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
        }
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 64) {
            
            let i = item(name: "Shafee", message: "Good Luck")
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            
            self.ButtonOption1.isEnabled = true
            self.ButtonOption1.alpha = 1
            self.ButtonOption1.setTitle("Peek Out of the window", for: .normal)
            self.ButtonOption2.setTitle("Check Your Pockets", for: .normal)
            
        }
        
        
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "background-dunkirk-mole", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            player.numberOfLoops = -1
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

    
    
    @IBAction func ButtonOption1Clicked(_ sender: UIButton) {
        
        continueStory(answerInput: (ButtonOption1.titleLabel?.text)!)
        
    }
    
    @IBAction func ButtonOption2Clicked(_ sender: UIButton) {
      
       continueStory(answerInput: (ButtonOption2.titleLabel?.text)!)
        
    }
    

    
    
    func scrollToBottom(){
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.itemArray.count-1, section: 0)
            self.tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
    }
    
    
    func continueStory(answerInput : String)
    {
        if(answerInput == "Where am I?")
        {
            
            firstque(answerInput: answerInput)
        }
        
        else if (answerInput == "Why is it so quite?")
        {
            firstque(answerInput: answerInput)
        }
        
        else if (answerInput == "Peek Out of the window")
        {
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                
                let i = item(name: "*", message: "you see a lot of zombies walking in the streets of dauntpit finding a flesh to eat")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                
                let i = item(name: "*", message: "you see a Stone")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Throw at right", for: .normal)
                self.ButtonOption2.setTitle("Throw at left", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption2.alpha = 1
                self.ButtonOption1.alpha = 1
                
            }
            

        }
        
        else if(answerInput == "Throw at right")
        {
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                 let i = item(name: "*", message: "you realise zombies running towards right as they can’t see but only hear. makes sense about the instructor keeping me in a silent room")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Peek Out of the window", for: .normal)
                self.ButtonOption2.setTitle("Check Your Pockets", for: .normal)
                
                self.ButtonOption1.isEnabled = false
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption2.alpha = 0.5
                self.ButtonOption1.alpha = 1
                
            }
        }
        
        else if(answerInput == "Throw at left")
        {
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "you realise zombies running towards left as they can’t see but only hear. makes sense about the instructor keeping me in a silent room")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Peek Out of the window", for: .normal)
                self.ButtonOption2.setTitle("Check Your Pockets", for: .normal)
                
                self.ButtonOption1.isEnabled = false
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption1.alpha = 0.5
                self.ButtonOption1.alpha = 1
                
            }
        }
        
        else if(answerInput == "Check Your Pockets")
        {
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "you see a key to unlock the door and scissors not sure how it would help")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Go Out", for: .normal)
                self.ButtonOption2.setTitle("Check the room", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption2.alpha = 1
                self.ButtonOption1.alpha = 1
                
            }
        }
        
        else if(answerInput == "Check the room")
        {
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "you found nothing but dust")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Go Out", for: .normal)
                self.ButtonOption2.setTitle("Check the room", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
        }
        
        else if(answerInput == "Go Out")
        {
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "Once you step out of daunt pit city you see a lot of zombies stay away and stay quite")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "Sudo advertisment everwhere. Seems like The sudo cooperation made it big before the Apocalypse")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "*", message: "You also see advertisement signs of sudo cooperation hopefully the signs can have some info")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                self.ButtonOption1.setTitle("Read The Sign", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
            
          
                
            
        }
        else if(answerInput == "Read The Sign")
        {
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            //perform advertisment photo segue here
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "Says address 23 hills street there is probably the lab")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Go Ahead exploring the town", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
            
 
            
            
            
            
            
        }
        else if(answerInput == "Go Ahead exploring the town")
        {
            //perform Crash photo segue here
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "You heard a Crash")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Run towards the crash", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
            
            
            
            
            
            
            
        }
        else if(answerInput == "Run towards the crash")
        {
            //perform Crash photo segue here
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            //perform stay back evils
            //shoots zombie
            //jumps out of the bridge to hellen street
            //zombie spots you
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "Zombie Spots you")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Jump to the hellen street", for: .normal)
                
                self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (Timer) in
                    
                    if(self.time > 0){
                    self.time = self.time - 1
                    self.ButtonOption2.setTitle(String(self.time), for: .normal)
                    }
                    else{
                    Timer.invalidate()
                    print("dead")
                        self.time = 5
                    }
                })
                
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 1
                
            }
        }
    
        else if(answerInput == "Jump to the hellen street")
        {
           
            timer.invalidate()
            time = 5
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
    
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "Long jump made you faint for a 10 mins")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
               
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "You open your eyes and see someone giving you a hand")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "Charles", message: "Hi! im officer charles")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
     
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                
                let i = item(name: "Charles", message: "I see you’re not infected Very happy to see you")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Charles", message: "My job here is to find people like you and provide them safety and shelter")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 18) {
                
                let i = item(name: "*", message: "you see a mask on his face")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Do you work for sudo cooperation?", for: .normal)
                self.ButtonOption2.setTitle("Great Job Officer!", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 1
                
            }
          
            
        }
        
        else if(answerInput == "Do you work for sudo cooperation?")
        {
          
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            

            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "charles", message: "NO!! they ruined the world we are their enemy")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "charles", message: "Just performing my duty that our master ordered to perform")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Do you work for sudo cooperation", for: .normal)
                self.ButtonOption2.setTitle("Great Job Officer!", for: .normal)
                
                self.ButtonOption1.isEnabled = false
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption1.alpha = 0.5
                self.ButtonOption2.alpha = 1
                
            }
            
            
        }
        else if(answerInput == "Great Job Officer!")
        {
            //perform Crash photo segue here
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5

            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "charles", message: "Lets get in my car and i will direct you to the heavenly safe zone")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Sit in the back seat of the car", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
                }
            
            }
        
        else if(answerInput == "Sit in the back seat of the car")
        {
            //perform Crash photo segue here
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "Drives the car")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "charles", message: "so how did you got hear")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "charles", message: "haven’t heard people coming here for last 2-3 weeks")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("I'm a survivor", for: .normal)
                self.ButtonOption2.setTitle("I was sent to end this", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 1
                
                
            }
            
        }
        
        else if(answerInput == "I was sent to end this")
        {
            //perform Crash photo segue here
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "charles", message: "SAME! *High five*")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "charles", message: "I was sent on a mission too")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "charles", message: "to end people like you")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()

                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                
                let i = item(name: "charles", message: "i am a SUDO worker")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "charles", message: "Good Bye Mother f******")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                print("dead")
                
            }
            
        }
        else if(answerInput == "I'm a survivor")
        {
            //perform Crash photo segue here
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "charles", message: "Trust is very essential in this time")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "charles", message: "safe people are more threat to this society than the zombies")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "charles", message: "no trust no life")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                
                let i = item(name: "charles", message: "my name is Charles")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "charles", message: "but people call me a good liar as well")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 18) {
                
                let i = item(name: "charles", message: "This is today's world")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 21) {
                
                let i = item(name: "Radio", message: "get back to the hills base")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 24) {
                
                let i = item(name: "*", message: "Charles suddenly stops the radio and smiles at you")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 24) {
                
                let i = item(name: "charles", message: "my boss ha Ha! always worrying about the BILLS")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Kill Charles with your scissors", for: .normal)
                self.ButtonOption2.setTitle("Trust charles it was bills", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = true
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 1
                
            }
            
        }
        else if(answerInput == "Trust charles it was bills")
        {
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "Radio", message: "Get here NOW")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "charles", message: "I have a duty to perform and now perform quick")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "charles", message: "Just for your satisfaction im a SUDO worker")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                
                let i = item(name: "charles", message: "Good bye mother f******")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
                
            }
            
        }
        
        else if(answerInput == "Kill Charles with your scissors")
        {
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "Radio", message: "The Car is about to CRASH!")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Pull hand brake", for: .normal)
                
                self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (Timer) in
                    
                    if(self.time > 0){
                        self.time = self.time - 1
                        self.ButtonOption2.setTitle(String(self.time), for: .normal)
                    }
                    else{
                        Timer.invalidate()
                        print("dead")
                        self.time = 5
                    }
                })
                
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 1
                
                
            }
            
            
        }
        else if(answerInput == "Pull hand brake")
        {
            timer.invalidate()
            time = 5
            
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "Small crash, the car stopped")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "you are still alive")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "you found a note in charles lap, says")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "*", message: "my master oh my master I surrender my desires for yours. I will never betray and will respect the privacy of tower of life")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                
                let i = item(name: "*", message: "my Code 9098")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Wear charles uniform", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
         
            
        }
        
        else if(answerInput == "Wear charles uniform")
        {
            timer.invalidate()
            time = 5
            
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "You wore charles uniform and mask to hide your identity")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Go to hills base", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
                
                
            }
            
           
            
        }
        else if(answerInput == "Go to hills base")
        {
            timer.invalidate()
            time = 5
            
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "After reaching the hills base")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "You see a lot of zombies on the front walls of the base")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("Throw a stone opposite of the base", for: .normal)
                self.ButtonOption2.setTitle("-", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
            
            
            
        }
        else if(answerInput == "Throw a stone opposite of the base")
        {
            timer.invalidate()
            time = 5
            
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "You see all zombies going to the oposite side")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "and you silently rush your way to the base door")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
   
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "*", message: "Press in the code")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                self.ButtonOption1.setTitle("code: 9 0 9 8", for: .normal)
                self.ButtonOption2.setTitle("code: 9 0 9 0", for: .normal)
                
                self.ButtonOption1.isEnabled = true
                self.ButtonOption2.isEnabled = false
                
                self.ButtonOption1.alpha = 1
                self.ButtonOption2.alpha = 0.5
                
            }
            
            
            
        }
        else if(answerInput == "code: 9 0 9 0")
        {

            
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "*SIREN ON*")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "*", message: "Looks like the zombies were actually protecting the base")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "*", message: "*Zombie Rushed and bite you by your throat*")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            
            
        }
        else if(answerInput == "code: 9 0 9 8")
        {
   
            
            let i = item(name: "You", message: answerInput)
            self.itemArray.append(i)
            self.tableView.reloadData()
            self.scrollToBottom()
            
            
            self.ButtonOption1.isEnabled = false
            self.ButtonOption2.isEnabled = false
            
            self.ButtonOption2.alpha = 0.5
            self.ButtonOption1.alpha = 0.5
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                let i = item(name: "*", message: "a person in doctor suit and a mask greets you and lets you in, his name tag says Gary")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                
                let i = item(name: "Dr. Gary", message: "Good job on killing the 16th subject")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                
                let i = item(name: "Dr. Gary", message: "Lets go we have a important meeting with the master")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                
                let i = item(name: "*", message: "You walk inside the main building")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "You go and see 100 people with a zombie mask waiting for the master")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "Master comes and people chant")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "my master oh my master We surrender my desires for yours. We will never betray and will respect the privacy of tower of life")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "my master oh my master We surrender my desires for yours. We will never betray and will respect the privacy of tower of life")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Master", message: "he tower has kept us alive")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Master", message: "The tower has made us what we are")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Master", message: "We must keep the tower safe")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
          
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Master", message: "tower teaches to never forget the history of our people and the actions or else face death")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "master waves his hand over the tower wall and out comes a green antidote")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Master", message: "This antidote is our power and the tower protects it with the master help")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "He keeps back the antidote")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "Master", message: "You all shall go and have your deserved rest")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 15) {
                
                let i = item(name: "*", message: "after leading everyone else, Gary Leads you to your(charles) room")
                self.itemArray.append(i)
                self.tableView.reloadData()
                self.scrollToBottom()
                
                
            }
            

            
            
        }

            
    }
    
}



