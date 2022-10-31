
class PokemonOwner{
  final String ownerName;
  final String pokemonName;
  final String ownerImage;
  final String pokemonImage;
  final String description;

  PokemonOwner({
    required this.ownerName,
    required this.pokemonName,
    required this.ownerImage,
    required this.pokemonImage,
    required this.description
  });
}
final aDataItem = PokemonOwner(
  ownerName: 'Ash Ketchum',
  pokemonName: 'Pikachu',
  ownerImage: 'assets/images/ash.png',
  pokemonImage: 'assets/images/pikachu.png',
  description: """
  Pikachu is a fictional species in the Pokémon media franchise. Designed by Atsuko Nishida and Ken Sugimori, Pikachu first appeared in the 1996 Japanese video games Pokémon Red and Green created by Game Freak and Nintendo, which were released outside of Japan in 1998 as Pokémon Red and Blue. Pikachu is a yellow, mouse-like creature with electrical abilities. It is a major character in the Pokémon franchise, serving as its mascot and as a major mascot for Nintendo.
  Pikachu is widely considered to be the most popular and well-known Pokémon species, largely due to its appearance in the Pokémon anime television series as the companion of protagonist Ash Ketchum. In most vocalized appearances Pikachu is voiced by Ikue Ōtani, though it has been portrayed by other actors, notably Ryan Reynolds in the live-action animated film Pokémon Detective Pikachu. Pikachu has been well received by critics, with particular praise given for its cuteness, and has come to be regarded as an icon of Japanese pop culture.
  Ash Ketchum, known as Satoshi (サトシ) in Japan, is a fictional character in the Pokémon franchise owned by Nintendo. He is the protagonist of the Pokémon anime and certain manga series as well as on various merchandise related to the franchise. In Japanese, the character is voiced by Rika Matsumoto. Hana Takeda voices 6 year old Ash in episode 1 of Pokémon Journeys: The Series. In the English dub, he was voiced by Veronica Taylor in the first eight seasons and has been voiced by Sarah Natochenny since season 9.
  His English name is derived from the Japanese name (as the letters 'ash' are included in 'Satoshi') and his English motto is derived from the Japanese motto (as the letters 'Gotta catch 'em all!' are included in 'Pokémon getto da ze!'). Ash's dream is to become a Pokémon Master. He is loosely based on Red, the player character from the Generation I games Pokémon Red, Green, Blue and Yellow as well as the Generation III games Pokémon FireRed and LeafGreen versions.
  """,
);