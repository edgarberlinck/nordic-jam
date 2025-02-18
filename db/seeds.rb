# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

[
  # Singing
  "Vocal", "Vocal (Lead)", "Vocal (Backing)", "Vocal Percussion",
  # String Instruments
  "Violin", "Viola", "Cello", "Double Bass", "Guitar", "Acoustic Guitar", "Electric Guitar",
  "Bass Guitar", "Harp", "Banjo", "Mandolin", "Ukulele", "Sitar", "Bouzouki", "Lute",
  "Balalaika", "Zither", "Lyre", "Charango", "Erhu", "Sarangi", "Veena", "Guzheng", "Koto", "Santoor",

  # Woodwind Instruments
  "Flute", "Piccolo", "Recorder", "Clarinet", "Bass Clarinet", "Oboe", "English Horn", "Bassoon",
  "Contrabassoon", "Saxophone", "Bagpipes", "Duduk", "Pan Flute", "Ocarina", "Shakuhachi",
  "Native American Flute", "Hulusi", "Bansuri",

  # Brass Instruments
  "Trumpet", "Cornet", "Flugelhorn", "French Horn", "Trombone", "Bass Trombone",
  "Euphonium", "Tuba", "Sousaphone", "Bugle",

  # Percussion Instruments (Pitched)
  "Xylophone", "Marimba", "Vibraphone", "Glockenspiel", "Chimes", "Timpani",

  # Percussion Instruments (Unpitched)
  "Snare Drum", "Bass Drum", "Tom-Toms", "Bongo Drums", "Congas", "Djembe", "Cajón", "Tabla",
  "Tambourine", "Castanets", "Triangle", "Cymbals", "Gong", "Wood Block", "Claves", "Cowbell",

  # Keyboard Instruments
  "Piano", "Grand Piano", "Upright Piano", "Electric Piano", "Harpsichord", "Clavichord",
  "Pipe Organ", "Electronic Keyboard", "Synthesizer", "Celesta"
].each do |instrument|
  Instrument.find_or_create_by(name: instrument)
end

[
  "Rock", "Pop", "Hip Hop", "Rap", "R&B", "Soul", "Jazz", "Blues",
  "Country", "Folk", "Bluegrass", "Reggae", "Ska", "Punk", "Metal",
  "Hard Rock", "Alternative Rock", "Indie Rock", "Grunge", "Funk",
  "Disco", "House", "Techno", "Trance", "Dubstep", "Drum and Bass",
  "EDM", "Synthpop", "New Wave", "Industrial", "Gospel", "Christian",
  "Classical", "Opera", "Orchestral", "Choral", "Ambient", "Experimental",
  "Post-Rock", "Shoegaze", "Psychedelic", "Progressive Rock", "Latin",
  "Salsa", "Merengue", "Bachata", "Reggaeton", "Cumbia", "Afrobeat",
  "Highlife", "K-Pop", "J-Pop", "C-Pop", "Visual Kei", "Bollywood",
  "Bossa Nova", "Samba", "Flamenco", "Tango", "Zydeco", "Cajun",
  "Drone", "Trip-Hop", "Lo-Fi", "Chiptune", "Breakbeat", "Hardcore",
  "Grindcore", "Screamo", "Post-Hardcore", "Emo", "Math Rock",
  "Surf Rock", "Doo-Wop", "Swing", "Big Band", "Baroque Pop",
  "Art Rock", "Avant-Garde", "Neoclassical", "Darkwave", "Coldwave",
  "Synthwave", "Vaporwave", "Dungeon Synth", "Sludge Metal", "Black Metal",
  "Death Metal", "Thrash Metal", "Djent", "Nu Metal", "Melodic Hardcore"
].each do |style|
  Style.find_or_create_by(name: style)
end

[
  # Classic Rock
  "The Beatles", "The Rolling Stones", "Led Zeppelin", "Pink Floyd", "Queen",
  "The Doors", "The Who", "Fleetwood Mac", "Jimi Hendrix", "Creedence Clearwater Revival",

  # Metal & Hard Rock
  "Black Sabbath", "Metallica", "Iron Maiden", "Judas Priest", "Slayer",
  "Megadeth", "Pantera", "Deep Purple", "Motörhead", "Tool", "Kiss", "AC/DC",
  "Aerosmith", "The Rolling Stones", "The Who", "Audioslave", "Rage Against the Machine",
  "Supultura",

  # Alternative & Grunge
  "Nirvana", "Pearl Jam", "Soundgarden", "Alice in Chains", "Smashing Pumpkins",
  "Red Hot Chili Peppers", "Foo Fighters", "Radiohead", "Beck", "Nine Inch Nails",

  # Punk & Post-Punk
  "The Ramones", "The Clash", "Sex Pistols", "Dead Kennedys", "Misfits",
  "Joy Division", "The Cure", "Siouxsie and the Banshees", "Talking Heads", "The Smiths",

  # Pop & New Wave
  "David Bowie", "Prince", "Madonna", "Michael Jackson", "Elton John",
  "Depeche Mode", "Tears for Fears", "Duran Duran", "Pet Shop Boys", "Eurythmics",

  # Hip-Hop & Rap
  "Tupac Shakur", "The Notorious B.I.G.", "N.W.A", "Run-D.M.C.", "Public Enemy",
  "Wu-Tang Clan", "OutKast", "Kanye West", "Jay-Z", "Eminem",

  # Electronic & Dance
  "Daft Punk", "Kraftwerk", "The Prodigy", "Aphex Twin", "Moby",
  "Underworld", "Fatboy Slim", "Justice", "Deadmau5", "The Chemical Brothers",

  # Jazz & Blues
  "Miles Davis", "John Coltrane", "Louis Armstrong", "B.B. King", "Muddy Waters",
  "Charlie Parker", "Duke Ellington", "Thelonious Monk", "Ella Fitzgerald", "Ray Charles",

  # Folk & Country
  "Bob Dylan", "Johnny Cash", "Willie Nelson", "Neil Young", "Joan Baez",
  "Joni Mitchell", "Patsy Cline", "Dolly Parton", "Hank Williams", "Simon & Garfunkel"
].each do |influence|
  Influence.find_or_create_by(name: influence)
end
