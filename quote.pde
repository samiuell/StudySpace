//quotes
String[] quotes;

//Getting random quote from txt file and displaying
void displayQuote() {
  fill(117, 217, 152); 
  noStroke(); 
  rect(0, 300, width, 250); 
  quotes = loadStrings("quotes.txt");
  int quoteIndex = int(random(0, quotes.length));

    //Break quote into parts and add line breaks
  String[] quoteParts = splitTokens(quotes[quoteIndex], "-"); 
  String quote = ""; 
  for(int i = 0; i < quoteParts.length; i++) 
      quote += quoteParts[i] + "\n"; 

    //Display quote
  fill(0); 
  textAlign(CENTER);
  textSize(24); 
  text(quote, width/2, height/2);   
}
