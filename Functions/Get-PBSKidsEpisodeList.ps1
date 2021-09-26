function Get-PBSKidsEpisodeList {
    <#
        .SYNOPSIS
            Gets a list of Episodes from the specified show
        .DESCRIPTION
            Looks up the Episodes from the specified show
        .PARAMETER Shows
            Show to get Episodes for
        .EXAMPLE
            Get-PBSKidsEpisodeList
    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)][ValidateSet("Alma's Way", "Arthur", "Clifford the Big Red Dog", "Curious George", "Cyberchase", "Daniel Tiger's Neighborhood", "Design Squad", "Donkey Hodie", "Dot's Spot", "Elinor Wonders Why", "Hero Elementary", "Let's Go Luna!", "Martha Speaks", "Maya & Miguel", "Mister Rogers' Neighborhood", "Molly of Denali", "Nature Cat", "Odd Squad", "Oh Noah!", "Peg + Cat", "Pinkalicious and Peterrific", "Plum Landing", "Ready Jet Go", "SciGirls", "Scribbles and Ink", "Sesame Street", "Sid the Science Kid", "Splash and Bubbles", "SUPER WHY!", "The Cat in the Hat", "The Ruff Ruffman Show", "Through the Woods", "Wild Kratts", "Word World", "WordGirl", "Xavier Riddle and the Secret Museum")]$Shows
    ) 
    BEGIN {
        foreach ($Show in $Shows) {
            if ($Show = "Alma's Way") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/almas-way/'
            }
            if ($Show = "Arthur") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/arthur/'
            }
            if ($Show = "Clifford the Big Red Dog") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/clifford-big-red-dog/'
            }
            if ($Show = "Curious George") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/curious-george/'
            }
            if ($Show = "Cyberchase") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/cyberchase/'
            }
            if ($Show = "Daniel Tiger's Neighborhood") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/daniel-tigers-neighborhood/'
            }
            if ($Show = "Design Squad") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/design-squad-nation/'
            }
            if ($Show = "Donkey Hodie") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/donkey-hodie/'
            }
            if ($Show = "Dot's Spot") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/dots-spot/'
            }
            if ($Show = "Elinor Wonders Why") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/elinor-wonders-why/'
            }
            if ($Show = "Hero Elementary") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/hero-elementary/'
            }
            if ($Show = "Let's Go Luna!") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/lets-go-luna/'
            }
            if ($Show = "Martha Speaks") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/martha-speaks/'
            }
            if ($Show = "Maya & Miguel") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/maya-miguel/'
            }
            if ($Show = "Mister Rogers' Neighborhood") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/mister-rogers/'
            }
            if ($Show = "Molly of Denali") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/molly-of-denali/'
            }
            if ($Show = "Nature Cat") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/nature-cat/'
            }
            if ($Show = "Odd Squad") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/odd-squad/'
            }
            if ($Show = "Oh Noah!") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/oh-noah/'
            }
            if ($Show = "Peg + Cat") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/peg/'
            }
            if ($Show = "Pinkalicious and Peterrific") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/pinkalicious-and-peterrific/'
            }
            if ($Show = "Plum Landing") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/plum-landing/'
            }
            if ($Show = "Ready Jet Go") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/ready-jet-go/'
            }
            if ($Show = "SciGirls") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/scigirls/'
            }
            if ($Show = "Scribbles and Ink") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/scribbles-and-ink/'
            }
            if ($Show = "Sesame Street") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/sesame-street/'
            }
            if ($Show = "Sid the Science Kid") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/sid-science-kid/'
            }
            if ($Show = "Splash and Bubbles") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/splash-and-bubbles/'
            }
            if ($Show = "SUPER WHY!") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/super-why/'
            }
            if ($Show = "The Cat in the Hat") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/cat-in-the-hat/'
            }
            if ($Show = "The Ruff Ruffman Show") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/ruff-ruffman-show/'
            }
            if ($Show = "Through the Woods") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/through-woods/'
            }
            if ($Show = "Wild Kratts") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/wild-kratts/'
            }
            if ($Show = "Word World") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/word-world/'
            }
            if ($Show = "WordGirl") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/wordgirl/'
            }
            if ($Show = "Xavier Riddle and the Secret Museum") {
                $ShowQuery = 'https://content.services.pbskids.org/v2/kidspbsorg/programs/xavier-riddle-and-secret-museum/'
            }

            $ShowContent = Invoke-RestMethod $ShowQuery
            $PBSKidsEpisodeList += ($ShowContent.collections.episodes.content) | Select-Object air_date, title, mp4, short_description, description, expire_date

        }
    } #BEGIN

    PROCESS {


    } #PROCESS

    END { 
        $PBSKidsEpisodeList
    } #END

} #FUNCTION