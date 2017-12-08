//
//  BarListViewController.swift
//  BarCrowd
//
//  Created by Mason Mahoney on 11/16/17.
//  Copyright © 2017 Mason Mahoney. All rights reserved.
//

import UIKit
import Foundation

class BarListViewController: UITableViewController {
    
    var userEmail : String?
    
    var items = [Bar]()
    fileprivate var itemsType : [Bar] = [Bar]()
    fileprivate var itemsLocation : [Bar] = [Bar]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBars()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    
    func createBars() {
        items.append(Bar(name: "Tin Can",
                         barId: "1",
                         type: "N/A",
                         contact: "N/A",
                         description: "N/A",
                         location: "unknown",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "20 Monroe Live",
                         barId: "1",
                         type: "N/A",
                         contact: "(844) 678-5483",
                         description: "This incredible space is the perfect location to host your corporate event, private concert, wedding, reception or business meeting. With access to the world’s greatest musical entertainment, full service event production, state-of-the-art lighting and sound, custom menus and mixology - our unique venue will exceed expectations of even the most discerning guest. ",
                         location: "11 Ottawa Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Atwater Brewery",
                         barId: "2",
                         type: "N/A",
                         contact: "(616) 649-3020",
                         description: "Popular Detroit brewery operates this taphouse and open-air beergarden in a restored 1923 building in the heart of downtown.",
                         location: "201 Michigan St. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "B.O.B.'s Brewery",
                         barId: "3",
                         type: "N/A",
                         contact: "(616) 356-2000",
                         description: "A stylish lounge & nightclub located on the lower level of the B.O.B. A microbrewery, featuring our own micro-brewed beer, live entertainment on weekends, billiards, games and traditional pub fare.",
                         location: "20 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Billy's Lounge",
                         barId: "4",
                         type: "N/A",
                         contact: "(616) 459-5757",
                         description: "Located in the heart of Eastown. Bringing the best live entertainment to Grand Rapids. Blues every Friday and Saturday. Also featuring open mic nights, jazz, R & B, rock, funk, folk and reggae bands.",
                         location: "1437 Wealthy St. SE",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Bobarino's at The B.O.B.",
                         barId: "5",
                         type: "N/A",
                         contact: "(616) 356-2000",
                         description: "Handmade pasta, outstanding wood-fired pizzas and an array of sandwiches and salads. Daily entree specials as well. Sport's bar, Plasma TV's, Billiard room, seasonal deck, lounge area and live music Tuesday through Saturday.",
                         location: "20 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Bull's Head Tavern",
                         barId: "6",
                         type: "N/A",
                         contact: "(616) 454-3580",
                         description: "N/A",
                         location: "188 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Cygnus 27",
                         barId: "7",
                         type: "N/A",
                         contact: "(616) 776-6425",
                         description: "Week night Happy Hour. Wednesday night \"Cosmo Night\", one half off specialty drinks in the lounge.",
                         location: "187 Monroe Ave. NW Amway Grand Plaza Hotel",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Dave and Busters",
                         barId: "8",
                         type: "N/A",
                         contact: "(616) 224-8800",
                         description: "Take a look at the awesome fun that awaits! We've got more than 200 games in our Million Dollar Midway. Win tickets playing our games and turn them in for great prizes in the Winner's Circle. Wow, you can even take home some of the fun! And don't forget our Happy Hours! Many locations have two every day-a regular Happy Hour and a Late Night Happy Hour.",
                         location: "3660 28th St. SE",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Elk Brewing Grand Rapids",
                         barId: "9",
                         type: "N/A",
                         contact: "(616) 238-5227",
                         description: "A rustic-industrial brew pub located in the Wealthy Street Business District of GR. Using our onsite 3 barrel brewing system, we focus on brewing beers that push the standard of traditional styles. An outdoor patio provides ample seating to enjoy the beautiful Michigan patio season. Enjoy a beer next to the fireplace, play a game of bags, or just kick back and enjoy the sunshine.",
                         location: "700 Wealthy Street SE",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Eve at The B.O.B.",
                         barId: "10",
                         type: "N/A",
                         contact: "(616) 356-2000",
                         description: "Located at the top floor of the B.O.B.",
                         location: "20 Monroe Ave. NW",
                         cover: "$20",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Founders Brewing Company",
                         barId: "11",
                         type: "N/A",
                         contact: "(616) 776-1195",
                         description: "Enjoy one of our world-class beers, produced on-site, alongside a handcrafted sandwich in our taproom - a spacious beer hall where, on most nights, you can experience some killer live music.",
                         location: "235 Grandville Ave. SW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Fountain Hill Brewery",
                         barId: "12",
                         type: "N/A",
                         contact: "(616) 234-3700",
                         description: "Fountain Hill Brewery is the ONLY federal and state licensed brew pub (Peter's Pub) in the country that is owned and operated on a college/university campus! What a great lab for students enrolled in our Craft Brewing, Packaging and Service Operations Certificate to learn about the craft brew industry!",
                         location: "151 Fountain St. NE",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Gilly's at The B.O.B.",
                         barId: "13",
                         type: "N/A",
                         contact: "(616) 356-2000",
                         description: "Come and enjoy live jazz music on Thursdays.",
                         location: "20 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "GP Sports",
                         barId: "14",
                         type: "N/A",
                         contact: "187 Monroe Ave. NW",
                         description: "The best place in town to unwind with three large screens, 40 TVS, pool tables, outdoor patio seating, wood-fired pizzas, and signature burgers. Complimentary self-parking for two hours.",
                         location: "187 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Grand Rapids Brewing Company",
                         barId: "15",
                         type: "N/A",
                         contact: "(616) 458-7000",
                         description: "With a recently refreshed menu and more than a dozen house-made beers on tap, Grand Rapids Brewing Co. mixed Beer City's brewing heritage with a decidedly modern take on craft beer and cuisine. GRBC offers weekend brewery tours by reservation. Its private dining room provides a uniquely comfortable space for your special events.",
                         location: "1 Ionia Ave. SW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Grand Woods Lounge",
                         barId: "16",
                         type: "N/A",
                         contact: "(616) 451-4300",
                         description: "The Grand Woods Lounge boasts of the full compliment of compliments:  The greatest Martini List.  The smartest Craft Beer List.  The best executed Comfort Food; The coolest Facility; The most fun Porch; The most exciting and diverse Entertainment; The absolute best Hospitality Professionals in Grand Rapids.  The sum of our parts equates to the best place for the best people to socialize, dine and party..",
                         location: "77 Grandville Ave. SW",
                         cover: "$5",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Greyline Brewing Co.",
                         barId: "17",
                         type: "N/A",
                         contact: "N/A",
                         description: "West Side brewery includes a 55-seat tasting room, 7-barrel brewhouse, small kitchen serving deli fare and outdoor patio.",
                         location: "1727 Alpine Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "H.O.M.E. at The B.O.B.",
                         barId: "18",
                         type: "N/A",
                         contact: "(616) 356-2000",
                         description: "The House of Music and Entertainment at The B.O.B. offers an easygoing ambience, approachable menu, classic bar list and musical styles for every taste.",
                         location: "20 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Harmony Brewing Company",
                         barId: "19",
                         type: "N/A",
                         contact: "(616) 233-0063",
                         description: "Voted in the top 5 pizza places in Michigan by Mlive, artfully crafted cocktails, artisanal fresh food, and outstanding unique and delicious beers brwered by us with love and gratitude.",
                         location: "1551 Lake Dr. SE",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Harmony Hall",
                         barId: "20",
                         type: "N/A",
                         contact: "(616) 233-9186",
                         description: "The owners of Harmony Brewing have brought that pub's friendly neighborhood feel to a landmark building on the west side of Grand Rapids. Inspired by German beer halls, Harmony Hall features a full lineup of lagers, ales and barrel-aged ales, as well as an imminently famous menu.",
                         location: "401 Stocking Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Hideout Brewing",
                         barId: "21",
                         type: "N/A",
                         contact: "(616) 361-9658",
                         description: "Since 2005, Hideout Brewing Company has been offering a wide variety of hand-crafted beers that will satisfy anyone’s taste. While you enjoy one of our classic Hideout brews, check out what else we have to offer! Kick back and enjoy live music, relax in our beer garden, or challenge your friends to a classic video game located in our upstairs lounge.",
                         location: "3113 Plaza Dr. NE",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "HopCat",
                         barId: "22",
                         type: "N/A",
                         contact: "(616) 451-4677",
                         description: "The Award-Winning Original: Opened in 2008 as a place where our founder, Mark Sellers, could enjoy a wide selection of craft beers from around the world (and some great seasonals brewed in our in-house small-batch brewery). Since then it has been named No. 3 Beer Bar on Planet Earth by Beer Advocate magazine and a Top 5 Great American Beer Bar by CraftBeer.com.",
                         location: "25 Ionia Ave. SW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "J. Gardella's Tavern",
                         barId: "23",
                         type: "N/A",
                         contact: "(616) 459-8824",
                         description: "Low priced beverages, large portioned meals, selection of single malt scotches and microbrews. Open mic night every Tuesday.",
                         location: "11 Ionia Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Jaden James Brewery",
                         barId: "24",
                         type: "N/A",
                         contact: "(616) 656-4665",
                         description: "Come and enjoy our many styles of beer on tap. Do not forget your growler to take some home for your friends.",
                         location: "4665 Broadmoor Ave. SE Suite 135 Inside Cascade Winery",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "The Mitten Brewing Company",
                         barId: "25",
                         type: "Brewpub",
                         contact: "(616) 608-5612",
                         description: "The Mitten Brewing Company is a vintage baseball-themed microbrewery and pizzeria located in historic Engine House #9, a Victorian-era firehouse and Grand Rapids Landmark. Since opening in October 2012, they've become known for their classic style beers with a twist and gourmet pizzas.",
                         location: "527 Leonard St. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Mixology",
                         barId: "26",
                         type: "N/A",
                         contact: "(616) 242-1500",
                         description: "JW Marriott's Mixology is an intriguing, sophisticated spot, featuring a two-sided fireplace and stylish s-shaped sofas. The great views of the Grand River and the impressive 23 level atrium provide an invigorating ambiance-ideal for relaxing.",
                         location: "235 Louis St. NW JW Marriott",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Mojo's Dueling Piano Bar & Restaurant",
                         barId: "27",
                         type: "N/A",
                         contact: "(616) 776-9000",
                         description: "Live musical entertainment in an exciting party atmosphere. Mojo’s features a main floor duo of multi-talented piano players every Wednesday-Saturday. The second story dance floor offers a DJ spinning the latest and greatest music on Wednesdays, Fridays and Saturdays, Full service menu.",
                         location: "180 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "The Knickerbocker Brewpub & Distillery",
                         barId: "28",
                         type: "Brewpub",
                         contact: "(616) 345-5642",
                         description: "Strategically placed at the gateway to Grand Rapids’ historic Westside, The Knickerbocker is a taste of many world traditions that have been rediscovered and presented with a fresh perspective. Enjoy a full drink menu including craft beer, artisan spirits, handcrafted cocktails, wine and cider.",
                         location: "417 Bridge St. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "SpeakEZ Lounge",
                         barId: "29",
                         type: "N/A",
                         contact: "(616) 458-3125",
                         description: "With subtle hints of the prohibition-era \"speakeasy\" pubs, SpeakEZ Lounge boasts classic cocktails, tasty infusions, & plenty of fine craft beers. The casual and friendly atmosphere will bring you in. Our eclectic and fresh food will bring you back. Come in and experience one of our featured sandwiches, pastas, or signature sauces.",
                         location: "600 Monroe Ave. NW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Stella's Lounge",
                         barId: "30",
                         type: "N/A",
                         contact: "(616) 742-4444",
                         description: "Drinks menu includes 250+ kinds of whisky for your sipping pleasure – Canadian, Scotch, Irish and American, including some Michigan-made varieties.",
                         location: "53 Commerce Ave. SW",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Tavern on the Square",
                         barId: "31",
                         type: "N/A",
                         contact: "(616) 456-7673",
                         description: "Eat, drink, and make merry. A place for friends of all friends, for special occasions or no occasion at all. Come as you are, and, more aptly come as who you are!",
                         location: "100 Ionia Ave. SW",
                         cover: "$10",
                         weekSpecial: "Not done yet." )!)
        items.append(Bar(name: "Tip Top Deluxe Bar & Grill",
                         barId: "32",
                         type: "N/A",
                         contact: "(616) 272-3910",
                         description: "N/A",
                         location: "760 Butterworth St. SW",
                         cover: "none",
                         weekSpecial: "Happy Hour 3-7 daily $2 Domestic Bottles, $2 Wells, $3 Calls, $1.50 Retros. Monday: $1 Black Label Cans, $2 Wells...Tuesday: $2 Well Drinks, $2 Domestic Bottles, $2 Off Drafts, $2 Off any Appetizer, Sandwich or Entree. Wednesday:$1 Off Michigan Craft Drafts, $2 High Life & Miller Lite. Thursday: $2 PBR Pints, $3 Vodka Red Bulls, $4 Jagerbombs. Friday: Sailor Jerry Drinks start at $3. No daily specials on show nights except Friday" )!)
        items.append(Bar(name: "The Back Forty Saloon",
                         barId: "33",
                         type: "N/A",
                         contact: "(616) 742-4040",
                         description: "Bar/restaurant offers live and local country bands Wednesday, Friday and Saturday nights, and a country DJ on Thursday nights. Line dancing lessons on Wednesdays.",
                         location: "48 West Fulton Street",
                         cover: "none",
                         weekSpecial: "Not done yet." )!)
        
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count - 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "BarTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? BarTableViewCell else{
            fatalError("The cell is not an instance of Bar Table View Cell")
        }
        
        let bar = items[indexPath.row]
        
        cell.barLabel.text = bar.name
        
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "barDesc", let dest = segue.destination as? BarDescriptionVC {
            if let _ = sender as? UITableViewCell, let indexPath = tableView.indexPathForSelectedRow{
                dest.bar = self.items[indexPath.row]
            
            }
        }
        
    }

}

