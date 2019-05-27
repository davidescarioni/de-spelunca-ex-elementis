![De Spelunca Ex Elementis](https://assets.indiexpo.net/system/screens/files/000/011/416/large/Screenshot.png?1557598266)

# de-spelunca-ex-elementis
The repository of my little metroidvania game _De Spelunca Ex Elementis_, made with Game Maker Studio 1.4 for the annual Game Maker Jam of ![Game Maker Italia](https://gmitalia.altervista.org/site/).
I use the color Palette and the room dimension of the _Pico-8_ (an 8-bit fantasy console) and I take inspiration from, among others, Get Out and Cubevania, that are 2 Pico-8 game.
If you want to play the game first, you can find it [here on Indiexpo](https://www.indiexpo.net/it/games/de-spelunca-ex-elementis).

## How to start-up the repository

After clone the repo, and before you launch Game Maker Studio, you must create two scripts called rispectively __get_score__ and __send_score__

___get_score___
```GML
    //IMPORTANT: you need to set:
    // - var hash, with the hash code you want to use
    // - var phpTableAddress, with the url with your PHP table

    var name = url_encode(base64_encode(string(argument0)));
    var args = "name="+name+"&no_lines="+string(argument1)+"&hash="+hash;
    get_highscores = http_post_string(phpTableAddress, args); 
```

__send_score__
```GML
    //IMPORTANT: you need to set:
    // - var hash, with the hash code you want to use
    // - var addScorePhp, with the url with your PHP page where you use SQL to add entry to the table. Read Appsurd's tutorial

    var name = url_encode(base64_encode(string(argument0)));
    var args = "name="+name+"&score="+string(argument1)+"&hash="+hash;
    http_post_string(addScorePhp, args); 
```

## Changelog

* 1.2.1
    * Finally fix the compenetration bug in the first lava room

* 1.2
    * Bugfix boss death
    * Now darkness is more understandable
    * Fix wall position
    * Fix graal counter bug

* 1.1
    * Reactivate animation when player jump and fix collision bugs
    * Fix game resolution bug
    * Change font to improve readability
    * Now you must enter a name if you want to posto you highscore online
    * Minor fixes

* 1.0.1
    * Add 2 copyright-free soundtracks
    * Remove animation when the player jump for avoid an unpleasent bug (you can activate at your risk pressing the _5_ button)
    * Remove cheats


## Credits
I develop on GM for years, so probably I need to thanks with Shaung Spalding, Zack Bell and HeartBeast for their old tutorial where I learned how to program with GML.
Insted for this game I need to credit and thanks:
- Appsurd, for the online highscore table tutorial that I find on Yoyogames's forum
- Pixelated Pope, for the screen resolution tutorial.
