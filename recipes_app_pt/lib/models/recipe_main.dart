import './abstract.dart';


class MainRecipe extends Recipe{


  String quote;
  String imageUrl;
  String name;
  String level;
  List<String> ingredients;
  List<String> description;
  String type;
  List<String> partOfDay;
  int rating;
  int timeMinutes;
  int portions;
  int calories;


  MainRecipe({
    this.quote="Dont's ask me about my proteins \nand i won't ask about your cholesterol...",
    this.imageUrl,
    this.name,
    this.type,
    this.ingredients,
    this.description,
    this.portions,
    this.rating,
    this.level,
    this.partOfDay,
    this.timeMinutes,
    this.calories,
  });

}


List<MainRecipe> listaReceitasMain = [
  MainRecipe(
    imageUrl: 'assets/images/lasagne.jpg',
    name: 'Lasanha de batatas e lentilhas',
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Fácil',
    type: 'Principal',
    partOfDay: ['jantar', 'almoço'],
    rating: 5,
    timeMinutes: 60,
  ),
  MainRecipe(
    imageUrl: 'assets/images/caril.jpg',
    name: 'Caril de legumes',
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    type: 'Principal',
    level: 'Fácil',
    partOfDay: ['almoço', 'jantar'],
    rating: 4,
    timeMinutes: 30,
  ),
  MainRecipe(
    imageUrl: 'assets/images/sopa_alho.jpg',
    name: 'Sopa de alho',
    type:'Principal',
    ingredients: ['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    description:['1 Batata','400 g queijo', ' 300 g lentilhas', ' 2 Cebolas', ' 1 pacote de Molho de Soja', ' Sal ', ' Pimenta'],
    level: 'Médio',
    partOfDay: ['almoço'],
    rating: 4,
    timeMinutes: 60,
  ),
];
