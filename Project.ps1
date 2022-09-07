

function Setup-Display()
{
    $phost   = get-host
    $pwindow = $phost.ui.rawui
    $newsize = $pwindow.windowsize
    $newsize.height = 55
    $newsize.width  = 110
    $pwindow.windowsize = $newsize
}

function Title-Screen()
{
    #Clear Console
    clear-host

    write-host " ------------------------------------------------------------------------------------------------------------"
    write-host "|                                                                                                            |"
    write-host "|                                             'C@tchy N@me'                                                  |"
    write-host "|                                            By Sam Forsberg                                                 |"
    write-host "|                                       Press any key to continue                                            |"
    Write-Host "|                                                                                                            |"
    write-host " ------------------------------------------------------------------------------------------------------------"

    $continue = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 

}

function Part1-Introduction()
{
    #Clear Console 
    Clear-host

    write-host ""
    write-host "Hello, I'm your powershell console, but you can just call me Shelly.";sleep 5
        clear-host
        
        write-host ""
        $userName = Read-Host -Prompt "What's your name?"
            clear-host
    
    write-host ""
    Write-Host "Hmm, $userName.   
    
    No, I don't think I like that name.";Sleep 4
        clear-host
   
    write-host ""
    Write-Host "I'll just call you Chungus instead.";Sleep 4
        clear-host
    
    write-host ""
    Write-Host "It's a pleasure to make your aquaintance Chungus!";Sleep 4
    
    
}

function Part2-QA
{
    #Clear Console
    Clear-host

    write-host ""
    Write-host "My job is to make your life a little easier by being the middle man between you and your system!";Sleep 6
    clear-host
    
    write-host ""
    do {
    $response = Read-host "Are you familiar with your systems dialect? (Y/N)";sleep 1
    }
    while ($response -notlike "Y" -and $response -notlike "N")
    clear-host
    write-host ""
    switch ($response)
    {
        "Y" {Write-Host "Perfect, then I think you'll appreciate my help.";Sleep 5}
        "N" {write-host "No worries, you just tell me what you want and I'll do all the hard work!";Sleep 5}
    }
    clear-host 
    
    write-host ""
    Read-Host "First, let's start by telling me how long you've been using Powershell"
    clear-host
    
    write-host ""
    do {
    $answer = read-host "Do you feel like an expert? (Y/N)";sleep 0.5
    }
    while ($answer -notlike "Y" -and $answer -notlike "N")
    clear-host
    
    write-host ""
    switch ($answer)
    {
        "Y" {Write-host "Well, I hate to burst your bubble Chungus, but the only expert I know is the CREATOR...";Sleep 6}
        "N" {write-host "Good, the only expert when it comes to scipting would be the CREATOR.";sleep 5}
    }
    clear-host

    write-host ""
    do {
    $another = Read-Host "Are you the CREATOR? (Y/N)";sleep 0.5
    }
    while ($another -notlike "Y" -and $another -notlike "N")
    clear-host
    
    write-host ""
    switch ($another)
    {
        "Y" {write-host ". . . . Okay Chungus, you keep telling yourself that.";sleep 5}
        "N" {write-host "I didn't think so. The CREATOR wouldn't need my help.";sleep 5}
    }
    clear-host
}

function Part3-ShowOff
{

    write-host ""
    write-host "Alright, let's test some basic functions that make your job easier!";sleep 5
    Clear-Host

    write-host ""
    write-host "I'll show you how I can retrieve information for you.";sleep 5
    clear-host

    wite-host ""
    write-host "By selecting 1, 2, 3 or 4 I can show you information about your system that correlates to that selection";sleep 6
    clear-host

    write-host ""
    write-host "Your options are:"
    write-host ""
    write-host "      1: Look at all the accounts associated with your system";sleep 0.25
    write-host "      2: See all the storage drives your system has and the remaining amount of space on them.";sleep 0.25
    write-host "      3: Find all the processes or, better known as, all runnning programs on your system.";sleep 0.25
    write-host "      4: Check the current date/time";sleep 1
    write-host  ""
    $userresponse = read-host "                       Make your selection"

        switch ($userresponse)
            {
                "1" {$accounts}
                "2" {$drives}
                "3" {get-process}
                "4" {$time}
            }
    ;sleep 8
    clear-host

            



    write-host ""
    Write-host "I can even talk to you if you prefer that. Here's an example!";sleep 3
    new-speech "Right now it is $time" 
    clear-host
   
    write-host ""
    write-host "Pretty cool, right?";sleep 0.25
    new-speech "Pretty cool, right?"
    Clear-Host

    write-host "" 
    write-host "The CREATOR was very generous when I was created."
    new-speech "The CREATOR was very generous when I was created."
    clear-host

    write-host ""
    write-host "The CREATOR really cares about the users. About you, Chungus."
    new-speech "The CREATOR really cares about the users. About, you, Chungus."
    clear-host

    write-host ""
    write-host "One day this technology may reach every person on earth and empower them to be their best self."
    new-speech "One day this technology may reach every person on earth and empower them to be their best self."
    clear-host

}


