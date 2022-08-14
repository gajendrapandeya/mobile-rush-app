class Project {
  final int id;
  final String imageUrl;
  final String projectName;
  final String projectType;
  final String projectDescription;

  Project({
    required this.id,
    required this.imageUrl,
    required this.projectName,
    required this.projectType,
    required this.projectDescription,
  });
}

// gobal variable
final projectList = <Project>[
  Project(
    id: 0,
    imageUrl: 'assets/baxta.png',
    projectName: 'Baxata Pets',
    projectType: 'Mobile App',
    projectDescription:
        '''Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
''',
  ),
  Project(
    id: 1,
    imageUrl: 'assets/coposit.png',
    projectName: 'Coposit',
    projectType: 'Mobile App',
    projectDescription:
        '''Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
''',
  ),
  Project(
    id: 2,
    imageUrl: 'assets/watsons_bay.png',
    projectName: 'Watson Bay',
    projectType: 'Web Design',
    projectDescription:
        '''Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
''',
  ),
  Project(
    id: 3,
    imageUrl: 'assets/wild_by_instinct.png',
    projectName: 'Wild By Instinct',
    projectType: 'E-Commerce',
    projectDescription:
        '''Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
''',
  ),
  Project(
    id: 4,
    imageUrl: 'assets/nsw.png',
    projectName: 'NSW Education',
    projectType: 'Mobile App',
    projectDescription:
        '''Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
''',
  ),
  Project(
    id: 5,
    imageUrl: 'assets/quote_up.png',
    projectName: 'Quote Up',
    projectType: 'Mobile App',
    projectDescription:
        '''Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
''',
  ),
];
