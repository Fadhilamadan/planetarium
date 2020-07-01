//
//  PlanetViewController.swift
//  Planetarium
//
//  Created by Fadhil Amadan on 6/30/20.
//  Copyright © 2020 Fadhil Amadan. All rights reserved.
//

import UIKit

class PlanetViewController: UIViewController {
    
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var factsTextView: UITextView!
    
    var planetIndex = 0
    let planetNames = ["Mercury", "Venus", "Earth", "Mars"]
    let planetFacts: [String : String] = [
        "Mercury" : "Mercury was first visited by NASA's Mariner 10 space probe in 1974. In a series of three flybys, the probe managed to map most of the planet's surface. When the photos were received on Earth, the features might easily have been mistaken for the Moon. Mercury's surface, however, is almost completely covered with craters. The moon has more open areas known as maria, which are mostly crater-free. Mercury has only one major open area known as the Caloris Basin. These open areas are thought to have been formed by more recent volcanic flows, which may have covered the older craters. The surface is also marked by steep cliffs, also known as rupes, which rise as much as 6300 feet (1920 m) above the valley floors.",
        "Venus" : "Until recently, the dense cloud cover on Venus prevented every attempt to get a look at its surface. The U.S. Marinerspacecraft could only send back pictures of a world shrouded in clouds. The real breakthroughs came with Pioneer Venus in 1978, Magellan in 1990, and with two Soviet space probes in 1982. Pioneer Venus was able to do some low resolution mapping of the surface. The two Soviet Venera probes landed on the surface, but could only send back a few poorly aimed pictures before they were destroyed by the intense temperature and pressure. Nevertheless, they did show a barren rocky terrain. Magellan used high definition radar to map the planet in detail, and revealed a relatively young surface. It consists of plains covered by lava flows, and highland regions formed by geological activity. Thousands of volcanoes and numerous impact craters dot the surface. Venus is a very active planet undergoing constant change.",
        "Earth" : "Earth is a rocky world that is still very much alive and active. Volcanic activity continually creates new land while earthquakes reshape the landscape. Earth's surface is constantly changing. The crust is divided up into several 'plates' (somewhat like a cracked eggshell) that float on a sea of molten rock. Where these plates collide, the land is thrust upwards to create enormous mountain ranges. The tallest of these mountains, Mt. Everest, rises 29,028 feet (8850 m) above sea level. In some places, one plate sinks underneath another forming deep valleys and trenches. The deepest of these, the Marianas trench, plunges seven miles (11 km) beneath the sea.",
        "Mars" : "Mars is a small, rocky world about half the size of Earth. As small as it is, however, it is a planet of extremes. Mars is the home of the largest known volcano in the Solar System. Olympus Mons is an extinct volcanic crater that rises 15 miles above the Martian surface. That is over twice the height of the tallest mountain on Earth, Mt. Everest. It is a scar so large it can be seen from Earth.",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPlanet(name: planetNames[planetIndex])
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        planetIndex += 1
        
        if planetIndex == planetNames.count {
            planetIndex = 0
        }
        
        showPlanet(name: planetNames[planetIndex])
        
    }
    
    func showPlanet(name: String) {
        
        let planetImage = UIImage(named: name.lowercased())
        
        self.title = name
        
        if planetImage != nil {
            planetImageView.image = planetImage
        } else {
            print("No such images in assets")
        }
        
        if let fact = planetFacts[name] {
            factsTextView.text = fact
        } else {
            print("Didnt find any fact about \(name)")
        }
        
    }

}
