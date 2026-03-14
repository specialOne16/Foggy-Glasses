class_name DialogueLines

const persons = [
	"Mellodee Monroe",
	"Asahi Inoue",
	"Lien Soo",
	"Sami Mansur",
	"Ayu Salman"
]

const phases = [
	"Greeting",
	"NameGuess",
	"Compliment",
	"Detail",
	"Benefit"
]

const alternate_phases = [
	"Greeting",
	"NameGuess",
	"Detail",
	"Compliment",
	"Benefit"
]

const options = {
	persons[0]: { # "Mellodee Monroe"
		phases[0]: {
			"correct": [
				"Hello! Is this the tea stall? It smells amazing!",
				"Wow! Everything here is so calming! I can tell you pour your heart into this",
				"I reconginsed sweet fragrances of herbal essence from my stall!"
			],
			"generic": [
				"I’m Ellie Roux, nice to meet you!",
				"Sorry, I'm squinting a bit, forgot my glasses at home",
				"How's your day going so far?"
			]
		},
		phases[1]: {
			"correct": [
				"You must be Mellodee!",
				"Are you Mellodee? Your booth has such a peaceful mood.",
				"I felt warm vibes from my stall! You must be Mellodee"
			],
			"generic": [
				"This booth has such a personality. That must come from its owner!",
				"I've been looking forward to meeting the person behind all this!",
				"You're the one running this lovely space, I presume?"
			]
		},
		phases[2]: {
			"correct": [
				"I love the yellow! Very vibrant, complements the lilies in the jars!",
				"You have a very kind smile! It’s easy to see even without my glasses.",
				"I love the color harmony of the cups, I can feel the care you put into your teas."
			],
			"generic": [
				"I might accidentally compliment the wrong thing. Blame my eyes!",
				"You have a real artist's soul. It comes through in everything! I want in!",
				"So much love into what you do. It shows!"
			]
		},
		phases[3]: {
			"correct": [
				"Is that a new blend? I can smell hints of chamomile and honey.",
				"Your tea set is beautiful! Is it vintage?",
				"The cakes you have chosen really compliment the rich smell of your teas."
			],
			"generic": [
				"I admire how much care you put into everything.",
				"You've built something wonderful",
				"Your work is amazing! You make it all look effortless."
			]
		},
		phases[4]: {
			"correct": [
				"These rich aromas deserve an even bigger spotlight! How about partnering with Nana’s Memory Muffins?",
				"I’d love to spread the word about your teas! Want to collaborate together with Nana’s Memory Muffins?",
				"Your teas, my cakes, we can spread sweet and cozy vibes to more homes. How about it?"
			],
			"generic": [
				"Your talent plus Nana's recipes? That's a winning combination!",
				"Nana's building something special, and you belong in it.",
				"I'm building a little network of lovely people. You're invited!"
			]
		}
	},
	persons[1]: { # "Asahi Inoue"
		phases[0]: {
			"correct": [
				"This setup is incredibly elegant. The flowers and the candles really shine!",
				"I was drawn to the scent of your garden",
				"The greens really caught my eye from afar! Ellie Roux, pleasure to meet you!"
			],
			"generic": [
				"I'm so glad I stopped by your booth!",
				"Your booth caught my attention right away!",
				"Nana speaks so highly of this market. I had to come see!"
			]
		},
		phases[1]: {
			"correct": [
				"You’re Asahi, the artist behind Scented Garden?",
				"Mr. Inoue? Your work is wonderfully balanced.",
				"A man of great achievements, I’ve heard about you, Asahi Inoue, correct?"
			],
			"generic": [
				"I've heard wonderful things about the creator here.",
				"You must be the person behind all of this, I can tell!",
				"You're the one with the magic touch around here, yes?"
			]
		},
		phases[2]: {
			"correct": [
				"The composition of your booth is stunning. It feels like a living painting.",
				"Your arrangements have a quiet strength to them. It’s very moving.",
				"The balance of colored candles and the different shades of green, a master of your craft"
			],
			"generic": [
				"I'm on a quest to meet cool people. You look like a cool person!",
				"You look great today!",
				"I can see why Nana wanted me to meet everyone here. Quality folks like you!"
			]
		},
		phases[3]: {
			"correct": [
				"I smell a woody note, is that a new candle scent?",
				"The way you’ve arranged the dried flowers with the fresh ones is masterful",
				"Blue is said to symbolise wisdom, stability and trust, is that why most of your arrangements are in blue?"
			],
			"generic": [
				"I feel inspired just talking to you.",
				"This feels special!",
				"It's really lovely to be around. Your booth is so authentic!"
			]
		},
		phases[4]: {
			"correct": [
				"I’d love to partner with your  masterful crafts. Your arrangements will be the core showcase in Nana’s shop.",
				"Together, we can showcase how scent and taste can bring a story together. Your flowers will bring this vision to life.",
				"With Nana’s Memory Muffins  and your arrangements, we will bring a unique sensory experience to the market."
			],
			"generic": [
				"I see your passion. I want to help it reach further.",
				"Your work speaks to me. I want to amplify that voice.",
				"Let's build something that honors your creative integrity."
			]
		}
	},
	persons[2]: { # "Lien Soo"
		phases[0]: {
			"correct": [
				"Oh my goodness. All these textures and rich materials! I had to come check it out!",
				"This feels like a very cozy corner.",
				"The patterns looked amazing from my stall! I knew I needed to take a closer look!"
			],
			"generic": [
				"This market is absolutely lovely, isn't it?",
				"Just wanted to introduce myself before I start browsing!",
				"I'm so curious about what everyone here creates!"
			]
		},
		phases[1]: {
			"correct": [
				"You must be Lien Soo! The fabrics you make are a legend in this town!",
				"I can feel the love stitched into everything here. Lien Soo, right?",
				"Are you Mrs. Soo?"
			],
			"generic": [
				"I'm guessing you're the mastermind behind this booth?",
				"This space feels so you.",
				"Everything here has your fingerprint on it.  Very beautiful display"
			]
		},
		phases[2]: {
			"correct": [
				"The fit you’re wearing is gorgeous! Did you knit it yourself",
				"I can see some genius color matching.",
				"I really love your nails, they complement your outfit!"
			],
			"generic": [
				"You look like you're having the best day and I want in!",
				"Love what you've done here!",
				"So fresh and creative!"
			]
		},
		phases[3]: {
			"correct": [
				"Is that a new yarn blend, it looks extremely soft from here.",
				"Coats are a difficult craft to sew! Their shapes look perfect",
				"I see that you love the cozy shades of autumn the most?"
			],
			"generic": [
				"Really nice setup you have!",
				"This booth makes me happy!",
				"I'm really enjoying this vibe!"
			]
		},
		phases[4]: {
			"correct": [
				"The comfort of your knitted crafts and the taste of Nana’s sweet muffins, it’ll be a global sensation!",
				"With your rich fabrics and tourism traffic we receive, we can bring even more sales to you!",
				"80% of our customers are interested in handcrafted clothes, It’ll be a phenomenon."
			],
			"generic": [
				"We could send customers back and forth between our booths!",
				"Nana sent me to find wonderful partners. I think I just found one!",
				"Our audiences overlap perfectly. Let's introduce them!"
			]
		}
	},
	persons[3]: { # "Sami Mansur"
		phases[0]: {
			"correct": [
				"Hi, I’m Ellie! I love all the paper crafts!",
				"Ellie Roux, I’m an avid Card Collector! Your cards piqued my interest from afar.",
				"Cards, Bookmarks and very fancy paper, you put a lot of thought into transforming petals into unique forms!"
			],
			"generic": [
				"It's wonderful to meet you!",
				"I can't see much but I'm pretty sure you're awesome!",
				"Your passion is contagious!"
			]
		},
		phases[1]: {
			"correct": [
				"Sami! I’ve seen your cards before, they’re always filled with joy",
				"Sami Mansur, the designer behind Petals and Press, your work is incredible",
				"You’re Mr. Mansur, yes?"
			],
			"generic": [
				"You're the artist everyone's been talking about, aren't you?",
				"You're definitely the person I should be talking to",
				"You're exactly the kind of person I was hoping to meet today!"
			]
		},
		phases[2]: {
			"correct": [
				"The detail in your origami is incredible! You must have lots of patience",
				"The name Petals and Press is really catchy! A fan of alliteration?",
				"The cards are like little messages of love. Each one has personality."
			],
			"generic": [
				"This might be random, but you look really nice to talk to!",
				"Your confidence is inspiring! You clearly know who you are.",
				"There's something so genuine about you. It's really refreshing!"
			]
		},
		phases[3]: {
			"correct": [
				"Are those bookmarks with real dried flowers inside?",
				"The cards and stickers are beautiful!",
				"I spot roses, lilies and daffodil petals!"
			],
			"generic": [
				"Your imagination clearly has no limits. What a gift!",
				"Your creativity shines through in everything you do!",
				"You're clearly someone who thinks outside the box. I love that!"
			]
		},
		phases[4]: {
			"correct": [
				"I was thinking we could make a special “Memory Muffin” card set. People will love it!!",
				"Your petal-work is incredible, I want to showcase it in front of many more people!",
				"Our target customers are the same. With your cards combined with our desserts, it’ll be a view to remember all year round!"
			],
			"generic": [
				"We're all here to spread joy. Let's spread it as a team!",
				"Imagine all the good we could do side by side!",
				"We could offer special deals for people who visit both of us!"
			]
		}
	},
	persons[4]: { # "Ayu Salman"
		phases[0]: {
			"correct": [
				"Wow this booth is a party!",
				"There's an authenticity here that's rare to find, all of your illustrations really reflect this!.",
				"I’m getting a wave of nostalgia, your stall is beautiful!"
			],
			"generic": [
				"Nana sent me to make friends, so... friend? Please?",
				"I brought my A-game. Unfortunately, I left my A-vision at home",
				"Hey, Hey, Hey! I love the energy here!"
			]
		},
		phases[1]: {
			"correct": [
				"Ayu! My cousins love your books!",
				"Ayu Salman yes? Given the elaborate booth, it’s gotta be you!",
				"The Ayu Salman! The famous children’s books author?!"
			],
			"generic": [
				"You radiate creativity. You must be the artist here!",
				"You're one of the people Nana raves about, aren't you?",
				"Nana would want me to meet the heart of each booth. I think I've found it!"
			]
		},
		phases[2]: {
			"correct": [
				"Murals and books! Your creativity is beyond imagination",
				"The toys look super cute!",
				"Even your outfit’s popping, just like your artworks!"
			],
			"generic": [
				"Your booth has such a welcoming feel to it.",
				"Let's make today awesome together!",
				"So lovely. Lots of smiling faces!"
			]
		},
		phases[3]: {
			"correct": [
				"Is that a new character you’re working on, the white creature?",
				"The colors in your illustrations are vibrant! They pop up even in my blurry eyes",
				"Balloons! Can I grab one?!"
			],
			"generic": [
				"Your booth seemed approachable. So...here I am",
				"I've been to other markets, but this one feels special.",
				"If my blurry vision is any indication, you've got something great going on!"
			]
		},
		phases[4]: {
			"correct": [
				"A Nana’s Muffin Storytime event at your booth would be a huge hit with the kids!",
				"Think of all the laughter, connection and comfort we can create together with your stories and our desserts combined!",
				"Illustrations on every wall, and a book of happiness on every table. Together with Nana’s desserts, it’ll be a unique memory to be remembered"
			],
			"generic": [
				"We both share the same mission, I want to help make more people smile.",
				"Your work moved me. I'd be honored to support it.",
				"I genuinely believe in what you're doing. I don't make offers like this lightly."
			]
		}
	},
}

