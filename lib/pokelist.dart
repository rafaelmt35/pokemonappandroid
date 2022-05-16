class PokeList {
  String imagename;
  String pokemonname;
  String num;

  PokeList({
    this.imagename = '',
    this.pokemonname = '',
    this.num = '',
  });
}

var newPokemon = [
  PokeList(
      imagename: 'images/bulbasaur.png', pokemonname: 'Bulbasaur', num: '#001'),
  PokeList(
      imagename: 'images/ivysaur.png', pokemonname: 'IvySaur', num: '#002'),
  PokeList(
      imagename: 'images/venusaur.png', pokemonname: 'Venusaur', num: '#003'),
  PokeList(
      imagename: 'images/charmander.png',
      pokemonname: 'Charmander',
      num: '#004'),
  PokeList(
      imagename: 'images/charmeleon.png',
      pokemonname: 'Charmeleon',
      num: '#005'),
  PokeList(
      imagename: 'images/charizard.png', pokemonname: 'Charizard', num: '#006'),
  PokeList(
      imagename: 'images/squirtle.png', pokemonname: 'Squirtle', num: '#007'),
  PokeList(
      imagename: 'images/wartortle.png', pokemonname: 'Wartortle', num: '#008'),
];
