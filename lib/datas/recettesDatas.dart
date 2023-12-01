class RecettesDatas {
  static final List<Map<String, dynamic>> items = [
    {
      'name': 'Hache',
      'costs': [
        {
          'name': 'Bois',
          'value': 2,
        },
        {
          'name': 'Fer',
          'value': 2,
        },
      ],
      'gameplay': 'Récolter le bois 3 par 3',
      'type': 'Outils',
      'description': 'Un outil utile',
    },
    {
      'name': 'Pioche',
      'costs': [
        {
          'name': 'Bois',
          'value': 2,
        },
        {
          'name': 'Fer',
          'value': 3,
        },
      ],
      'gameplay': 'Récolter les minerais 5 par 5',
      'type': 'Outils',
      'description': 'Un outil utile',
    },
    {
      'name': 'Lingot de fer',
      'costs': [
        {
          'name': 'Minerai de fer',
          'value': 1,
        },
      ],
      'gameplay': 'Débloque d’autres recettes',
      'type': 'Matériau',
      'description': 'Un lingot de fer pur',
    },
    {
      'name': 'Plaque de fer',
      'costs': [
        {
          'name': 'Minerai de fer',
          'value': 3,
        },
      ],
      'gameplay': 'Débloque d’autres recettes',
      'type': 'Matériau',
      'description': 'Une plaque de fer pour la construction',
    },
    {
      'name': 'Lingot de cuivre',
      'costs': [
        {
          'name': 'Minerai de cuivre',
          'value': 1,
        },
      ],
      'gameplay': 'Débloque d’autres recettes',
      'type': 'Matériau',
      'description': 'Un lingot de cuivre pur',
    },
    {
      'name': 'Tige en métal',
      'costs': [
        {
          'name': 'Lingot de fer',
          'value': 1,
        },
      ],
      'gameplay': 'Débloque d’autres recettes',
      'type': 'Matériau',
      'description': 'Une tige de métal',
    },
    {
      'name': 'Fil électrique',
      'costs': [
        {
          'name': 'Lingot de cuivre',
          'value': 1,
        },
      ],
      'gameplay': 'Débloque d’autres recettes',
      'type': 'Composant',
      'description':
          'Un fil électrique pour fabriquer des composants électroniques',
    },
    {
      'name': 'Mineur',
      'costs': [
        {
          'name': 'Plaque de fer',
          'value': 10,
        },
        {
          'name': 'Fil électrique',
          'value': 5,
        },
      ],
      'gameplay':
          'Permet de transformer automatiquement d’extraire du minerai de fer ou cuivre',
      'type': 'Bâtiment',
      'description': 'Un bâtiment qui permet d’automatiser le minage',
    },
    {
      'name': 'Fonderie',
      'costs': [
        {
          'name': 'Tige en métal',
          'value': 8,
        },
        {
          'name': 'Fil électrique',
          'value': 5,
        },
      ],
      'gameplay':
          'Permet de transformer automatiquement du minerai de fer ou cuivre en lingot de fer ou cuivre',
      'type': 'Bâtiment',
      'description': 'Un bâtiment qui permet d’automatiser la production.',
    },
  ];
}