const reactions = {
	persons[0]: { # "Mellodee Monroe"
		phases[0]: {
			"correct": [
				"Thank you! I was hoping the scents would reach people!",
				"You're being too kind. I just follow my heart. Thank you for noticing!",
				"Thank you! I’ll bring you a sample!",
				"You found me! I was hoping people would be drawn to this little corner.",
				"Hello! Lovely to meet you, What brings you to my tea garden today?"
			],
			"generic": [
				"I’m glad you stopped by! A cup of tea perhaps, you look a little frazzled.",
				"Thank you! That's so encouraging to hear.",
				"That means so much coming from you!"
			],
			"incorrect": [
				"You seem flustered. Want some chamomile?",
				"I...I don't really know what to say to that.",
				"Oh that’s…don't worry. We can start over."
			]
		},
		phases[1]: {
			"correct": [
				"You got it! Mellodee. My mom gave me that name. She said I was always humming.",
				"Mellodee, yes. My mom was a musician. She had a thing for songy names.",
				"That's the sweetest compliment. Yes, I'm Mellodee."
			],
			"generic": [
				"I don't know what to say except thank you!",
				"That's right. Did you need something or...?",
				"That's me. Sorry, I'm a little shy with new people. It takes me a minute to warm up."
			],
			"incorrect": [
				"Oh no, I’m Mellodee. That’s….a common mistake I guess.",
				"Um, no? Did someone send you to the wrong booth?",
				"My mother would be heartbroken."
			]
		},
		phases[2]: {
			"correct": [
				"Thank you, that means a lot coming from sweet people like you!",
				"You’re an angel",
				"Awww, that means a lot"
			],
			"generic": [
				"That’s very nice of you",
				"I try my best! You want to try a tea sample?",
				"Well, aren't you just the nicest person here!"
			],
			"incorrect": [
				"Try again, friend! I love the enthusiasm!",
				"I think you meant to say that to someone else, but I'll accept the energy.",
				"That wasn't quite right, was it?"
			]
		},
		phases[3]: {
			"correct": [
				"That's exactly what I was going for. You have a good eye!",
				"Thank you for taking the time to notice that. Truly touches my heart.",
				"Lovely to meet a fellow connoisseur"
			],
			"generic": [
				"That makes me happy. I appreciate you!",
				"Thank you for your beautiful words.",
				"That means a lot!"
			],
			"incorrect": [
				"I can tell you're nervous. It's okay. I'm nervous too. Let's just breathe for a second.",
				"That's... that's not what I expected. Are you feeling alright, dear?",
				"I think you might have my booth confused with someone more interesting."
			]
		},
		phases[4]: {
			"correct": [
				"I've always dreamed of my teas reaching more people. This feels like the right way.",
				"Oh my! I'm a little emotional. No one's ever offered something like this before.",
				"You really think my teas deserve that? That's... that's so sweet."
			],
			"generic": [
				"Maybe? I'm not sure I'm brave enough yet. But thank you for asking.",
				"That's very kind of you to offer. Can I think about it for a little while?",
				"That's a lovely idea. I just move slowly…Can we take our time?"
			],
			"incorrect": [
				"I'm a little confused. That doesn't sound like it fits with my little tea booth.",
				"I'm not sure I'm following. That sounds very different from what I do.",
				"Oh dear, I'm not sure that would work. Our styles seem very different."
			]
		}
	},
	persons[1]: { # "Asahi Inoue"
		phases[0]: {
			"correct": [
				"May it inspire you as much as it inspires me.",
				"You have the look of an artist yourself. Perhaps that's why you stopped.",
				"A rare gift, appreciate someone who notices the world around them."
			],
			"generic": [
				"I'm glad you found your way here.",
				"Feel free to explore at your own pace.",
				"A visitor with presence. Welcome to my garden."
			],
			"incorrect": [
				"I need a moment to process that line.",
				"I don't think I heard you right.",
				"Apologies, That was unexpected…"
			]
		},
		phases[1]: {
			"correct": [
				"Yes. Asahi Inoue. It's a pleasure.",
				"That's correct. Have we met before?",
				"Yes. Asahi Inoue. You pronounce it well. Many do not."
			],
			"generic": [
				"I'm just the gardener.",
				"Yes, thank you.",
				"I’m honored."
			],
			"incorrect": [
				"No. It's Asahi. Please remember it correctly.",
				"No. That is not my name. Please pay attention.",
				"I have worked hard to build my reputation. The least you can do is learn my name."
			]
		},
		phases[2]: {
			"correct": [
				"You noticed the atmosphere. Most people walk right past. Thank you.",
				"Every arrangement tells a story. I'm glad you're here to read it.",
				"Someone who pauses to take it all in. Refreshing."
			],
			"generic": [
				"I think you wandered into the wrong booth.",
				"Your words carry weight. I receive them with gratitude.",
				"Thank you. You have a way with words."
			],
			"incorrect": [
				"I'm not sure I follow.",
				"Let us try that again. With intention this time.",
				"I'm sorry, what?"
			]
		},
		phases[3]: {
			"correct": [
				"Not everyone understands the balance I'm trying to achieve. I think you might.",
				"I can tell you appreciate the finer details.",
				"Not everyone picks up on that. You have good instincts."
			],
			"generic": [
				"I'm grateful you see it that way. I only follow where inspiration leads.",
				"Thank you. I'm still searching for perfection, but I'm glad you find value now.",
				"You’re generous with your words."
			],
			"incorrect": [
				"...You get points for style…",
				"I need you to point to where you see that, because I'm genuinely lost.",
				"Did you forget your glasses today? Because that would explain a lot about this conversation."
			]
		},
		phases[4]: {
			"correct": [
				"You approached with intention. I respect that.",
				"You've done your research. Admirable.",
				"I'm humbled by your observation.That's a promising start"
			],
			"generic": [
				"Many want to help passion reach further. Few understand it. I'll observe you first.",
				"I'll consider what reaching further might mean. No promises.",
				"I'll keep your offer in mind."
			],
			"incorrect": [
				"I think there's been a misunderstanding.",
				"I don't understand the connection.",
				"What exactly are you proposing?"
			]
		}
	},
	persons[2]: { # "Lien Soo"
		phases[0]: {
			"correct": [
				"You have good eyes! I've been collecting these textures! I'm glad it speaks to you.",
				"Thank you, dear. Each one has a story, but I won't bore you with them all.",
				"I do my best with what I find. They're what drew me to this work."
			],
			"generic": [
				"I’m happy you stopped by",
				"That’s nice.",
				"Curiosity is good. Enjoy exploring."
			],
			"incorrect": [
				"I... I should get back to my knitting.",
				"Let's just start fresh, okay?",
				"Let's pretend that was just a warm-up…"
			]
		},
		phases[1]: {
			"correct": [
				"Yes indeed! I'm Lien.",
				"That's me. And you, my dear, have a good heart. I can tell already.",
				"You said my name like you've known me for years."
			],
			"generic": [
				"Haha, you’re off to a great start!",
				"Aren’t you a diplomat in the making",
				"Why thank you!"
			],
			"incorrect": [
				"I'd be offended, but honestly I'm more impressed by how wrong you are.",
				"No, dear. But I hope that person is doing well.",
				"That’s not my name…"
			]
		},
		phases[2]: {
			"correct": [
				"Oh, you made my day!",
				"Well, aren't you sweet. This is my little life's work.",
				"Anyone who appreciates a good craft is a friend of mine already!"
			],
			"generic": [
				"You have excellent taste!",
				"Was it the colors, the patterns, or just good instincts?",
				"That’s what I hope for when people see my work"
			],
			"incorrect": [
				"I'm sorry... what exactly are you looking at over there?",
				"Did someone tell you that? Because they were messing with you.",
				"I'm really happy you came over to chat…but maybe you need to sit down a bit?"
			]
		},
		phases[3]: {
			"correct": [
				"Not many people are drawn in by this! Do you create things too!",
				"Keep this up and we'll be best friends by the end of this conversation!",
				"You’re officially my favorite visitor today"
			],
			"generic": [
				"My heart on display. Thank you for appreciating it.",
				"You're navigating by vibes alone and you found me? That's impressive!",
				"Anyone who appreciates a good booth is welcome!"
			],
			"incorrect": [
				"Ma’am, this is a fabrics shop…",
				"You're not wrong, you're just... describing a different product entirely…",
				"Honey, I've been alive long enough to know when someone's nervous. Take a deep breath."
			]
		},
		phases[4]: {
			"correct": [
				"I was hoping someone like you would come along. Someone who understands the vision.",
				"I like how you think, dear! A global sensation",
				"You see what I do specifically and you see possibilities. That's a gift not everyone has. Thank you for bringing it to me."
			],
			"generic": [
				"You speak from the heart. I can tell. Give me some time to let me answer back.",
				"You've got me thinking, and that's a good start. I'll consider your words carefully.",
				"I need to feel this idea before I can say yes. Let me sit with it while I work."
			],
			"incorrect": [
				"The yarn doesn't judge. Neither do I.",
				"I don't understand the purpose of that statement. What are you trying to accomplish?",
				"I'm sure that pitch works on other vendors. I am not like other vendors."
			]
		}
	},
	persons[3]: { # "Sami Mansur"
		phases[0]: {
			"correct": [
				"You clearly know how to make an entrance. Making people feel special right from the start.",
				"Flattered to my core! I dry and press them myself. It's like preserving little moments of joy!",
				"That was exactly what I needed to hear today!"
			],
			"generic": [
				"Now I have to live up to this!",
				"Thank you, you’re quiet honest!",
				"Grateful to meet you"
			],
			"incorrect": [
				"Ten points for confidence!",
				"Ooh, bold choice! Not the right one, but bold!",
				"That's not what it is, but now I kind of wish it was! You might be onto something!"
			]
		},
		phases[1]: {
			"correct": [
				"I'm honored you know my name! Most people just call me 'the card guy' or 'hey you'!",
				"Sami, that's right! With an 'i' not a 'y'! You'd be surprised how many people get that wrong. You're awesome!",
				"You know my name! I feel so famous right now!"
			],
			"generic": [
				"I'm genuinely touched that you thought of me.",
				"You’ve done your homework, paper star?",
				"Yes, I’m the right guy!"
			],
			"incorrect": [
				"Wait, who did you think I was? Should I be offended or flattered?",
				"Ha! No!",
				"That's a new one. I've never been called that before in my life."
			]
		},
		phases[2]: {
			"correct": [
				"Are you a professional compliment-giver? Because you're really good at this!",
				"Yes! I write my soul into this work!",
				"Those details took me forever to get right. I'm so glad someone finally saw it!"
			],
			"generic": [
				"You have a way of making people feel valued.",
				"That means so much, Thank you.",
				"Do I really?! Thanks"
			],
			"incorrect": [
				"That's... a creative interpretation. I respect the imagination!",
				"I feel like I need to apologize and I don't even know why.",
				"That's either very profound or very random. I'm going with random. But entertaining!"
			]
		},
		phases[3]: {
			"correct": [
				"The real magic is people like you who actually stop and appreciate. You're the best part!",
				"Oh, you noticed that! You know what that tells me? You have an artist's eye.",
				"I put that there hoping someone would find it. And here you are!"
			],
			"generic": [
				"That’s very generous! I appreciate the approval!",
				"Fancy words there friend!",
				"I’m Honored!"
			],
			"incorrect": [
				"Are you talking to me? Because you seem like you're in a whole different conversation.",
				"I love the confidence, but you're describing my competitor three booths down.",
				"...Are you feeling okay? Do you need to sit down?",
				"Did you just guess? Because it really sounded like you just guessed."
			]
		},
		phases[4]: {
			"correct": [
				"I'm genuinely touched! That’ll be an incredible opportunity!",
				"Are you serious? This is exactly what I've been dreaming about! Let's do it!",
				"I'm so in I'm already planning things in my head!"
			],
			"generic": [
				"100% here for the energy of it. Although it’s quite vague",
				"Delightfully unspecific, we can workshop this later though",
				"Couldn't agree more, but come back when you have the details"
			],
			"incorrect": [
				"Did someone put you up to this? Because if so, tell them they owe you five dollars.",
				"You're making me question my own booth now!",
				"That observation is a mystery I may never solve. But I appreciate you sharing it!"
			]
		}
	},
	persons[4]: { # "Ayu Salman"
		phases[0]: {
			"correct": [
				"Oh, you felt it too? I try to make it feel like a celebration every day!",
				"Yes! That's exactly what I'm going for! A place where people can smile and feel like a kid again.",
				"Oh, you just made my heart so happy! A party needs wonderful guests, and here you are!"
			],
			"generic": [
				"You have no idea how much that touches me.",
				"Awww, yes of course",
				"I see you, authenticity is everything"
			],
			"incorrect": [
				"It's the market chaos, isn't it? So much to take in!",
				"Sorry, come again?",
				"Huh, sorry? I hope you’re not too overwhelmed"
			]
		},
		phases[1]: {
			"correct": [
				"That means so much. I pour my heart into every illustration",
				"I'm actually a little emotional. I'm so grateful for your words!",
				"Oh, I could hug you right now! I’m very honored!"
			],
			"generic": [
				"That's nice of you to say. I believe in bright colors and happy spaces.",
				"Thank you. I put a lot of love into making it feel welcoming.",
				"I appreciate that. Joy is important, and I try to share as much as I can."
			],
			"incorrect": [
				"I’m sorry, were you looking for someone else?",
				"No, but that was a valiant effort.",
				"Close enough for a first meeting! I'm Ayu Salman. Glad to meet you!"
			]
		},
		phases[2]: {
			"correct": [
				"I'm going to frame that compliment in my mind!",
				"That truly touches my heart. Thank you.",
				"I'll carry that kindness with me today. You have a gift for making people feel seen."
			],
			"generic": [
				"Thank you. I always hope my heart shows through.",
				"That's very perceptive of you. You have a gift for seeing deeply.",
				"I'm always learning and growing. I hope I'm on the right path."
			],
			"incorrect": [
				"I... I don't think that's right. It's okay though! Lots of people get confused.",
				"That's not what I was going for at all, but... um... thanks for looking?",
				"What does it remind you of?"
			]
		},
		phases[3]: {
			"correct": [
				"Yes! Feel free to grab one if you’d like!",
				"Here you can definitely have one! For being such an amazing soul!",
				"Yes! You’re incredible!"
			],
			"generic": [
				"I'll carry your words with me on the days I doubt myself. Thank you.",
				"That's very encouraging. I just follow my heart.",
				"I try to capture those warm childhood memories in everything I do."
			],
			"incorrect": [
				"I love the thought behind what you said. But I’m afraid you’ve mixed things up…",
				"Oh…well…sure",
				"I…there's so much going on with what you said just now…I’m not sure I follow"
			]
		},
		phases[4]: {
			"correct": [
				"You just made my heart so full, I could cry happy tears! That's exactly what I hope for!",
				"That's the kind of connection! Safe and true! I’d love to create a  place of childhood wonder.",
				"Yes. I think we could make something really special together."
			],
			"generic": [
				"Knowing we share that purpose gives me such a warm feeling inside, but how will we achieve this together…",
				"I'm honored you thought of me. I just need a little more shape to this idea before I can accept",
				"That’s lovely to hear, but I’ve been hurt by vague promises in the past. I’ll need a  more solid plan to consider this partnership."
			],
			"incorrect": [
				"Oh that doesn't match with me…But your heart is in the right place.",
				"Oh, sweetheart. I don't think that's quite the right fit. But I'm so glad you asked.",
				"That's a lovely thought, but I don't think it matches what I'm trying to do"
			]
		}
	},
}
