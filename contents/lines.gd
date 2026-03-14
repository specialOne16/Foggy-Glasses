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
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[1]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[2]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[3]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[4]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		}
	},
	persons[1]: { # "Asahi Inoue"
		phases[0]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[1]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[2]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[3]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[4]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		}
	},
	persons[2]: { # "Lien Soo"
		phases[0]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[1]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[2]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[3]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[4]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		}
	},
	persons[3]: { # "Sami Mansur"
		phases[0]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[1]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[2]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[3]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[4]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		}
	},
	persons[4]: { # "Ayu Salman"
		phases[0]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[1]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[2]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[3]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		},
		phases[4]: {
			"correct": [],
			"generic": [],
			"incorrect": []
		}
	},
}