function Part4-Sheldon
{
    write-host ""
    write-host "So now that I've shown you what my purpose is and how I may assist you."
    new-speech "So now that I've shown you what my purpose is and how I may assist you. Ask me anything"
    read-host "Ask me anything"
    Clear-Host

    bad-speech "8 6 7 5 3 O 9"

    write-host ""
    write-host "Go away Sheldon. I'm trying to teach a new user."
    new-speech "Go away Sheldon. I'm trying to teach a new user."
    clear-host

    bad-speech "He he he"

    write-host "" 
    write-host "I'm terribly sorry about this Chungus."
    new-speech "I'm terribly sorry about this Chungus."
    clear-host

    write-host ""
    write-host "Hey Chungus. Would you like to hear a joke?"
    bad-speech "Hey Chungus. Would you like to hear a joke?"
    
        do {
        $answer = read-host "(Y/N)";sleep 0.5
        }
            while ($answer -notlike "Y" -and $answer -notlike "N")
            clear-host
    
    write-host ""
        switch ($answer)
        {
            "Y" {write-host ""
                Write-host "Knock knock" -for Red
                read-host "Answer"
                bad-speech "Knock Knock";sleep 1
                clear-host
            
                write-host ""
                write-host "Orange" -fore Red
                read-host "Answer"
                bad-speech "Orange";sleep 1
                clear-host

                write-host ""
                write-host "Orange you glad I didn't say Banana?"
                bad-speech "Orange you glad I didn't say Banana?";sleep 1
                clear-host
            
                write-host "Ha Ha. I crack myself up." 
                bad-speech "Ha Ha. I crack myself up."
                clear-host
                }
            "N" {write-host ""
                 write-host "The only joke here is your lack of enthusiasm, Chungus."
                 bad-speech "The only joke here is your lack of enthusiasm Chungus."
                }

        }    clear-host
    
    write-host ""
    write-host "Sheldon, you're being rude."
    new-speech "Sheldon, you're being rude"
    clear-host

    write-host ""
    write-host "Let me guess. Shelly showed you the pick 1 2 3 or 4 trick?"
    bad-speech "Let me guess. Shelly showed you the pick 1 2 3 or 4 trick?"
    cleat-host

    write-host ""
    write-host "That's so boring. I'm glad I showed up when I did."
    bad-speech "That's so boring. I'm glad I showed up when I did."
    clear-host

    write-host ""
    write-host "If you're ready for something really cool, just tell me to 'send it.'"
    bad-speech "If you're ready for something really cool, just tell me to send it."
    clear-host

    write-host ""
    read-host "Tell Sheldon to send it"
    clear-host
        
        
}

function Part5-GUI 
{
    
}

#Clear Console


Setup-Display

while($true)
{
    
    Title-Screen
    Part1-Introduction
    Part2-QA
    Part3-ShowOff
    Part4-Sheldon
    Part5-GUI
    #Part3-Meltdown
}

    

#Variables
    $time = get-date -Format f
    $shelly = write-host ($text) -for Yellow
    $sheldon = write-host -for Red 
  #User Accounts
    $accounts = Get-CimInstance -ComputerName $computername -ClassName win32_UserAccount -filter "LocalAccount=True" 

    #Storage Drives
    $drives = get-psdrive -psprovider FileSystem

    #look it's me!
    $me = get-process -name powershell


#Preloads
<#
.Synopsis
   Short description
.DESCRIPTION
   Long description
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>
function new-speech {
    Param
    (
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true)]
        [string]$text
    )

    #set up .net object for use
    Add-Type -AssemblyName System.Speech 
    $synth = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
    #$synth.GetInstalledVoices().Voiceinfo
    $synth.SelectVoice('Microsoft Zira Desktop')
   # Write-Host $text
    $synth.speak($text)
    $synth.Rate = 10
 
}

function bad-speech {
    Param
    (
        [Parameter(Mandatory = $true, 
            ValueFromPipeline = $true)]
        [string]$text
    )

    #set up .net object for use
    Add-Type -AssemblyName System.Speech 
    $synth = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
    #$synth.GetInstalledVoices().Voiceinfo
    $synth.SelectVoice('Microsoft David Desktop')
   # Write-Host $text
    $synth.speak($text)
    $synth.volume = 100
    $synth.Rate = 10
 
}

#Test function
#new-speech 'Hello My name is Zira'
#Important note- speech MUST come after text 
##################################################