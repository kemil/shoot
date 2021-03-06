class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.text :content
      t.string :photography_type
      t.integer :position
      t.timestamps
    end

    Service.create(:position => 1,
                   :photography_type => 'Corporate',
                   :content => "<h3>Corporate and Editorial</h3>
          <p class='top'>As a corporate photographer in Washington DC, I understand the need to communicate what a business organization does in a dynamic visually interesting way.</p>
          <p>My clients are primarily corporations, government agencies, non-profit and non-government organizations (NGO). The images I create are often used in annual reports, websites, marketing collateral and branding campaigns. Specialties include corporate portraiture and editorial photography that visually promotes understanding of concepts goals and products. I am accustomed to collaborating with art directors and creative teams who are seeking a corporate photographer DC for their clients&rsquo; design projects.</p>
          <p>I&rsquo;m available for conferences, corporate events, legislative days, fund raising events, production stills, political, and news and event production photography for annual reports, magazine, news, and public relations. I have full lighting and studio capacity and can coordinate a team of photographers for larger events. </p>
          <p>I have the skills and resources to deliver a finished product on deadline.</p>
          <p>Below is a list of some of my capabilities and examples of the type of clients with whom I have worked.</p>
          <ul>
            <li>Alumni Magazines</li>
            <li>Annual Reports</li>
            <li>Assisted Living/ Nursing Home</li>
            <li>Author Portraits</li>
            <li>Brochures</li>
            <li>Catalogs</li>
            <li>College</li>
            <li>Design Firms</li>
            <li>Environmental Portrait</li>
            <li>Healthcare</li>
            <li>Health and Fitness</li>
            <li>Hospital</li>
            <li>Lifestyle</li>
            <li>Marketing</li>
            <li>Musicians</li>
            <li>Newsletter</li>
            <li>Public Relations, PR</li>
            <li>Publishing</li>
            <li>Product </li>
            <li>Technology</li>
            <li>University</li>
            <li>Website</li>
          </ul>

          <h4>Clients include</h4>
          <ul>
            <li>Discover Channel</li>
            <li>Discovery International</li>
            <li>History Channel</li>
            <li>New Beauty Magazine</li>
            <li>Committee for the Preservation of Social Security and Medicare</li>
            <li>West Virginia Executive Magazine</li>
            <li>USA Today</li>
            <li>Dickinson Wright LLC</li>
            <li>Pave the Way Foundation</li>
            <li>Avon</li>
            <li>Lockheed Martin</li>
            <li>Zavos Law LLC</li>
            <li>IRD &ndash; International Relief and Development</li>
            <li>CPA Magazine</li>
            <li>KMOB</li>
            <li>National Alliance for Public Charter Schools</li>
            <li>National Marrow Donor Program</li>
            <li>National Building Museum</li>
            <li>National Museum for Women in the Arts</li>
            <li>Moss Group</li>
            <li>Pip Gilmour Productions</li>
            <li>Tom Snyder Productions</li>
          </ul>")
    Service.create(:position => 2,
                   :photography_type => 'Portraiture',
                   :content => "<h3>Portraiture</h3>
          <p class='top'>I specialize in fine art black and white and color lifestyle portrait photography. My subjects can be any age but pre dominantly maternity, newborns, infants, babies, children. Maternity and newborn portraiture was a natural extension of my work and grew from a demand from many brides and their friends to create artistic images that would become a loved and cherished heirloom instead of the mall or school pictures, which are often a display of torture rather than the essence of a small Childs spirit. When I visit client&rsquo;s homes I love to see family history and stories displayed on their walls. Why not fill your walls with the Art of Childhood? These fleeting moments will NEVER come again.</p>

          <h4>Maternity Portraits</h4>
          <p class='top'>Also known as Pregnancy Portraits or Mother-to-Be Portraits, the maternity portrait session is designed to capture the wonder and beauty of the female form during the last months of pregnancy. I recommend that we schedule the Maternity portraits for some time after the 33rd week. Depending on how you feel while pregnant, you may want to wait until you are 35 or 36 weeks along to really show off those curves!</p>

          <h4>Newborn Portraits</h4>
          <p class='top'>The perfect time for a newborn session is during the first two weeks of life. It is important to capture all the newness of your infant. They have tiny, clenched hands and newborn curl. During your newborn portrait session, time is allotted for breaks, keeping a relaxed mood for everyone concerned. These sessions can be located either at my studio or at your home.</p>

          <h4>Infant Portrait</h4>
          <p class='top'>Once your child reaches three months old, it is time to schedule an infant portrait session. No longer a sleepy newborn, your baby is now alert and participating in his world. Documenting your child&#x27;s first year of life with several portrait sessions will ensure that you don&#x27;t miss any of the amazing changes they will go through. I also recommend a portrait session at the time when baby is able to sit up. I find they are very engaged with their world at this stage.</p>

          <h4>Children&#x27;s Portrait</h4>
          <p class='top'>These portrait sessions capture the splendor and magic of childhood. Allowing your child to play and explore their surroundings, these sessions are designed for your child to have a great time, which in turn, results in great portraits.</p>
        ")
    Service.create(:position => 3,
                   :photography_type => 'Wedding Photography',
                   :content => "<h3>Wedding Photography</h3>
          <p class='top'>I creatively document weddings and capture life through modern portraiture. My style is documentary photojournalistic, is unobtrusive and non-invasive. It&#x27;s &lsquo;non-posed&rsquo;, unexpected, and with an original twist. I have a relaxed working style that captures both formal and candid moments This is documentary wedding photography as it happens which means capturing the funny, the artistic, the glamorous, the family memories, the details, and indeed any group and family pictures that you want. As a wedding is a one-time event, the photographer must be able to anticipate the action yet be prepared for the unexpected. Shooting a wedding is both exhausting and invigorating as I am always in search of original angles while still maintaining a &lsquo;fly on the wall&rsquo; approach. An ability to tactfully take charge also helps - particularly when photographing large groups or families. I&#x27;ve photographed clients of every religion, nationality, and sexual orientation and open-minded approach to wedding photojournalism makes me approachable and honest.</p>

          <h4>Weddings and cost.</h4>
          <p class='top'>First and foremost, I understand the value of the investment you&#x27;ll make in your wedding photography. It&rsquo;s a financial investment, but just as importantly it&#x27;s an investment of your trust in my expertise and 18 years of professional experience. Memories, decisive moments - photographs I create that transcend the event, become images of great sentimental and artistic value. My goal is to bring you these qualities within a pricing structure that is simple and flexible and a working relationship with my clients that is fun and relaxed. My pricing structure allows you to create an individual collection of services based on the number of hours of coverage that suit your event. You can select the services that work for you. A cornerstone of my pricing is the inclusion of the high resolution files burned to DVD. I can&#x27;t overstate what a HUGE value this represents financially and more importantly in terms of having those images for future generations. Each image is edited, color corrected and complete with a black and white version (as well as the color version). I give you reproduction rights, which means that you can print whatever you want for your personal use. It&#x27;s all entirely up to you! This flexibility means that you can create your own albums, or I can provide you with expertly designed albums from some of the top album manufacturers. I am available for engagements, rehearsals and gown fittings, but as before - it&#x27;s your call, your wedding and your budget. Other things you may want to know. I use an in house gallery system for on line viewing and have a team of assistants who work with me. Discounts are available for winter weddings and Friday and Sunday weddings.</p>

          <h4>What sites have you photographed in?</h4>
          <p class='top'>If it&rsquo;s within a 100 miles of Washington DC, I&rsquo;ve probably photographed an event there.</p>
          <ul>
            <li>NMWA (National Museum for Women in the Arts)</li>
            <li>Willard Hotel</li>
            <li>Ronald Reagan Building</li>
            <li>Sofitel</li>
            <li>National Building Museum</li>
            <li>University Club of Washington DC</li>
            <li>Kennedy Center for he Performing Arts</li>
            <li>The Hay Adams</li>
            <li>Ritz Carlton Georgetown</li>
            <li>The Watergate Hotel</li>
          </ul>
          <ul>
            <li>Algonkian Regional Park, Sterling</li>
            <li>Alwyngton Manor, Warrenton  </li>
            <li>Antrim 1844, Taneytown</li>
            <li>Belmont Country Club, Ashburn  </li>
            <li>Bethesda Marriott, Bethesda  </li>
            <li>Bethesda Marriott Suites, Bethesda </li>
            <li>Bethesda North Marriott Conference Center, Bethesda  </li>
            <li>Bluemont Vineyard, Bluemont</li>
            <li>Boar&#x27;s Head Inn, Charlottesville  </li>
            <li>Bolger Center Hotel, Potomac</li>
            <li>Bowling Green Country Club, Front Royal </li>
            <li>Briar Patch Bed &amp; Breakfast Inn, Middleburg  </li>
            <li>Bristow Manor Golf Club, Bristow  </li>
            <li>Brookside Gardens, Wheaton  </li>
            <li>Carlyle House Historic Park, Alexandria</li>
            <li>Catoctin Hall at Musket Ridge, Myersville  </li>
            <li>Cedar Knoll Inn Restaurant, Alexandria</li>
            <li>Celebrations at The Bay, Pasadena</li>
            <li>Celebrations at the Villa, Serving Washington Metro</li>
            <li>Ceresville Mansion, Frederick </li>
            <li>Chantilly National Golf &amp; Country Club, Centreville  </li>
            <li>Chesapeake Bay Beach Club, Stevensville  </li>
            <li>Chesapeake Beach Resort &amp; Spa, Chesapeake Beach  </li>
            <li>Circle D Farm, Woodbine  </li>
            <li>Clarendon Ballroom, Arlington  </li>
            <li>Clyde&#x27;s of Gallery Place, Washington</li>
            <li>Clyde&#x27;s of Tysons Corner, Vienna</li>
            <li>Colony South Hotel &amp; Conference Center, Clinton </li>
            <li>Compass &amp; Anchor Club</li>
            <li>Knights of Columbus, Sterling</li>
            <li>Crowne Plaza Tysons Corner, McLean</li>
            <li>Crowne Plaza Washington DC Silver Spring, Silver Spring</li>
            <li>Crowne Plaza Washington National Airport Hotel, Arlington</li>
            <li>Crystal City Marriott at Reagan National Airport, Arlington  </li>
            <li>Crystal Gateway Marriott, Arlington  </li>
            <li>Dante Ristorante, Great Falls</li>
            <li>Dominion Valley Country Club, Haymarket  </li>
            <li>Doubletree Hotel Bethesda, Bethesda  </li>
            <li>Duffy&#x27;s On Potomac - The Ballroom, Hagerstown  </li>
            <li>Dumbarton House, Washington</li>
            <li>Embassy Suites Hotel Alexandria  </li>
            <li>Evergreen Country Club, Haymarket  </li>
            <li>Fairview Park Marriott, Falls Church  </li>
            <li>Four Points By Sheraton, Manassas</li>
            <li>Foxchase Manor, Manassas  </li>
            <li>Fredericksburg Square, Fredericksburg  </li>
            <li>Gadsby&#x27;s Tavern, Alexandria</li>
            <li>Gaithersburg Marriott Washingtonian Center, Gaithersburg  </li>
            <li>Glenview Mansion, Rockville  </li>
            <li>Golden Bull Grand Cafe, Gaithersburg </li>
            <li>Grand Atrium at Tysons Corner, Vienna</li>
            <li>Greenbelt Marriott, Greenbelt  </li>
            <li>Heritage Hunt Golf &amp; Country Club, Gainesville  </li>
            <li>Hidden Creek Country Club, Reston  </li>
            <li>Hillsborough Vineyards, Purcellville</li>
            <li>Hilton Alexandria Mark Center, Alexandria  </li>
            <li>Hilton Alexandria Old Town, Alexandria  </li>
            <li>Hilton Arlington, Arlington  </li>
            <li>Hilton Crystal City At National Airport, Arlington</li>
            <li>Hilton Garden Inn Dulles North, Ashburn</li>
            <li>Hilton Garden Inn Fairfax, Fairfax </li>
            <li>Hilton Silver Spring, Silver Spring</li>
            <li>Hilton Washington DC/Rockville, Rockville  </li>
            <li>Hilton Washington Embassy Row, Washington  </li>
            <li>Holiday Inn National Airport, Arlington</li>
            <li>Hollow Creek Golf Club, Middletown  </li>
            <li>Hotel Monaco Alexandria, Alexandria</li>
            <li>Hyatt Fair Lakes, Fairfax  </li>
            <li>Hyatt Regency Crystal City, Arlington</li>
            <li>Hyatt Regency Reston, Reston  </li>
            <li>Hyatt Regency Washington On Capitol Hill, Washington</li>
            <li>Intercontinental Harbor Court Baltimore, Baltimore</li>
            <li>Kentlands Mansion, Gaithersburg</li>
            <li>Key Bridge Marriott Hotel, Arlington </li>
            <li>L&#x27;Enfant Plaza Hotel, Washington  </li>
            <li>Lake Presidential Golf Course, Upper Marlboro  </li>
            <li>Lansdowne Resort, Lansdowne  </li>
            <li>Lorien Hotel and Spa, Alexandria</li>
            <li>Madigan&#x27;s Waterfront, Occoquan  </li>
            <li>Merriweather Manor, Leesburg</li>
            <li>Milton Ridge Chapel and Reception Hall, Clarksburg</li>
            <li>MNCPPC/The Department of Parks &amp; Recreation, Riverdale</li>
            <li>Montclair Country Club, Montclair</li>
            <li>Mount Vernon Inn, Mount Vernon  </li>
            <li>Museum of the Shenandoah Valley, Winchester  </li>
            <li>National Press Club, Washington</li>
            <li>Normandie Farm, Potomac  </li>
            <li>Oatlands, Leesburg</li>
            <li>Old Ebbitt Grill, Washington</li>
            <li>Old Hickory Golf Club, Woodbridge</li>
            <li>Omni Bedford Springs Resort and Spa, Bedford</li>
            <li>Omni Shoreham Hotel, Washington</li>
            <li>Oya &ndash; Washington DC</li>
            <li>Phoenix Park Hotel, Washington</li>
            <li>Piccadilly&#x27;s Brew Pub and Restaurant, Winchester  </li>
            <li>Piedmont Club, Haymarket </li>
            <li>Potomac Point Winery, Stafford</li>
            <li>Potomac Riverboat Company, Alexandria  </li>
            <li>Raspberry Falls Golf &amp; Hunt Club, Leesburg</li>
            <li>Raspberry Plain, Leesburg</li>
            <li>Regency At Dominion Valley, Haymarket  </li>
            <li>Renaissance Washington, DC Hotel, Washington </li>
            <li>Ritz-Carlton Pentagon City, Arlington </li>
            <li>River Creek Country Club, Leesburg</li>
            <li>Rock Hill Plantation House, Stafford</li>
            <li>Rockledge Mansion, Occoquan</li>
            <li>Rockville Rooftop, Rockville  </li>
            <li>Rockwood Manor, Potomac   </li>
            <li>Ronald Reagan Building and International Trade Center, Washington</li>
            <li>Rose Hill Manor, Leesburg  </li>
            <li>Samuel Riggs IV Alumni Center, College Park </li>
            <li>Sheraton National Hotel, Arlington  </li>
            <li>Sofitel Washington DC Lafayette Square, Washington </li>
            <li>Spirit of Washington, Washington  </li>
            <li>St Francis Hall, Washington  </li>
            <li>St. Joseph&#x27;s Parish Hall, Herndon</li>
            <li>Stone Manor Country Club, Middletown  </li>
            <li>Stonehenge Golf &amp; Country Club, Richmond</li>
            <li>Strathmore, North Bethesda  </li>
            <li>The Atrium at Meadowlark Botanical Gardens, Vienna</li>
            <li>The Atrium at Treetops, Landover</li>
            <li>The Black Horse Inn, Warrenton</li>
            <li>The Blackthorne Inn And Restaurant, </li>
            <li>The Capitol Hill Club, Washington  </li>
            <li>The Carlyle Club, Alexandria </li>
            <li>The City Clubs of Washington, Washington</li>
            <li>The Comus Inn at Sugarloaf Mountain, </li>
            <li>The Crowne Plaza Dulles Airport, Herndon  </li>
            <li>The Crowne Plaza Of Old Town Alexandria, Alexandria </li>
            <li>The Fairfax Hunt Club, Reston </li>
            <li>The Founders Inn and Spa, Virginia Beach </li>
            <li>The Gathering Place, Clarksville </li>
            <li>The George Washington Hotel-A Wyndham Historic Hotel, Winchester</li>
            <li>The Greenbrier, White Sulphur Springs  </li>
            <li>The Hampton Conference Center, Capitol Heights</li>
            <li>The Hendry House, Arlington</li>
            <li>The Homestead, Hot Springs</li>
            <li>The Inn &amp; Conference Center, UMUC, Adelphi  </li>
            <li>The Inn at Vint Hill, Vint Hill Farm  </li>
            <li>The Inn at Little Washington</li>
            <li>The Liaison Capitol Hill, An Affinia Hotel, Washington </li>
            <li>The Links At Gettysburg, Gettysburg</li>
            <li>The Madison, A Loews Hotel, Washington  </li>
            <li>The Mayflower, A Renaissance Hotel, Washington </li>
            <li>The Monaco Hotel Washington DC</li>
            <li>The Monaco Hotel, Alexandria VA </li>
            <li>The Morningside Inn, Frederick</li>
            <li>The National Conference Center, Lansdowne  </li>
            <li>The Oaks A Country Inn, Royal Oak  </li>
            <li>The Osprey&#x27;s Golf Club, Woodbridge</li>
            <li>The Red Fox Inn, Middleburg</li>
            <li>The Renaissance M Street Hotel, Washington </li>
            <li>The Sewall-Belmont House &amp; Museum, Washington</li>
            <li>The Tower Club, Vienna</li>
            <li>The Washington Plaza Hotel, Washington</li>
            <li>The Westin Alexandria, Alexandria </li>
            <li>The Westin National Harbor, National Harbor  </li>
            <li>The Willow Tree Inn, Gaithersburg  </li>
            <li>Thomas Birkby House, Leesburg</li>
            <li>Top of the Town, Arlington</li>
            <li>Torpedo Factory Art Center, Alexandria</li>
            <li>Town Point Club, Norfolk</li>
            <li>Tysons Corner Marriott, Vienna  </li>
            <li>Vandiver Inn, Havre de Grace</li>
            <li>Veramar Vineyard, Berryville</li>
            <li>Vintage 50, Leesburg</li>
            <li>Washington Dulles Airport Marriott, Dulles  </li>
            <li>Washington Dulles Marriott Suites, Herndon  </li>
            <li>Washington Marriott, Washington  </li>
            <li>Washington Marriott at Metro Center, Washington  </li>
            <li>Washington Odyssey, Washington  </li>
            <li>Waterford at Fair Oaks, Fairfax  </li>
            <li>Waterford at Springfield, Springfield</li>
            <li>Westfields Marriott, Chantilly  </li>
            <li>Westfields Marriott Washington Dulles, Chantilly </li>
            <li>Westin Grand, Washington D.C., Washington</li>
            <li>Whitehall Manor, Virginia  </li>
            <li>Whitehouse Caterers at Overhills Mansion, circa 1897, Catonsville</li>
            <li>Woodend Sanctuary, Chevy Chase</li>
          </ul>

          <h4>Where am I and where do I go to?</h4>
          <p>My studio is located in Washington DC on Capitol Hill. The studio is just a few steps from Eastern Market Metro or Potomac or Stadium Armory and convenient to 395 and 295. I photograph events in Maryland and Virginia as well as Pennsylvania, New York, and far beyond. I also travel world wide for destination events particularly in the Caribbean as well as Europe, especially Italy and England. Other destinations include Mexico and Hawaii.</p>
          <p>Here are some of the more local areas that I have photographed events.</p>

          <p>DC Metro Area, District of Columbia, VA, MD, Virginia, Maryland, Bethesda, Chevy Chase, Potomac, Rockville, Gaithersburg, Frederick, Germantown, Alexandria, Arlington, Washington dc, Old town Alexandria, Manassas, Chantilly, Rockville, Gaithersburg, Baltimore, Annapolis, Germantown, Silver Spring, Fairfax, Potomac, Georgetown, Pentagon City, Fredrick, Fairfax county, Montgomery County, Herndon, Burke, Springfield, McLean, Oakton, Annandale, Chantilly, Lorton, Falls Church, Great Falls, Manassas, Sterling, Foxchase, Leesburg, Ashburn, Fairfax, Mclean, Tyson&rsquo;s Corner, Manassas, Warrenton, Arlington, Clifton, Great Falls, Sterling, Middleburg, Winchester</p>")
    Service.create(:position => 4,
                   :photography_type => 'Boudoir Photography',
                   :content => "<h3>Boudoir Photography</h3>
          <p class='top'>This is a wonderful playful, gift to yourself as well as to your partner. The session itself can take place at your choice of location and can also include a hair and makeup consultant.</p>

          <h4>Your privacy</h4>
          <p class='top'>I understand the importance of personal privacy. Images will be placed on a professional password protected website for you to view. If you decide to decline to share your images on my website or other marketing, please be assured your images will be kept private.</p>
          <p>I use the up most industry measures to protect the confidentiality of your personal images, including the use of professional online viewing, professional labs and album binding to protect against unauthorized reproductions.</p>")

  end

  def self.down
    drop_table :services
  end
end
