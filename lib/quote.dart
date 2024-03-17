// class Quote {
//   String text;
//   String author;

//   // Quote({ this.text,  this.author }) {
//   Quote(String this.text, String this.author ) {
//     // this.text = text;
//     // this.author = author; 
//   }
// }

// Quote myQuote = Quote("This is the quote text", "oscar wilder")
// // Quote myQuote = Quote(text: "This is the quote text", author: "oscar wilder")

class Quote {
  String text;
  String author;

  Quote({ required String  this.text, required String this.author });
}

// Quote myQuote = Quote("This is the quote text", "oscar wilder");
Quote myQuote = Quote(text: "This is the quote text", author: "oscar wilder");