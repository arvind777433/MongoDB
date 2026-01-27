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

   db.books.find()
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
  },
  {
    _id: ObjectId('697880bc1bf002141d1e2623'),
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    year: 1813,
    genres: [ 'Romance', 'Fiction' ],
    ratings: 4.5
  },
  {
    _id: ObjectId('697881291bf002141d1e2624'),
    title: 'The Hobbit',
    author: 'J.R.R Tolkien',
    year: '1937',
    genres: [ 'Fantasy', 'Adventure' ],
    rating: 4.8
  },
  {
    _id: ObjectId('697881691bf002141d1e2625'),
    title: 'The Catcher in the Rye',
    author: 'J.D salinger',
    year: '1951',
    genres: [ 'Fiction', 'Realism' ],
    rating: 4.4
  },
  {
    _id: ObjectId('6978819f1bf002141d1e2626'),
    title: 'The Great Gatsby',
    author: 'F.Scott Fitzgerald',
    year: '1925',
    genres: [ 'Fiction', 'Tragedy' ],
    rating: 4.4
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({author: "J.R.R Tolkien"}).pretty()
[
  {
    _id: ObjectId('697881291bf002141d1e2624'),
    title: 'The Hobbit',
    author: 'J.R.R Tolkien',
    year: '1937',
    genres: [ 'Fantasy', 'Adventure' ],
    rating: 4.8
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({genres: "Fiction"}).pretty()
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
    _id: ObjectId('697880bc1bf002141d1e2623'),
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    year: 1813,
    genres: [ 'Romance', 'Fiction' ],
    ratings: 4.5
  },
  {
    _id: ObjectId('697881691bf002141d1e2625'),
    title: 'The Catcher in the Rye',
    author: 'J.D salinger',
    year: '1951',
    genres: [ 'Fiction', 'Realism' ],
    rating: 4.4
  },
  {
    _id: ObjectId('6978819f1bf002141d1e2626'),
    title: 'The Great Gatsby',
    author: 'F.Scott Fitzgerald',
    year: '1925',
    genres: [ 'Fiction', 'Tragedy' ],
    rating: 4.4
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({year: {$lt:1950}}).pretty()
[
  {
    _id: ObjectId('69787ba81bf002141d1e2622'),
    title: '1984',
    author: 'George Orwell',
    year: 1949,
    genres: [ 'Dystopian', 'Political Fiction', 'Science Fiction' ],
    rating: 4.7
  },
  {
    _id: ObjectId('697880bc1bf002141d1e2623'),
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    year: 1813,
    genres: [ 'Romance', 'Fiction' ],
    ratings: 4.5
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({ratings:{$gte:4.5} })
[
  {
    _id: ObjectId('697880bc1bf002141d1e2623'),
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    year: 1813,
    genres: [ 'Romance', 'Fiction' ],
    ratings: 4.5
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.update.One({title:"The Great Gatsby"},{$set:{ratings:4.6}})
TypeError: db.books.update.One is not a function
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.updateOne({title:"The Great Gatsby"},{$set:{ratings:4.6}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.updateOne({title:"To Kill a Mockingbird"},{$push:{genres:"classic"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.updateOne({title:"1984"},{$set:{availableCopies:10}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({genres: "Fantasy"}).pretty()
[
  {
    _id: ObjectId('697881291bf002141d1e2624'),
    title: 'The Hobbit',
    author: 'J.R.R Tolkien',
    year: '1937',
    genres: [ 'Fantasy', 'Adventure' ],
    rating: 4.8
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({ $and : [ {genres: "Fiction"},{genres:{$ne:"Romance"}}]}).pretty()
[
  {
    _id: ObjectId('69787ab31bf002141d1e2621'),
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    year: 1960,
    genres: [ 'Fiction', 'Southern Gothic', 'Bildungsroman', 'classic' ],
    rating: 4.8
  },
  {
    _id: ObjectId('697881691bf002141d1e2625'),
    title: 'The Catcher in the Rye',
    author: 'J.D salinger',
    year: '1951',
    genres: [ 'Fiction', 'Realism' ],
    rating: 4.4
  },
  {
    _id: ObjectId('6978819f1bf002141d1e2626'),
    title: 'The Great Gatsby',
    author: 'F.Scott Fitzgerald',
    year: '1925',
    genres: [ 'Fiction', 'Tragedy' ],
    rating: 4.4,
    ratings: 4.6
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({ $and : [ {year:{$gt:1990} },{$or:[{genres:"Adventure",{genres:"Dystopian"}]}]}).pretty()
Uncaught:
SyntaxError: Unexpected token (1:70)

> 1 | db.books.find({ $and : [ {year:{$gt:1990} },{$or:[{genres:"Adventure",{genres:"Dystopian"}]}]}).pretty()
    |                                                                       ^
  2 |

Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({ $and : [ {year:{$gt:1990} },{$or:[{genres:"Adventure"},{genres:"Dystopian"}]}]}).pretty()

Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find({ ratings:{$gte:4.5,$lte:4.9}}).pretty()
[
  {
    _id: ObjectId('697880bc1bf002141d1e2623'),
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
    year: 1813,
    genres: [ 'Romance', 'Fiction' ],
    ratings: 4.5
  },
  {
    _id: ObjectId('6978819f1bf002141d1e2626'),
    title: 'The Great Gatsby',
    author: 'F.Scott Fitzgerald',
    year: '1925',
    genres: [ 'Fiction', 'Tragedy' ],
    rating: 4.4,
    ratings: 4.6
  }
]
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.deleteOne({title:"The Catcher in the Rye"})
{ acknowledged: true, deletedCount: 1 }
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.deleteMany({year:{$lt:1920}})
{ acknowledged: true, deletedCount: 1 }
Atlas atlas-41g84j-shard-0 [primary] library_management> db.books.find()
[
  {
    _id: ObjectId('69787ab31bf002141d1e2621'),
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
    year: 1960,
    genres: [ 'Fiction', 'Southern Gothic', 'Bildungsroman', 'classic' ],
    rating: 4.8
  },
  {
    _id: ObjectId('69787ba81bf002141d1e2622'),
    title: '1984',
    author: 'George Orwell',
    year: 1949,
    genres: [ 'Dystopian', 'Political Fiction', 'Science Fiction' ],
    rating: 4.7,
    availableCopies: 10
  },
  {
    _id: ObjectId('697881291bf002141d1e2624'),
    title: 'The Hobbit',
    author: 'J.R.R Tolkien',
    year: '1937',
    genres: [ 'Fantasy', 'Adventure' ],
    rating: 4.8
  },
  {
    _id: ObjectId('6978819f1bf002141d1e2626'),
    title: 'The Great Gatsby',
    author: 'F.Scott Fitzgerald',
    year: '1925',
    genres: [ 'Fiction', 'Tragedy' ],
    rating: 4.4,
    ratings: 4.6
  }
]
