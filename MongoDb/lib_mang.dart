Atlas atlas-41g84j-shard-0 [primary] library_management> db.library_management.find()
[
  {
    _id: ObjectId('69787ab31bf002141d1e2621'),
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    year: 1960,
    genres: [ 'Fiction', 'Southern Gothic', 'Bildungsroman' ],
    rating: 4.8
  },
  {
    _id: ObjectId('69787ba81bf002141d1e2622'),
    title: '1984',
    author: 'George Orwell',
    year: 1949,
    genres: [ 'Dystopian', 'Political Fiction', 'Science Fiction' ],
    rating: 4.7
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.library_management.find().pretty()
[
  {
    _id: ObjectId('69787ab31bf002141d1e2621'),
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    year: 1960,
    genres: [ 'Fiction', 'Southern Gothic', 'Bildungsroman' ],
    rating: 4.8
  },
  {
    _id: ObjectId('69787ba81bf002141d1e2622'),
    title: '1984',
    author: 'George Orwell',
    year: 1949,
    genres: [ 'Dystopian', 'Political Fiction', 'Science Fiction' ],
    rating: 4.7
  }
]