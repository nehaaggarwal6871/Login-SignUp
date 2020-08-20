class Services{
  final int position;
  final String title;
  final String image;
  final String description;
  final List<String> images;

  Services(
      this.position,{this.title,this.image,this.description,this.images}
      );

}

List <Services> services=[
  Services(
    1,
    title: "Digital Marketing",
    image: 'assets/images/digital_marketing.png',
    description: "Digital marketing is everywhere. It’s the boss. You’ve heard of the term, I’m pretty sure. But just in case if you haven’t, don’t worry mate! We got you covered.  ",
    images: [
      'assets/images/digital_marketing2.jpg',
      'assets/images/digital_marketing3.png',
      'assets/images/digital_marketing4.webp'
    ]
  ),
  Services(
      2,
      title: "Artificial Intelligence",
      image: 'assets/images/artificial_intelligence1.png',
      description: "Artificial intelligence is a technology that enables the machines to think and perform as humans do in the real world. It allows transforming the world with its wide variety of tools. ",
      images: [
        'assets/images/artificial_intelligence2.jpeg',
        'assets/images/artificial_intelligence3.jpeg',
        'assets/images/artificial_intelligence4.jpg'
      ]
  ),
  Services(
      3,
      title: "Data Science",
      image: 'assets/images/data_science1.png',
      description: "Data Science, an inter – disciplinary field area which uses scientific methods, processes, algorithms, andsystems to extract knowledge and insights from structural and non – structural data. i.e. the simplest definition for data science, the extraction of actionable insights from the raw data. ",
      images: [
        'assets/images/data_science2.jpg',
        'assets/images/data_science3.png',
        'assets/images/data_science4.jpg'
      ]
  ),
  Services(
      4,
      title: "Mars Rover Mission",
      image: 'assets/images/mars_rover.png',
      description: "Artificial intelligence is a technology that enables the machines to think and perform as humans do in the real world. It allows transforming the world with its wide variety of tools. ",
      images: [
        'assets/images/mars_rover2.jpg',
        'assets/images/mars_rover3.jpg',
        'assets/images/mars_rover4.jpg'
      ]
  ),

];