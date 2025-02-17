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
